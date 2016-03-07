package service;

import java.util.ArrayList;
import java.util.List;

import beans.StudentBean;

public class RegistrationService {
	private List<StudentBean> register;
	public RegistrationService(){
		register = new ArrayList<StudentBean>();
	}
	public List<StudentBean> getRegister(){
		return register;
	}
	
	public void registerStudent(StudentBean student) throws Exception{
		for(StudentBean s : register){
			if(s.compareTo(student)==0){
				throw new Exception("Duplicate Student");
			}
		}
		register.add(student);
	}	
}
