@isTest
public class SFIntegrationSettingController_Test {
    
    @testSetup
    public static void setupdate(){
        SF_Integration__c integrationDetails = new SF_Integration__c();
        integrationDetails.Allow_To_Both__c = true;
        //insert integrationDetails;
        
    }
    
    @isTest
    public static void getSFIntegrationSettingTest(){
        SF_Integration__c integrationDetails1 = new SF_Integration__c();
        integrationDetails1.Allow_To_Both__c = true;
        insert integrationDetails1;
        SF_Integration__c integrationDetails =  SFIntegrationSettingController.getSFIntegrationSetting();
        SFIntegrationSettingController.saveSFIntegrationSetting(integrationDetails1);
    }
}