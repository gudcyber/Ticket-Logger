# Ticket Logger Script
$ticketFile = "tickets.csv"

# Create CSV file if it doesn't exist
if (!(Test-Path $ticketFile)) {
    "TicketID,Name,Device,Issue,Urgency,Timestamp" | Out-File $ticketFile
}

# Generate new Ticket ID
$lastTicket = (Import-Csv $ticketFile | Sort-Object TicketID -Descending | Select-Object -First 1).TicketID
if ($lastTicket -eq $null) { $ticketID = 1001 } else { $ticketID = [int]$lastTicket + 1 }

# Collect ticket info
$name = Read-Host "Enter your name"
$device = Read-Host "Enter the device name"
$issue = Read-Host "Describe the issue"
$urgency = Read-Host "Urgency level (Low, Medium, High)"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Create ticket object
$ticket = [PSCustomObject]@{
    TicketID  = $ticketID
    Name      = $name
    Device    = $device
    Issue     = $issue
    Urgency   = $urgency
    Timestamp = $timestamp
}

# Save to CSV
$ticket | Export-Csv -Path $ticketFile -Append -NoTypeInformation

Write-Host "`nTicket #$ticketID created successfully." -ForegroundColor Green
