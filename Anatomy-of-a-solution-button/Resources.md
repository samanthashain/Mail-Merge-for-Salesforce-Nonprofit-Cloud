Watch on YouTube!   

[![](https://i.imgur.com/T2MIIQa.png)](https://www.youtube.com/watch?v=gItDB0_oxcw&t=2s)

Read on [Conga's Documentation site](https://documentation.conga.com/composer/latest/anatomy-of-a-conga-composer-button-143198461.html)

# What is a Conga Composer Solution (philosophically)
In order to make the magic of mail merge come alive with Salesforce and Conga Composer, you need a way to gather data (to be merged), templates (to merge into), a button (to start the process), and some special instructions (e.g. download format).  It's convenient to keep all of these pieces in the same place, so that you don't have to reset them every time you do a merge.  A Conga Composer Solution is what we call the unique combination of elements that makes a specific merge work.

Each "Solution" represents a different Mail Merge output.  So, you might have;
* one Solution for donation receipts, 
* another Solution for envelope labels, and 
* another Solution for tax letters (etc etc etc!)  

The sky's the limit!

You can think of a Solution as all of the technical instructions for whatever you pick up from your printer tray when your merge is complete.

# What is a Conga Composer Solution (technologically)
In it's simplest form, a Solution is code that is executed from a button on a Salesforce object.  Yep, a plain, old [button!](https://help.salesforce.com/s/articleView?id=sf.customize_enterprise.htm&type=5)

At some point along the way, the folks at Conga made it easier to create solutions.  Instead of going to the button and adding/removing bits of code, they created a page where we can click buttons to add specific details to a Solution-in-progress.  This is called the Solution Manager and it's made life so much easier for admins of Conga Composer!

A Conga Solution consists of the following elements:
* A Button (unless the solution is a Global Merge, but we'll cover those elsewhere)
* Conga code snippet
* At least one SOQL query to gather data into the solution
* At least one template (technically optional, but if you don't do this, you'll always need to upload fresh ones)
* Parameters (optional) - very useful for customizing download behavior and other custom aspects
