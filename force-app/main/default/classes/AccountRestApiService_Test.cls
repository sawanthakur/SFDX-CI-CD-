@isTest
public class AccountRestApiService_Test {
    
    @isTest
    public static void doPostTest(){
        
        List<Account> accList = new List<Account>();
        accList.add(new Account(Name = 'Test1', UID__c = 'Test1UID'));
        
        RestRequest req = new RestRequest();
        req.requestUri = 'https://sdinfo1-dev-ed.my.salesforce.com' +'/services/apexrest/v/credAccount/';
        //even this can't help to put id of inserted test-product into ExternalID__c:
        //req.params.put('ExternalID__c', test.Id);
        req.httpMethod = 'POST';
        req.addHeader('Content-Type', 'application/json');
        req.requestBody = Blob.valueOf(JSON.serialize(accList)); 
        RestContext.request = req;
        //update method:
        AccountRestApiService.doPost();
        //Error is here:
        Account updatedRecord = [SELECT Name
                                    FROM Account
                                    WHERE UID__c =: 'Test1UID'];
        System.assert(updatedRecord.Name == 'Test1');
        
    }
    
    @isTest
    public static void doPutTest(){
        
        Account test = new Account(Name = 'Test1', UID__c = 'Test1UID');
        insert test;
        List<Account> accList = new List<Account>();
        accList.add(new Account(Name = 'Test1', UID__c = 'Test1UID'));
        
        RestRequest req = new RestRequest();
        req.requestUri = 'https://sdinfo1-dev-ed.my.salesforce.com' +'/services/apexrest/v/credAccount/';
        //even this can't help to put id of inserted test-product into ExternalID__c:
        //req.params.put('ExternalID__c', test.Id);
        req.httpMethod = 'PUT';
        req.addHeader('Content-Type', 'application/json');
        req.requestBody = Blob.valueOf(JSON.serialize(accList)); 
        RestContext.request = req;
        //update method:
        AccountRestApiService.doPut();
        //Error is here:
        Account updatedRecord = [SELECT Name
                                    FROM Account
                                    WHERE UID__c =: 'Test1UID'];
        System.assert(updatedRecord.Name == 'Test1');
        
    }
    
    @isTest
    public static void doPatchTest(){
        
        Account test = new Account(Name = 'Test1', UID__c = 'Test1UID');
        insert test;
        List<Account> accList = new List<Account>();
        accList.add(new Account(Name = 'Test1', UID__c = 'Test2UID'));
        accList.add(test);
        
        RestRequest req = new RestRequest();
        req.requestUri = 'https://sdinfo1-dev-ed.my.salesforce.com' +'/services/apexrest/v/credAccount/';
        //even this can't help to put id of inserted test-product into ExternalID__c:
        //req.params.put('ExternalID__c', test.Id);
        req.httpMethod = 'PATCH';
        req.addHeader('Content-Type', 'application/json');
        req.requestBody = Blob.valueOf(JSON.serialize(accList)); 
        RestContext.request = req;
        //update method:
        AccountRestApiService.doPatch();
        //Error is here:
        Account updatedRecord = [SELECT Name
                                    FROM Account
                                    WHERE UID__c =: 'Test1UID'];
        System.assert(updatedRecord.Name == 'Test1');
        
    }
    
     @isTest
    public static void doDeleteTest(){
        
        Account test = new Account(Name = 'Test1', UID__c = 'Test1UID');
        insert test;
        List<Account> accList = new List<Account>();
        accList.add(test);
        
        RestRequest req = new RestRequest();
        req.requestUri = 'https://sdinfo1-dev-ed.my.salesforce.com' +'/services/apexrest/v/credAccount/';
        //even this can't help to put id of inserted test-product into ExternalID__c:
        //req.params.put('ExternalID__c', test.Id);
        req.httpMethod = 'PUT';
        req.addHeader('Content-Type', 'application/json');
        req.requestBody = Blob.valueOf(JSON.serialize(accList)); 
        RestContext.request = req;
        //update method:
        AccountRestApiService.doDelete();
        
        
    }
    
}