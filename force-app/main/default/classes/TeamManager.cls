public with sharing class TeamManager {
    public static List<Account> getTeams() {
        return [SELECT Id
                , Name
                , Engine__c
                , Engine__r.Name
            FROM Account
            WHERE Engine__c != null];
    }
}
