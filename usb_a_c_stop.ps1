
$defaultSoundPath = "%SystemRoot%\media\Windows Hardware Insert.wav"


Set-ItemProperty -Path "HKCU:\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" -Name "(Default)" -Value $defaultSoundPath


Write-Output "DONE"
