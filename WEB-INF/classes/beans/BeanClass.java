package beans;

import java.io.Serializable;
 
public class BeanClass implements Serializable {
    private String answer1,answer2,answer3,answer4;
    private String name3,name2,name1;
    private double a,b,c,d,p1,p2,p3;
    
    public BeanClass() { }
    
    public String getAnswer1() {
        answer1=(Double.toString(a));
        return answer1;
    }
    public String getAnswer2() {
        answer2=(Double.toString(b));
        return answer2;
    }
    public String getAnswer3() {
        answer3=(Double.toString(c));
        return answer3;
    }
    public String getAnswer4() {
        d=a+b+c;
        answer4=(Double.toString(d));
        return answer4;
    }
    public void setName1(final String name1) {
        this.name1 = name1;
        this.a=Double.parseDouble(name1)*p1;
    }
    public void setName2(final String name2) {
        this.name2 = name2;
        this.b=Double.parseDouble(name2)*p2;
    }
    public void setName3(final String name3) {
        this.name3 = name3;
        this.c=Double.parseDouble(name3)*p3;
    }
    public void setP1(final String p1) {
        this.p1 = Double.parseDouble(p1);
    }
    public void setP2(final String p2) {
        this.p2 = Double.parseDouble(p2);
    }
    public void setP3(final String p3) {
        this.p3 = Double.parseDouble(p3);
    }
}