package kr.co.bit.mongo.book.domain.vo;

import org.springframework.data.annotation.Id;

public class BookVo {
	String  title ,writer,subtitle,translator,publisher ,price,subcategory ,tab,image  ;
	@Id
	String id;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getTranslator() {
		return translator;
	}
	public void setTranslator(String translator) {
		this.translator = translator;
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
	public String getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}
	public String getTab() {
		return tab;
	}
	public void setTab(String tab) {
		this.tab = tab;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "BookVo [title=" + title + ", writer=" + writer + ", subtitle=" + subtitle + ", translator=" + translator
				+ ", publisher=" + publisher + ", price=" + price + ", subcategory=" + subcategory + ", tab=" + tab
				+ ", image=" + image + ", id=" + id + "]";
	}
	
	



}
