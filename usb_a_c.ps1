
$soundUrl = "https://github.com/sasa00elsaedy/funny_scripts/blob/main/s9xx8-zimyv.wav?raw=true"


$tempPath = [System.IO.Path]::GetTempFileName() + ".wav"


Invoke-WebRequest -Uri $soundUrl -OutFile $tempPath


Set-ItemProperty -Path "HKCU:\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" -Name "(Default)" -Value $tempPath


Write-Output "Device connect sound has been changed to the downloaded sound file: $tempPath"


Write-Output "Please restart your computer to apply the changes."
