# Securing external SaaS APIs with Azure API Management

This repo contains all slides and configuration settings used in the demo of my talk at the [Global Azure Boot Camp in Austria 2022](https://globalazure.at/sessions/).

Folders:
- certs... This folder contains the configuration files for the Certificate Authority-Certificate and the Client Certficate. It also contains the script **create.sh** which will create the PFX/CER files required for the demo
- images... This folder contains a list of the required Azure Resources and the architecture diagram
- openapi... This contains the API specification of the API I created in the demo. It can be imported in an Azure API Management resource.
- policies... Contains all the policy definitions i used in the demo. The subfolder **Bonus** also contains a variant that shows how you could process certificates stored in API Management and how you could retrieve Access-Tokens for the backend with an Azure function
- slides... contains the slides of my presentation

[Blogpost-Reference](https://blog.spectologic.com/2022/05/06/securing-external-saas-apis-with-azure-api-management-gab2022)
