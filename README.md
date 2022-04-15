# Mail-Merge-for-Salesforce-Nonprofit-Cloud

The goal of this project is to document and share common use cases for Conga Composer solutions in nonprofit organizations.  You an use this repository to download or copy sample Solutions.  Contributions are welcome - get in touch with me (samantha dot shain 2010 at gmail dot com) if you want to contribute but Github is a barrier to participation.

# Problem Statement
1. Nonprofit organizations that use Salesforce for contact management, donor management, and/or program managament frequently need sophisticated "mail merge" technology for common practices, like donor tax letters, reporting, etc.
1. However, the technology to support these requirements are typically expensive, difficult to configure, and require time and technical expertise to get started.
1. Therefore, nonprofits are left with ineffective workarounds, no mail merge capabilities, or sky-high consulting bills.
1. Nonprofits that purchase a product like Conga Composer can execute basic mail merges, but may not be fully leveraging the product due to time and capacity constraints.

# Proposed Solution
1. Create a free, public, and open source repository of common nonprofit mail merge solutions
1. Document mail merge use cases that leverage the full functionality of third party applications like Conga Composer and Apsona
1. Build capacity among nonprofits and reduce multiplicity of efforts by sharing solutions within the community

## Definitions
- Conga Composer is a paid, third party application that is primarily used with the Salesforce platform
- Other common applications (all paid) include Apsona, Nintex (fka Drawloop), SDocs, Form Titan, etc.  This repo currently focuses on Conga Composer and Apsona, but could eventually expand to other platforms.
- A "Solution" is a bundle of directions that feeds data, templates, and preferences into Conga Composer to execute a mail merge download
- Mail Merge is a technology feature that takes a template and replaces certain fields with data points in a batch operation.  Therefore, you can take a spreadsheet of names and addresses, and a template for a Letter, and print one letter customized for each person in the spreadsheet in one operation.

## Development

To use the resources in this repository, you will need to:
1. Ensure that you have Conga Composer OR Apsona installed and licensed in your Salesforce org
1. Follow the instructions in this Repo's wiki to reproduce solutions in your target org (Production org, Sandbox, or dev org)
1. Provide feedback / commit changes back to this repo if you have solution enhancement ideas

## License 
This work is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
