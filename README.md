# assets
Various assets used by the AZUG FR community

## DevTestLabs
A set of ARM deployment templates and parameters for Azure Dev Test Lab dev VM provisioning:
*  devtestLab.json (+ parameters) : deploys a simple DevTest Lab
*  addVMs.json (+ parameters) : add 1 (or more) VMs in the previously deployed DevTest Lab
*  Provision.ps1 : a very simple set of PS commands for deploying the templates
Tip: always deploy in the same resource group as the DevTest Lab (otherwise, the resource won't be found). There is no workaround of this limitation at this time.


