# Conga-Composer-for-Nonprofits

The goal of this project is to document and share common use cases for Conga Composer solutions in nonprofit organizations.  You an use this repository to download or copy sample Solutions.  Contributions are welcome - get in touch with me (samantha dot shain 2010 at gmail dot com) if you want to contribute but Github is a barrier to participation.

# Problem Statement
(1) Nonprofit organizations that use Salesforce for contact management, donor management, and/or program managament frequently need sophisticated "mail merge" technology for common practices, like donor tax letters, reporting, etc.
(2) However, the technology to support these requirements are typically expensive, difficult to configure, and require time and technical expertise to get started.
(3) Therefore, nonprofits are left with ineffective workarounds, no mail merge capabilities, or sky-high consulting bills.
(4) Nonprofits that purchase a product like Conga Composer can execute basic mail merges, but may not be fully leveraging the product due to time and capacity constraints.

# Proposed Solution
(1) Create a free, public, and open source repository of common nonprofit Conga Composer solutions
(2) Document use cases as well as complementary "bells and whistle" in Conga Composer that may be of use to nonprofit organizations
(3) Build capacity among nonprofits and reduce multiplicity of efforts by sharing solutions within the community

## Definitions
- Conga Composer is a paid, third party application that is primarily used with the Salesforce platform
- Other common applications (all paid) include Apsona, Nintex (fka Drawloop), SDocs, Form Titan, etc.  This repo currently focuses on Conga Composer, but could eventually expand to other platforms.
- A "Solution" is a bundle of directions that feeds data, templates, and preferences into Conga Composer to execute a mail merge download
- Mail Merge is a technology feature that takes a template and replaces certain fields with data points in a batch operation.  Therefore, you can take a spreadsheet of names and addresses, and a template for a Letter, and print one letter customized for each person in the spreadsheet in one operation.

## Development

To use the resources in this repository, you will need to:
1. Ensure that you have Conga Composer installed and licensed in your Salesforce org
2. Identify/create a new Conga Solution
3. Add SOQL queries by testing mine (recommended platform: Workbench) and copying them into your org as custom data on the Conga Composer SOQL object
4. Add SOQL queries to Solution
5. Add Parameters to Solution
6. Add Template to Solution
7. Test Solution
8. Update or create Button
9. Update page layout to include new solution Button

## License 
This work is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
