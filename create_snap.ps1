# Create snapshots of all VMs in a vApp

param([Parameter(Mandatory=$true)][string]$snapname)

$vAppName = "OSL"
# $snapname = "clean_initial_lab"
$vApp = Get-VApp -Name $vAppName
$VMs = Get-VM -Location $vApp
$desc = "Snapped on " + (Get-Date).ToString("yyy-MMM-d")

New-Snapshot -Name $snapname -VM $VMs -Description $desc
