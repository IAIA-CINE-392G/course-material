/**
 * Loading JSON Data
 * by Daniel Shiffman.  
 * 
 * to retrieve JSON data via URL
 */

JSONObject json;
int index = 0;

void setup() {
  size(200, 200);

  // The URL for the JSON data (replace "imperial" with "metric" for celsius)
  String apiKey = "ENTER API KEY";
  String url = "http://api.nytimes.com/svc/search/v2/articlesearch.json";
  String query = "?new+mexico";

  // Load the XML document
  json = loadJSONObject(url+query+"&api-key="+apiKey);
  println(json);
}

void draw() {
  String headline = json.getJSONObject("response").getJSONArray("docs").getJSONObject(index).getString("snippet");
    background(255);
  fill(0);
  text(headline,10,10,180,190);
  
  
  if ( frameCount % 250 == 0){
    index++;
  }
  if (index > 9){
    index = 0;
  }
}