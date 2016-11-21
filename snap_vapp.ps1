# Create snapshots of all VMs in a vApp

param([Parameter(Mandatory=$true)][string]$snapName)

$desc = "Snapped on " + (Get-Date).ToString("yyy-MMM-d")
$vAppName = "OSL"

# Connect-VIServer -Server 10.10.61.103
$vApp = Get-VApp -Name $vAppName
$allVMs = Get-VM -Location $vApp

New-Snapshot -Name $snapName -VM $allVMs -Description $desc
