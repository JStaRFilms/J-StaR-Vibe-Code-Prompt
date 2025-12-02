$projectId = "PVT_kwHOBryib84BJnlJ"
$statusFieldId = "PVTSSF_lAHOBryib84BJnlJzg5unMg"
$startDateFieldId = "PVTF_lAHOBryib84BJnlJzg5u-5g"
$targetDateFieldId = "PVTF_lAHOBryib84BJnlJzg5u_F8"

$todoOptionId = "f75ad846"
$inProgressOptionId = "47fc9ee4"
$doneOptionId = "98236657"

# Define updates mapping (Title -> {Status, Start, Target})
$updates = @{
    "[FR001] Public Website Structure" = @{status=$doneOptionId; start="2025-11-01"; target="2025-11-15"};
    "[FR002] Theme Toggle" = @{status=$doneOptionId; start="2025-11-05"; target="2025-11-10"};
    "[FR003] Hero Section" = @{status=$doneOptionId; start="2025-11-10"; target="2025-11-20"};
    "[FR013] JohnGPT - Core UI" = @{status=$doneOptionId; start="2025-11-15"; target="2025-11-30"};
    "[FR014] JohnGPT - Multi-Engine" = @{status=$doneOptionId; start="2025-11-20"; target="2025-12-01"};
    "[FR017] JohnGPT - Personas" = @{status=$doneOptionId; start="2025-11-25"; target="2025-12-05"};
    "[FR024] Admin - Auth" = @{status=$doneOptionId; start="2025-11-01"; target="2025-11-10"};
    "[FR025] Admin - Dashboard" = @{status=$doneOptionId; start="2025-11-10"; target="2025-11-25"};
    
    "Complete Database Migration to Neon" = @{status=$inProgressOptionId; start="2025-11-30"; target="2025-12-10"};
    "Implement Chat History & Persistence" = @{status=$inProgressOptionId; start="2025-12-01"; target="2025-12-15"};
    "[FR016] JohnGPT - Brand Voice" = @{status=$inProgressOptionId; start="2025-12-01"; target="2025-12-20"};
    
    "[FR034] Virality OS - YouTube Trends" = @{status=$todoOptionId; start="2026-01-01"; target="2026-01-15"};
    "[FR040] Course Builder" = @{status=$todoOptionId; start="2026-02-01"; target="2026-02-28"};
}

# Fetch items
Write-Host "Fetching items..."
$itemsJson = & "C:\Program Files\GitHub CLI\gh.exe" project item-list 3 --owner JStaRFilms --format json --limit 50
$items = $itemsJson | ConvertFrom-Json | Select-Object -ExpandProperty items

foreach ($item in $items) {
    if ($updates.ContainsKey($item.title)) {
        $update = $updates[$item.title]
        Write-Host "Updating '$($item.title)'..."
        
        # Update Status
        & "C:\Program Files\GitHub CLI\gh.exe" project item-edit --id $item.id --project-id $projectId --field-id $statusFieldId --single-select-option-id $update.status
        
        # Update Start Date
        if ($update.start) {
            & "C:\Program Files\GitHub CLI\gh.exe" project item-edit --id $item.id --project-id $projectId --field-id $startDateFieldId --date $update.start
        }
        
        # Update Target Date
        if ($update.target) {
            & "C:\Program Files\GitHub CLI\gh.exe" project item-edit --id $item.id --project-id $projectId --field-id $targetDateFieldId --date $update.target
        }
    }
}
Write-Host "Roadmap updated!"
