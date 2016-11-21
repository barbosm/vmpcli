# Revert snapshots of a vApp to initial state

$vAppName = "OSL"
$snapname = "clean_initial_lab"
$vApp = Get-VApp -Name $vAppName
$VMs = Get-VM -Location $vApp

Get-Snapshot -VM $VMs -Name $snapname | Foreach-Object {
    Set-VM -VM $_.VM -Snapshot $_ -Confirm:$false
}
