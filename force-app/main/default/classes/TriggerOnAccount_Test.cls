@isTest
public class TriggerOnAccount_Test {
    
    @isTest
    public static void TestAccountTrigger(){
        Account acc = new Account(Name='Test1', UID__c = 'Test1');
        insert acc;
        
        acc.Name = 'Test1.1';
        update acc;
        
        delete acc;
        
        List<Account> accList = new List<Account>();
        accList.add(new Account(Name='Test1', UID__c = 'Test1'));
        AccountTriggerHelper.deleteStoredUID(accList);
        
        
    }  
}