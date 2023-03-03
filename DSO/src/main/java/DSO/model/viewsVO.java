package DSO.model;

// 조회수 VO

public class viewsVO {
	
	private int views;

	
	@Override
	public String toString() {
		return "viewsVO [views=" + views + "]";
	}

	public viewsVO(int views) {
		this.views = views;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}
	
	
	
	
}
