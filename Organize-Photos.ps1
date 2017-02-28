$MyFiles = Get-ChildItem -path C:\Users\nicho_000\Pictures\* -include *.png,*.jpeg,*.gif,*.jpg,*.psd,*.bmp

ForEach($File in $MyFiles)
{
    $fYear = $File.LastWriteTime.Year
    $fMonth = "{0:00}" -f $file.LastWriteTime.Month

    $PathExists = Test-Path $fYear
    if($PathExists -eq $false) 
    { 
        mkdir $fYear | out-null 
    }

    $PathExists = Test-path $fYear\$fMonth
    if($PathExists -eq $false) 
    { 
        mkdir $fYear\$fMonth | out-null 
    }

    Write-Host "Moving $File to $fYear\$fMonth" -ForegroundColor Green
    Move-Item $file $fYear\$fMonth
}