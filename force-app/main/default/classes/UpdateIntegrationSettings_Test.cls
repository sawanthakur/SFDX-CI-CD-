@isTest 
public class UpdateIntegrationSettings_Test {
    
    @isTest
    public static void doPatchTest(){
        SF_Integration__c updateSfIntegration = createCustomeSettingRecord();
        updateSfIntegration.Org_dsable_to_sdinfo1__c = true;
        updateSfIntegration.Org_sdinfo1_To_dsable__c = false;
        updateSfIntegration.Allow_To_Both__c = false;
        updateSfIntegration.Sync_on_Schedule_Time__c = false;
        
        insert updateSfIntegration;
        
        RestRequest req = new RestRequest();
        req.requestUri = 'https://sdinfo1-dev-ed.my.salesforce.com' +'/services/apexrest/v/credAccount/';
        
        req.httpMethod = 'PATCH';
        req.addHeader('Content-Type', 'application/json');
        req.requestBody = Blob.valueOf(JSON.serialize(updateSfIntegration)); 
        RestContext.request = req;
        //update method:
        UpdateIntegrationSettings.doPatch();
        
        
    }
    
    @isTest static void testGetCaseById() {
        SF_Integration__c customeSetting = createCustomeSettingRecord();
        SF_Integration__c integrationDetails = SF_Integration__c.getOrgDefaults();
        
        String endPoint = IntegrationDetails.End_Point_URL__c+'/services/apexrest/v/updateIntegrationSettings/'; 
        
        RestRequest request = new RestRequest();
        request.requestUri = endPoint;
        
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        //Case thisCase = CaseManager.getCaseById();
        // Verify results
        //System.assert(thisCase != null);
        //System.assertEquals('Test record', thisCase.Subject);
    }
    
    public static SF_Integration__c createCustomeSettingRecord(){
        SF_Integration__c updateSfIntegration = new SF_Integration__c();
        
        return updateSfIntegration;
    }
    
}