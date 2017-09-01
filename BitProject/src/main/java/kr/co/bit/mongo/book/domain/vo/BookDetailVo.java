package kr.co.bit.mongo.book.domain.vo;

import java.util.ArrayList;

import org.springframework.data.annotation.Id;

public class BookDetailVo {
	@Id
	String id;
	private String title,  image, dispNo, price;
	private String origin;
	private ArrayList<String>writer_introduce;
	private ArrayList<String>about;
	private ArrayList<String>aboutList;
	public ArrayList<String> getAboutList() {
		return aboutList;
	}
	public void setAboutList(ArrayList<String> aboutList) {
		this.aboutList = aboutList;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDispNo() {
		return dispNo;
	}
	public void setDispNo(String dispNo) {
		this.dispNo = dispNo;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public ArrayList<String> getWriter_introduce() {
		return writer_introduce;
	}
	public void setWriter_introduce(ArrayList<String> writer_introduce) {
		this.writer_introduce = writer_introduce;
	}
	public ArrayList<String> getAbout() {
		return about;
	}
	public void setAbout(ArrayList<String> about) {
		this.about = about;
	}
	@Override
	public String toString() {
		return "BookDetailVo [id=" + id + ", title=" + title + ", image=" + image + ", dispNo=" + dispNo + ", price="
				+ price + ", origin=" + origin + ", writer_introduce=" + writer_introduce + ", about=" + about + "]";
	}

	
	
}	
