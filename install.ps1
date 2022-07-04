# Install nvim && neovide

$NvimFilePath = "$PSScriptRoot/download/nvim.zip"
$NvimDir = "$PSScriptRoot/install/nvim"

$NeovideFilePath = "$PSScriptRoot/download/neovide.zip"
$NeovideDir = "$PSScriptRoot/install/neovide"

if($IsWindows){
    $neovideUrl = "https://github.com/neovide/neovide/releases/download/0.9.0/neovide-windows.zip"
    $nvimUrl = "https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-win64.zip"
}elseif($IsLinux){
    $neovideUrl = "https://github.com/neovide/neovide/releases/download/0.9.0/neovide.tar.gz"
    $nvimUrl = "https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz"
}
else{
    Write-Error "the os isn't supported"
}

if(-not(Test-Path -PathType Container -Path "$PSScriptRoot/download")){
    New-Item -Path "$PSScriptRoot/download" -ItemType Directory
}

&"$PSScriptRoot/scripts/download.ps1" $NvimFilePath $nvimUrl $NvimDir 0
&"$PSScriptRoot/scripts/download.ps1" $NeovideFilePath $neovideUrl $NeovideDir 2
