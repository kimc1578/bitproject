package kr.co.bit.webdocument.vo;

public class NaverWebVo {
		
	private String title,description,link;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLink() {
		return link;
	}

	@Override
	public String toString() {
		return "NaverWebVo [title=" + title + ", description=" + description + ", link=" + link + "]";
	}

	public void setLink(String link) {
		this.link = link;
	}
	
}
