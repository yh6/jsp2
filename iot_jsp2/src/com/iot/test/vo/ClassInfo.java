package com.iot.test.vo;

public class ClassInfo {
	private int cino;
	private String ciname;
	private String cidesc;

	public int getCino() {
		return cino;
	}

	public void setCino(int cino) {
		this.cino = cino;
	}

	public String getCiname() {
		return ciname;
	}

	public void setCiname(String ciname) {
		this.ciname = ciname;
	}

	public String getCidesc() {
		return cidesc;
	}

	public void setCidesc(String cidesc) {
		this.cidesc = cidesc;
	}

	@Override
	public String toString() {
		return "ClassInfo [cino=" + cino + ", ciname=" + ciname + ", cidesc=" + cidesc + "]";
	}
}
