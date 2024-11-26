package ch04.com.dao;

public class Exam {
    private String id;
    private int age;

    public Exam(){

    }
    
    public void setId(String id){
        this.id = id;
    }

    public String getId(){
        return id;
    }

    public void setAge(int age){
        this.age = age;
    }

    public int getAge(){
        return age;
    }

}
