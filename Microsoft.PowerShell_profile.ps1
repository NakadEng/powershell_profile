function prompt {
    (Get-Host).UI.RawUI.WindowTitle = "Windows PowerShell " + $pwd
 
    $idx = $pwd.ProviderPath.LastIndexof("\") + 1
    $cdn = $pwd.ProviderPath.Remove(0, $idx)
    $env:UserName + "@" + $env:UserDomain + ":" + $cdn + "> "
 }
function admin {
    Start-Process powershell.exe -Verb runas
}

function ex (){
    explorer $args[0]
}

Set-Location ~\Documents\