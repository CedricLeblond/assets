# assets
Various assets used by the AZUG FR community

## DevTestLabs
A set of ARM deployment templates and parameters for Azure Dev Test Lab dev VM provisioning:
*  devtestLab.json (+ parameters) : deploys a simple DevTest Lab
*  addVMs.json (+ parameters) : add 1 (or more) development VMs in the provisioned DevTest Lab, containing:
    * Visual Studio 2017 Community Edition
    * Visual Studio Code
    * Chrome
    * Firefox
    * Git for Windows
*  addVMswRepo.json : (+ parameters) : add 1 (or more) VMs in the provisioned DevTest Lab, including a particular GIT repo for HOL Serverless (https://github.com/azugfr/functions-customer-reviews)
*  Provision.ps1 : a very simple set of PS commands for deploying the templates

For simplicity, the template doesn't use KeyVault secret for the VM password at this stage.

Tips and remarks:
* Always deploy in the same resource group as the DevTest Lab (otherwise, the DevTest Lab parent resource won't be found). There is no workaround of this limitation at this time 
* You may want to update the expirationDate for the VM provisioning to the date you plan to automatically remove the VM
* Also, you may want to change the default password for the VMs



