@isTest
public class ScheduleSyncDataBatch_Test {
    
    @testSetup static void setupmethod() {
        Account deleteAccount = new Account(Name='Test1', UID__c='Test1');
        insert deleteAccount;
        delete deleteAccount;
        
        Account deleteAccount1 = new Account(Name='Test12', UID__c='Test12');
        insert deleteAccount1;
    }
    
    @isTest
    public static void ScheduleSyncDataBatchTest(){
        Test.StartTest();
        ScheduleSyncDataBatch sh1 = new ScheduleSyncDataBatch();
        String sch = '0 0 23 * * ?'; system.schedule('Test Territory Check', sch, sh1); 
        Test.StopTest();
    }
    
    
}