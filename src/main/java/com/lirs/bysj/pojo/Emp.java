package com.lirs.bysj.pojo;

public class Emp {
	private int E_id;
	private String E_name;
	private char E_sex;
	private String E_tel;
	private String E_adress;
	private String E_pwd;
	private char E_class;//员工等级
	private int E_salary;
	private String E_time;//入职时间
	private int E_statue;//状态 1在职 0离职
	
	public Emp() {
	
	}
	public Emp(int e_id, String e_name, char e_sex, String e_tel, String e_adress, String e_pwd, char e_class,
			int e_salary, String e_time, int e_statue) {
		super();
		E_id = e_id;
		E_name = e_name;
		E_sex = e_sex;
		E_tel = e_tel;
		E_adress = e_adress;
		E_pwd = e_pwd;
		E_class = e_class;
		E_salary = e_salary;
		E_time = e_time;
		E_statue = e_statue;
	}
	public int getE_id() {
		return E_id;
	}
	public void setE_id(int e_id) {
		E_id = e_id;
	}
	public String getE_name() {
		return E_name;
	}
	public void setE_name(String e_name) {
		E_name = e_name;
	}
	public char getE_sex() {
		return E_sex;
	}
	public void setE_sex(char e_sex) {
		E_sex = e_sex;
	}
	public String getE_tel() {
		return E_tel;
	}
	public void setE_tel(String e_tel) {
		E_tel = e_tel;
	}
	public String getE_adress() {
		return E_adress;
	}
	public void setE_adress(String e_adress) {
		E_adress = e_adress;
	}
	public String getE_pwd() {
		return E_pwd;
	}
	public void setE_pwd(String e_pwd) {
		E_pwd = e_pwd;
	}
	public char getE_class() {
		return E_class;
	}
	public void setE_class(char e_class) {
		E_class = e_class;
	}
	public int getE_salary() {
		return E_salary;
	}
	public void setE_salary(int e_salary) {
		E_salary = e_salary;
	}
	public String getE_time() {
		return E_time;
	}
	public void setE_time(String e_time) {
		E_time = e_time;
	}
	public int getE_statue() {
		return E_statue;
	}
	public void setE_statue(int e_statue) {
		E_statue = e_statue;
	}
	@Override
	public String toString() {
		return "Emp [E_id=" + E_id + ", E_name=" + E_name + ", E_sex=" + E_sex + ", E_tel=" + E_tel + ", E_adress="
				+ E_adress + ", E_pwd=" + E_pwd + ", E_class=" + E_class + ", E_salary=" + E_salary + ", E_time="
				+ E_time + ", E_statue=" + E_statue + "]";
	}
	
	
}
