
if($IsWindows){
    &"$PSScriptRoot/install/neovide/neovide.exe" `
    --neovim-bin "$PSScriptRoot/install/nvim/nvim-win64/bin/nvim.exe" `
    --multigrid
}
else{
    &"$PSScriptRoot/install/neovide/neovide.exe" `
    --neovim-bin "$PSScriptRoot/install/nvim/nvim-linux64/bin/nvim.exe" `
    --multigrid
}
