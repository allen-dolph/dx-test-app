@isTest
public with sharing class Test_TeamManager {

    @testSetup
    public static void setup() {
        Engine__c engine = new Engine__c();
        engine.Name = 'Mercedes';

        insert engine;

        Account a = new Account();
        a.Name = 'Williams';
        a.Engine__c = engine.Id;

        insert a;
    }

    @isTest
    public static void Test_getTeams() {
        // Arrange
        // Act
        List<Account> result = TeamManager.getTeams();

        // Assert
        System.AssertEquals('Mercedes', result[0].Engine__r.Name);
    }
}
