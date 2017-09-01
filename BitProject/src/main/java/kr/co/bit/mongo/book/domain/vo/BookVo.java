package kr.co.bit.mongo.book.domain.vo;

import org.springframework.data.annotation.Id;

public class BookVo {
	@Id
	String id;
	String  title ,subtitle,publisher ,price,detailNo ,origin,writer,image ;

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getId() {
		return id;
	}


	@Override
	public String toString() {
		return "BookVo [id=" + id + ", title=" + title + ", subtitle=" + subtitle + ", publisher=" + publisher
				+ ", price=" + price + ", detailNo=" + detailNo + ", origin=" + origin + ", writer=" + writer
				+ ", image=" + image + "]";
	}
	public String getDetailNo() {
		return detailNo;
	}
	public void setDetailNo(String detailNo) {
		this.detailNo = detailNo;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
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
	
	



}
