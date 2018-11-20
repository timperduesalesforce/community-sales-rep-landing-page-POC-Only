/**
 * Date: 11/15/2018
 * Developed By: Tim Perdue
 * Class built to show select records from a custom object that include public links to files
 * Called by Visualforce page 
**/

public class ViewMyFiles{

 public List<My_File__c> viewFiles{get;set;}
 public String urlString {get;set;}

 public ViewMyFiles(){
  viewFiles= new List<My_File__c>();
  viewFiles= [select id,name, Summary__c, Public_Link__c, Thumbnail_Static_Image__c from My_File__c WHERE User__c = :ApexPages.currentPage().getParameters().get('id') ];
 urlString();
 }
 
private  void urlString(){
   urlString = system.URL.getCurrentRequestUrl().toExternalForm();


}
 
}