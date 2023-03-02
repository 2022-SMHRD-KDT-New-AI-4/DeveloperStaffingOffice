package DSO.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import DSO.model.ChatClient;




@ServerEndpoint("/webChatServer")
public class WebChatServer extends HttpServlet {
	private static Map<Session,ChatClient> users = Collections.synchronizedMap(new HashMap<Session, ChatClient>());
	
	
	
	@OnMessage
	public void onMsg(String message, Session session) throws IOException{
		String userName = users.get(session).getName();
		System.out.println(userName + " : " + message);
		
		synchronized (users) {
			Iterator<Session> it = users.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				if(!currentSession.equals(session)){
					currentSession.getBasicRemote().sendText(userName + " : " + message);
				}
			}
		}
		
	}
	
	@OnOpen
	public void onOpen(Session session){
		String userName = "익명의 바보 ";
		int rand_num = (int)(Math.random()*1000);
		
		
		ChatClient client = new ChatClient();
		System.out.println(session);
		client.setName(userName+rand_num+"호");
		
		System.out.println(session + " connect");
		
		users.put(session, client);
		sendNotice("- -"+client.getName() + "님이 입장하셨습니다." + "- - 현재 사용자 " + users.size() + "명"	
				);
		
					
				/* sendNotice("현재 사용자 " + users.size() + "명"); */
	}
	
	
	public void sendNotice(String message){
		String userName = "DSO server";
		System.out.println(userName + " : " + message);
		
		synchronized (users) {
			Iterator<Session> it = users.keySet().iterator();
			while(it.hasNext()){
				Session currentSession = it.next();
				try {
					currentSession.getBasicRemote().sendText(userName + " : " + message);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	@OnClose
	public void onClose(Session session) {
		String userName = users.get(session).getName();
		users.remove(session);
		sendNotice("- -"+userName + "님이 퇴장하셨습니다." + "- - 현재 사용자 " + users.size() + "명");
	}

}