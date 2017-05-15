#ps1_sysnative

$salt_master = "salt_master_server_hostname"
$saltversion = "Salt-Minion-2016.11.3-AMD64-Setup.exe"
$url = "https://repo.saltstack.com/windows/$saltversion"
$path = "C:\Windows\Temp"
$dest = $path + $saltversion
Set-Location $path
$webClient = new-object System.Net.WebClient
$webClient.DownloadFile( $url, $dest )
iex '. $dest /S /master=$salt_master /minion-name=$env:computername'
