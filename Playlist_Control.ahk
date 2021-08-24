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
spoofy.Player.SetVolume(VolumePercentage)
return 

; Volume Max
<+Right::
  VolumePercentage := 100
spoofy.Player.SetVolume(VolumePercentage)
return 

; Volume up 5%
<+Up::
VolumePercentage := VolumePercentage + 5
if(VolumePercentage < 101)
{
  spoofy.Player.SetVolume(VolumePercentage)
}
else
{
  VolumePercentage := 100
}
return 

; Volume down 5%
<+Down::
if(VolumePercentage - 1 > 0)
  VolumePercentage := VolumePercentage - 5
spoofy.Player.SetVolume(VolumePercentage)
return

; Next Track
^!Right::
  spoofy.Player.NextTrack 
return

; Last Track
^!Left::
  spoofy.Player.LastTrack
return





