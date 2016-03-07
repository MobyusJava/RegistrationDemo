package beans;

import java.io.Serializable;

public class StudentBean implements Serializable, Comparable<StudentBean> {
	private static final long serialVersionUID = 1L;
	
	private String firstName = null;
	private String lastName = null;
	private int age = 0;

	public StudentBean() {
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public int getAge() {
		return age;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Override
	public int compareTo(StudentBean s1) {
		if(s1.getFirstName().equalsIgnoreCase(this.firstName)
				&& s1.getLastName().equalsIgnoreCase(this.lastName)
				&& s1.getAge()==this.age)
			return 0;
		
		return -1;
	}
}
