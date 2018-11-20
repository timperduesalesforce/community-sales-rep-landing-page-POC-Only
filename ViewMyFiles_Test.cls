/**
 * Date: 11/15/2018
 * Developed By: Tim Perdue
 * Test Class built to show select records from a custom object that include public links to files
 * Called by Visualforce page 
**/

@isTest
Public class ViewMyFiles_Test {
 static testmethod void testPageblockTable(){
  //Test converage for the myPage visualforce page
  PageReference pageref = Page.ShowFiles;
  Test.setCurrentPageReference(pageref);
  
  // create an instance of the controller
  ViewMyFiles vmf= new ViewMyFiles();
  }
}