# Get CPU usage
$cpu = Get-WmiObject -Query 'SELECT * FROM Win32_Processor' | ForEach-Object { $_.LoadPercentage }

# Get RAM usage
$ram = Get-WmiObject -Class Win32_OperatingSystem
$usedRam = [math]::Round((($ram.TotalVisibleMemorySize - $ram.FreePhysicalMemory) / 1MB), 2)

# Get GPU usage
$gpu = Get-WmiObject -Query 'SELECT * FROM Win32_VideoController' | ForEach-Object { $_.CurrentUsage }

# Construct the output
$output = 'CPU Usage: ' + $cpu + '%' + [System.Environment]::NewLine +
          'RAM Usage: ' + $usedRam + ' MB' + [System.Environment]::NewLine +
          'GPU Usage: ' + $gpu + '%'

# Output the result to a file
$output | Out-File -FilePath $env:TEMP\system_info.txt
