@RestResource(urlMapping='/Integrations/*')
global class myIntegrationRestService {
    
    @HttpGet
    global static Integration__c getIntegrationRecord() {
        RestRequest resReq = RestContext.request;
        String intName = resReq.requestURI.subString(
           resReq.requestURI.lastIndexof('/')+1);
        System.debug('intNumber value'+intName);
        List<Integration__c> intResult = [SELECT Id, Name, Date__c, Email_Id__c, Mobile_No__c FROM Integration__c WHERE Name =:intName];
        if(intResult.size() > 0) {
            return intResult[0];
        }
        return null;
    }
    
    @HttpPost
    global static String saveIntegrationRecord() {
        RestRequest resReq = RestContext.request;
        Blob jsonIntegrationString = resReq.requestBody;
        System.debug('jsonIntegrationString value '+jsonIntegrationString.toString());
        Integration__c intt = (Integration__c)JSON.deserialize(jsonIntegrationString.toString(), Integration__c.class);
        System.debug('int value '+intt);
        try{
           insert intt;    
        }catch(Exception ex){
           return ex.getMessage();    
        }
        return intt.Id;
    } 
}