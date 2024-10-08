/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 10-03-2024
 * @last modified by  : Priya Soni
 **/

public with sharing class StudentInfo {
     
    // Constructor
    public StudentInfo() {
         
    }

    // Static method to calculate seniors
    public static List<String> cal() {
        List<String> list1 = new List<String>();
        list1.add('John Doe, 20, Sophomore, Computer Science');
        list1.add('Emily Smith, 19, Freshman, Biology');
        list1.add('Michael Johnson, 21, Junior, Mathematics');
        list1.add('Sophia Williams, 22, Senior, Chemistry');
        list1.add('James Brown, 23, Senior, Physics');
        list1.add('Olivia Garcia, 18, Freshman, Economics');
        list1.add('Liam Martinez, 20, Sophomore, Business Administration');
        list1.add('Ava Rodriguez, 19, Sophomore, History');
        list1.add('Noah Lee, 21, Junior, Electrical Engineering');
        list1.add('Isabella Walker, 22, Senior, Political Science');

        List<String> seniors = new List<String>();
        
        for (String record : list1) {
            List<String> data = record.split(', ');
            if (data[2] == 'Senior') {
                seniors.add(record);
            }
        }

        return seniors;
    }

    // Method to call and debug the senior students
    public static void printSeniorStudents() {
        List<String> seniorStudents = cal();
        for (String student : seniorStudents) {
            System.debug(student);
        }
    }
}