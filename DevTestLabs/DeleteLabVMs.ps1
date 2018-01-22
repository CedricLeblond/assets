# Delete selected the VMs in a lab.
# May delete a single particular VM if -NoLoop parameter is used

Param(
    [string]$labName,
    [string]$vmPrefix,
    [int]$startId=0,
    [int]$endId,
    [switch]$NoLoop,
    [switch]$WhatIf
  )

  Function Remove-LabVM($labName, $vm, $WhatIfValue)
  {
      $labVM = Get-AzureRmResource | Where-Object { $_.ResourceType -eq 'microsoft.devtestlab/labs/virtualmachines' -and  $_.ResourceName -eq "$labName/$vm"}
      Write-Output "Deleting VM $($labVM.ResourceName)..."
      Remove-AzureRmResource -ResourceId $labVM.ResourceId -Force -WhatIf:$WhatIf
  }
  
  if(-not($labName)) { Throw "Mandatory value -labName" }
  if(-not($vmPrefix)) { Throw "Mandatory value -vmPrefix" }


# Delete the VMs.
if ($noLoop) {
    $vmName = $vmPrefix
    Remove-LabVM $labName $vmName $WhatIf
}
else {
    for ($i=$startId; $i -le $endId; $i++){
        
        $vmName = "$vmPrefix$($i.ToString('00'))"
        Remove-LabVM $labName $vmName $WhatIf
    }
}

Write-Output "Done."



