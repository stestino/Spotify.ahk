#Include %A_ScriptDir%
#Include Spotify.ahk
global VolumePercentage
global ShuffleMode
global RepeatMode := 0
spoofy := new Spotify
VolumePercentage := spoofy.Player.GetCurrentPlaybackInfo().Device.Volume
return

; Volume Mute 
<+Left::
  VolumePercentage := 0
spoofy.Player.SetVolume(VolumePercentage) ; Increment the volume percentage and set the player to the new volume percentage
return 

; Volume Max
<+Right::
  VolumePercentage := 100
spoofy.Player.SetVolume(VolumePercentage) ; Increment the volume percentage and set the player to the new volume percentage
return 

; Volume up 5%
<+Up::
  VolumePercentage := VolumePercentage + 5
spoofy.Player.SetVolume(VolumePercentage) ; Increment the volume percentage and set the player to the new volume percentage
return 

; Volume down 5%
<+Down::
if(VolumePercentage - 1 > 0)
  VolumePercentage := VolumePercentage - 5
spoofy.Player.SetVolume(VolumePercentage) ; Decrement the volume percentage and set the player to the new volume percentage
return



