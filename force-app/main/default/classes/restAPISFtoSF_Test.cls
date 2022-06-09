@isTest
public class restAPISFtoSF_Test {
    
    @isTest 
    static void createAccountTest() {
        test.setMock(HttpCalloutMock.class, new restAPISFtoSFMockCallout());
        Account AccRecord = new Account(Name='Test1234', UID__c = '12345');
        restAPISFtoSF.createAccount(JSON.serialize(AccRecord));  
    }
    
    @isTest 
    static void updateAccountTest() {
        test.setMock(HttpCalloutMock.class, new restAPISFtoSFMockCallout());
        Account AccRecord = new Account(Name='Test1234', UID__c = '12345');
        restAPISFtoSF.updateAccount(JSON.serialize(AccRecord));  
    }
    
    @isTest 
    static void upsertAccountTest() {
        test.setMock(HttpCalloutMock.class, new restAPISFtoSFMockCallout());
        Account AccRecord = new Account(Name='Test1234', UID__c = '12345');
        restAPISFtoSF.upsertAccount(JSON.serialize(AccRecord));  
    }
    
    @isTest 
    static void deleteAccountTest() {
        test.setMock(HttpCalloutMock.class, new restAPISFtoSFMockCallout());
        Account AccRecord = new Account(Name='Test1234', UID__c = '12345');
        restAPISFtoSF.deleteAccount(JSON.serialize(AccRecord));  
    }
    
    @isTest 
    static void updateIntigrationSettingsTest() {
        test.setMock(HttpCalloutMock.class, new restAPISFtoSFMockCallout());
        Account AccRecord = new Account(Name='Test1234', UID__c = '12345');
        restAPISFtoSF.updateIntigrationSettings(JSON.serialize(AccRecord));  
    }
    
}