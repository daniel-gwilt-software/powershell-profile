
set-location $HOME\projects

Import-Module posh-git
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true

# Spoof terminal environment for git color.
$env:TERM = 'cygwin'

# Set Environment Variables
$env:HOME = $env:USERPROFILE
$env:HOMEDRIVE = "C:"
$env:HOMEPATH = "\Users\"+ $env:USERNAME +"\"

## Daniel Gwilt's Profile Settings ##
New-Alias ll ls
New-Alias tsc $HOME\AppData\Roaming\npm\tsc.cmd
New-Alias karma $HOME\AppData\Roaming\npm\karma.cmd
New-Alias jasmine $HOME\AppData\Roaming\npm\jasmine-ts.cmd
New-Alias ng $HOME\AppData\Roaming\npm\ng.cmd
New-Alias pm2 $HOME\AppData\Roaming\npm\pm2.cmd
New-Alias pm2-dev $HOME\AppData\Roaming\npm\pm2-dev.cmd
New-Alias pm2-docker $HOME\AppData\Roaming\npm\pm2-docker.cmd
New-Alias pm2-runtime $HOME\AppData\Roaming\npm\pm2-runtime.cmd
New-Alias sass $HOME\AppData\Roaming\npm\sass.cmd
New-Alias install-local $HOME\AppData\Roaming\npm\install-local.cmd
New-Alias python2 C:\Python27\python.exe
New-Alias python3 "C:\Program Files\Python36\python.exe"
New-Alias pip3 "C:\Program Files\Python36\Scripts\pip.exe"
New-Alias gremlin Start-Gremlin-CLI

function Start-Gremlin-CLI {
    Start-Process -NoNewWindow `
        -WorkingDirectory "$HOMEDRIVE\Program Files\apache-tinkerpop-gremlin-console\bin" `
        -FilePath "$HOMEDRIVE\Program Files\apache-tinkerpop-gremlin-console\bin\gremlin.bat"
}

## Color Theme ##
[console]::ForegroundColor = "Green"
[console]::BackgroundColor = "Black"

#Clear-Host