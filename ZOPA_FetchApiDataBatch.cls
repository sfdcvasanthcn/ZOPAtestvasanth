global class ZOPA_FetchApiDataBatch implements Database.Batchable<sObject>, Database.AllowsCallouts, Database.stateful{
     
    global Database.QueryLocator start(Database.BatchableContext BC) {
    	String query = 'Select Id, Name, External_Id__c, Contact__c, Contact__r.Name, Contact__r.External_Id__c, Contact__r.Email from  Album__c';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Album__c> scope) {
        //get the JSON response from API call
        String albumJsonResult = '';
        String contactJsonResult = '';
        contactJsonResult = ZOPA_testUserApi.getUsers();
        albumJsonResult = ZOPA_testAlbumApi.getAlbums();
        
    }
    
    global void finish(Database.BatchableContext BC) {
        //code for updating/upserting the records
		//t
    }
    

}