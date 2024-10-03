/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-03-2024
 * @last modified by  : Priya Soni
**/
public with sharing class StudentCount {
    public StudentCount() {

    }
    
    public static Integer cal(){
        List<String> students = new List<String>();
        students.add('John Doe, 20, Sophomore, Computer Science');
        students.add('Emily Smith, 19, Freshman, Biology');
        students.add('Michael Johnson, 21, Junior, Mathematics');
        students.add('Sophia Williams, 22, Senior, Chemistry');
        students.add('James Brown, 23, Senior, Physics');
        students.add('Olivia Garcia, 18, Freshman, Economics');
        students.add('Liam Martinez, 20, Sophomore, Business Administration');
        students.add('Ava Rodriguez, 19, Sophomore, History');
        students.add('Noah Lee, 21, Junior, Electrical Engineering');
        students.add('Isabella Walker, 22, Senior, Political Science');
        
        Integer stuCounter = 0;
        for(String record : students){
            String[] data = record.split(',');
            if(data[2] == ' Sophomore'){
            	stuCounter++;
            }
        }
        return stuCounter;
    }
    public static void main(){
        Integer result = cal();
        System.debug(result);
    }
}