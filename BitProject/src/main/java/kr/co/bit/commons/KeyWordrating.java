package kr.co.bit.commons;

public class KeyWordrating implements Comparable<KeyWordrating> {
	
	int cnt ;
	String keyword;
	
	@Override
	public int compareTo(KeyWordrating o) {
		// TODO Auto-generated method stub
		
		if(this.cnt>o.cnt){
			return 1;
		}else if (this.cnt<o.cnt) {
			return -1;
		}else {
			return 0;
		}
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

}
