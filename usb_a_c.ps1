
$soundUrl = "https://github.com/sasa00elsaedy/funny_scripts/raw/main/s9xx8-zimyv.wav"


$tempPath = [System.IO.Path]::GetTempFileName() + ".wav"


Invoke-WebRequest -Uri $soundUrl -OutFile $tempPath


Set-ItemProperty -Path "HKCU:\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" -Name "(Default)" -Value $tempPath

Write-Output "DONE"
