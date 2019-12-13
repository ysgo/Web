package exam2;

public class Student {
	private String name;
	private Homework myHomework;
	Student() {	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Homework getMyHomework() {
		return myHomework;
	}
	public void setMyHomework(Homework myHomework) {
		this.myHomework = myHomework;
	};
	@Override
	public String toString() {
		return getName() + "는 " + getMyHomework().getHomeworkName() + "를 학습합니다.";
	}
}
