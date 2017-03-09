#
# This is "one-liner" PowerShell script to list all of Azure managed disks snapshots

Get-AzureRmSnapshot | Format-Table -Property Name,@{Name="Resource Group"; Expression={$_.ResourceGroupName}; Alignment="center"; },@{Name="Size in GB"; Expression={$_.DiskSizeGB}; Alignment="center"; } -AutoSize -Wrap