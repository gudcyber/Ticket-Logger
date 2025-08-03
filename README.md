# Ticket Logger

This PowerShell script collects user support ticket information and stores it in a structured CSV file.

## Purpose

Simulates a basic help desk ticketing system. Designed to demonstrate user input handling, ticket generation, and CSV log storage.

## Skills Used

- PowerShell scripting
- User input handling
- Data structuring in CSV
- IT support documentation basics

## How It Works

1. Prompts user for:
   - Name
   - Device Name
   - Issue Type (hardware, software, connectivity, other)
   - Severity (low, medium, high)
   - Issue Description

2. Adds a timestamp.

3. Appends the data to `tickets.csv`.

## Sample Log Entry

TicketID, Name, Device, Issue, Urgency, Timestamp

"1001","Goodness","HR-LAPTOP-07","Outlook not launching for user after reboot","High","2025-08-03 13:10:08"


## How to Run

1. Open PowerShell as Administrator.
2. Allow script execution (if needed):

```powershell
.\ticket_logger.ps1

