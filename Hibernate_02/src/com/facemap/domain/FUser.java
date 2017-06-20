package com.facemap.domain;

/**
 * FUser entity. @author MyEclipse Persistence Tools
 */

public class FUser implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userName;
	private String userPwd;
	private String userLoginName;
	private String userEmail;
	private String userAddress;
	private Integer userStatus;

	// Constructors

	/** default constructor */
	public FUser() {
	}

	/** full constructor */
	public FUser(String userName, String userPwd, String userLoginName,
			String userEmail, String userAddress, Integer userStatus) {
		this.userName = userName;
		this.userPwd = userPwd;
		this.userLoginName = userLoginName;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.userStatus = userStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return this.userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserLoginName() {
		return this.userLoginName;
	}

	public void setUserLoginName(String userLoginName) {
		this.userLoginName = userLoginName;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public Integer getUserStatus() {
		return this.userStatus;
	}

	public void setUserStatus(Integer userStatus) {
		this.userStatus = userStatus;
	}

}