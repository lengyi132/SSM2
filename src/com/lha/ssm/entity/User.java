package com.lha.ssm.entity;

import org.hibernate.validator.constraints.NotEmpty;

import com.lha.ssm.validated.Login;
import com.lha.ssm.validated.Regist;

public class User {
	private Integer id;
	@NotEmpty(groups = { Login.class, Regist.class }, message = "登录名不能为空")
	private String loginName;
	@NotEmpty(groups = { Regist.class }, message = "用户名不能为空")
	private String userName;
	@NotEmpty(groups = { Login.class, Regist.class }, message = "密码不能为空")
	private String password;
	private Integer sex;
	private String identityCode;
	private String email;
	private String mobile;
	private Integer type;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getIdentityCode() {
		return identityCode;
	}

	public void setIdentityCode(String identityCode) {
		this.identityCode = identityCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}
}
