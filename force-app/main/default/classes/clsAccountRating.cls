public with sharing class clsAccountRating {
    public static Double getAccountRating(String accid){
        List<Account> lstAccounts = [SELECT Id, AccountRating_del__c FROM Account WHERE Id=:accid];
        Double vAccRating=lstAccounts[0].AccountRating_del__c;
        return vAccRating;
    }
}
