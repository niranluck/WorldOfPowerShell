# Run PowerShell as Admin
#cd \temp\GetFiles
#Set-ExecutionPolicy RemoteSigned
# .\ArchiveFile.ps1
# Get the directory path and file extension
$directoryPath = "E:\Data\BPI\Account"
$fileExtension = "*.pdf"

# Get all the files in the directory with the specified extension and name starting with "ID_"
$files = Get-ChildItem -Path $directoryPath -Filter ($fileExtension) -Recurse | Where-Object { $_.Name -like "ID_*" } | Export-Csv -Path ".\directory_contents.csv" -NoTypeInformation

# Print the file information
#foreach ($file in $files) {
#   Write-Host "File Name: $($file.FullName)\t$($file.LastWriteTime)"
#}

#Remove-Item -Path "C:\Users\Username\Documents\example.txt"
#Copy-Item -Path "C:\Documents\example.txt" -Destination "C:\Documents\example_copy.txt"
#Move-Item -Path "C:\Documents\example.txt" -Destination "C:\Documents\example_copy.txt"

#Get-ChildItem -Path "C:\Documents" | Export-Csv -Path "C:\Documents\directory_contents.csv" -NoTypeInformation



