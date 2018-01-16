Login-AzureRmAccount

Select-AzureRmSubscription -SubscriptionName "Microsoft Azure Sponsorship"

New-AzureRmResourceGroup -Name "redhol-labs-rg" -Location "West Europe"

New-AzureRmResourceGroupDeployment -Name "redhol-labs-deployment" -TemplateFile ".\devTestLab.json" -TemplateParameterFile ".\devTestLab.parameters.json" -ResourceGroupName "redhol-labs-rg" -Verbose

New-AzureRmResourceGroupDeployment -Name "redhol-labvms-deployment" -TemplateFile ".\addVMs.json" -TemplateParameterFile ".\addVMs.parameters.json" -ResourceGroupName "redhol-labvms-rg" -Verbose
