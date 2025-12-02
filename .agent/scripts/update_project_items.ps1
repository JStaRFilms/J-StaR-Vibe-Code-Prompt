$projectOwner = "JStaRFilms"
$projectNumber = 1
$projectId = "PVT_kwHOBryib84BJnlJ"
$statusFieldId = "PVTSSF_lAHOBryib84A-Oc1zgxsZSo"
$todoOptionId = "f75ad846"

# Fetch items
Write-Host "Fetching items..."
$itemsJson = & "C:\Program Files\GitHub CLI\gh.exe" project item-list $projectNumber --owner $projectOwner --format json --limit 50
$items = $itemsJson | ConvertFrom-Json | Select-Object -ExpandProperty items

# Update each item
foreach ($item in $items) {
    $itemId = $item.id
    $title = $item.title
    Write-Host "Updating '$title' ($itemId) to Todo..."
    
    & "C:\Program Files\GitHub CLI\gh.exe" project item-edit --id $itemId --project-id $projectId --field-id $statusFieldId --single-select-option-id $todoOptionId
}

Write-Host "Done!"
