
$apiKey = "ev5r66zkvqqjyev4ixh54ftv4sbh33julerwnzvzsoiztterhg6a"

$resource = "https://nswillard.visualstudio.com/TFSBuildTryOut/_apis/wit/workitems/ProductBacklogItem?api-version=1.0"

$body = @{

    op = "add"
    path = "TFSBuildTryOut\Sprint 1"
    value = ""


}

Invoke-RestMethod -Method Post -Uri "$resource\new" -Body (ConvertTo-Json $body) -Header @{"X-ApiKey"=$apiKey}