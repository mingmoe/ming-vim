
$DownloadFilePath = $args[0]
$DownloadUrl = $args[1]
$ExtractDir = $args[2]
$TarStripComponents = $args[3]

if(-not(Test-Path -PathType Leaf -Path $DownloadFilePath)){
    Invoke-WebRequest $DownloadUrl -OutFile $DownloadFilePath
}


if(-not(Test-Path -PathType Container -Path $ExtractDir)){
    if($IsWindows){
        Expand-Archive -DestinationPath $ExtractDir -Path $DownloadFilePath
    }
    else{
        tar -xf $DownloadFilePath "--strip-components=$TarStripComponents"
    }
}
