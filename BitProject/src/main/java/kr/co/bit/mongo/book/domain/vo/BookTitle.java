package kr.co.bit.mongo.book.domain.vo;

public class BookTitle implements Comparable<BookTitle>{
	String title;
	int size;

public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}
	@Override
	public int compareTo(BookTitle o) {
		// TODO Auto-generated method stub
		
		if(this.size>o.size){
			return 1;
		}else if (this.size<o.size) {
			return -1;
		}else {
			return 0;
		}
	}

	@Override
	public String toString() {
		return "BookTitle [title=" + title + ", size=" + size + "]";
	}
	
}
