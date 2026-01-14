public with sharing class AccountHandler {
    
    // Method to get Accounts based on a specific condition
    public static List<Account> getActiveAccounts() {
        // Query to fetch active accounts
        List<Account> activeAccounts = [SELECT Id, Name FROM Account WHERE Name = 'test'];
        return activeAccounts;
    }

    // Method to create a new Account
    public static Account createAccount(String accountName) {
        Account newAccount = new Account(Name = accountName);
        insert newAccount;
        return newAccount;
    }
}