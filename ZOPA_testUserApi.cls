public with sharing class ZOPA_testUserApi {
    public static String getUsers() {
    String payLoad =getUsersCallout();
    system.debug('payload ==>>> '+payLoad);
        return payLoad;
    }
    
    public static String getUsersCallout() {
        String jsonString;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:testApi/users');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) {
             jsonString = response.getBody();
        }
        return jsonString;
    }
}