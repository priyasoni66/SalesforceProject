/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-03-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class SeniorStudentswithSub {
    public SeniorStudentswithSub() {

    }
    
	public static list<String> cal(){
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
        
        list<String> newList = new list<String>();
    	
        for(String record : students){
            String[] data = record.split(',');
            String grade = data[2].trim();
            String subject = data[3].trim();

            if(grade == 'Senior' && (subject == 'Political Science' || subject ==  'Physics')){
            	newlist.add(record);
            }
        }
        return newlist;
    }
    public static void main(){
        list<String> students = cal();
        for (String i : students) {
            System.debug(i);
        }
    }
}