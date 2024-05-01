This repository includes several hands-on scenarios for practicing Salesforce triggers in action.<br /><br />
**accountBillingToaccountShipping**: Write a trigger on Account , when an account insert , automatically account billing address should populate into the account shipping address.<br /><br />
**populateAccountRating**: If Account Industry is not null and having values as 'Energy' then populate Rating as 'Hot' else 'Cold'.<br /><br />
**updateAccountOpportunities**: Write a trigger on the Account when the Account is updated check all opportunities related to the account. Update all Opportunities Stage to close lost if an opportunity created date is greater than 30 days from today and stage not equal to close won.<br /><br />
**updateAccountwithOpptyTotal:** The total amount from All its Opportunities on the Account Level. The account field name would be 'Total Opportunity Amount'.<br /><br />

