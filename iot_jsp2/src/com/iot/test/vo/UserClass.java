package com.iot.test.vo;

public class UserClass {
	private int ciNo;
	private String ciName;
	private String ciDesc;
	private int uiNo;
	private String uiName;
	private int uiAge;
	private String uiId;
	private String uiPwd;
	private String uiRegdate;
	private String address;
	private boolean saveId;
	public boolean isSaveId() {
		return saveId;
	}
	public void setSaveId(boolean saveId) {
		this.saveId = saveId;
	}
	public int getCiNo() {
		return ciNo;
	}
	public void setCiNo(int ciNo) {
		this.ciNo = ciNo;
	}
	public String getCiName() {
		return ciName;
	}
	public void setCiName(String ciName) {
		this.ciName = ciName;
	}
	public String getCiDesc() {
		return ciDesc;
	}
	public void setCiDesc(String ciDesc) {
		this.ciDesc = ciDesc;
	}
	public int getUiNo() {
		return uiNo;
	}
	public void setUiNo(int uiNo) {
		this.uiNo = uiNo;
	}
	public String getUiName() {
		return uiName;
	}
	public void setUiName(String uiName) {
		this.uiName = uiName;
	}
	public int getUiAge() {
		return uiAge;
	}
	public void setUiAge(int uiAge) {
		this.uiAge = uiAge;
	}
	public String getUiId() {
		return uiId;
	}
	public void setUiId(String uiId) {
		this.uiId = uiId;
	}
	public String getUiPwd() {
		return uiPwd;
	}
	public void setUiPwd(String uiPwd) {
		this.uiPwd = uiPwd;
	}
	public String getUiRegdate() {
		return uiRegdate;
	}
	public void setUiRegdate(String uiRegdate) {
		this.uiRegdate = uiRegdate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "UserClass [ciNo=" + ciNo + ", ciName=" + ciName + ", ciDesc=" + ciDesc + ", uiNo=" + uiNo + ", uiName="
				+ uiName + ", uiAge=" + uiAge + ", uiId=" + uiId + ", uiPwd=" + uiPwd + ", uiRegdate=" + uiRegdate
				+ ", address=" + address + "]";
	}

}
