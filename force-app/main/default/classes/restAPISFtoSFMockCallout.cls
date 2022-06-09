@isTest
global class restAPISFtoSFMockCallout implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"id":"TEST__Id","access_token":"Test__token"}');
        response.setStatusCode(200);
        return response; 
    }
}