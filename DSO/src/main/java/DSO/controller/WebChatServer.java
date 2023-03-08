package DSO.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import DSO.model.ChatClient;




@ServerEndpoint("/webChatServer/{userName}")
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
	public void onOpen(Session session,@PathParam(value = "userName") String userName){	//오픈할 때 Chatting.jsp에서 지정한 userName값 받아와서 닉네임 출력하기	
		//HttpSession sess=request.getSession();
		//String userName=(String) sess.getAttribute("name"); // :

		int cnt = 0;
		//String userName = "전문가";
		//String userName1 = "의뢰인";
//		int rand_num = (int)(Math.random()*1000);
	
		ChatClient client = new ChatClient();
		System.out.println(session);
		client.setName(userName);
//		client.setName(userName+rand_num+"호");
		
		System.out.println(session + " connect");
		
		users.put(session, client);
		sendNotice(client.getName() + "(이)가 입장하셨습니다.");
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
		sendNotice(userName + "님이 퇴장하셨습니다.");
	}
	
	


}
//	public List<String> getChatRoomList() {
//	    try {
//	        Socket socket = new Socket("localhost", 1234);
//	        BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
//	        PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
//
//	        // Send a request for the list of chat rooms
//	        out.println("getChatRoomList");
//
//	        // Read the response from the server
//	        String response = in.readLine();
//
//	        // Parse the response into a list of chat room names
//	        List<String> roomNames = new ArrayList<>();
//	        String[] parts = response.split(",");
//	        for (String part : parts) {
//	            roomNames.add(part);
//	        }
//
//	        // Close the socket and return the list of chat room names
//	        socket.close();
//	        return roomNames;
//	    } catch (IOException e) {
//	        e.printStackTrace();
//	        return null;
//	    }
//	}