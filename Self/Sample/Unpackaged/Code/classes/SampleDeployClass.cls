@isTest
//This is a sample deploy class.
public class SampleDeployClass {

    public static testmethod void t1() {
        helloMethod();

        Account acc = new Account(Name= 'fred');
        insert acc; // hit the trigger

        // Check that the trigger properly set the phone field:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }

    public static String getPhone() {
        return 'SamplePhone#';
    }
    
    private static void createObjRecord(){
        MyObj__c objectInstance=new MyObj__c();
        objectInstance.Name='Test Object Instance';
        insert objectInstance;
    }

    public static void helloMethod() {
        System.debug('Hello World');
        createObjRecord();
    }
}
