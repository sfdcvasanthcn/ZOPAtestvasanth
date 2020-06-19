public class ZOPA_testAlbumApi {
	 public static String getAlbums() {
    String payLoad = getAlbumCallout();
    system.debug('payload ==>>> '+payLoad);
        return payLoad;
    }
    
    public static String getAlbumCallout() {
        String jsonString;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:testApi/albums');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) {
             jsonString = response.getBody();
        }
        return jsonString;
    }
}