# Spotify.ahk

Disclaimer: Some features of Spotify.ahk will not work for non-premium users, this is not a limition of Spotify.ahk, but a limit in Spotify's Connect Web API as stated in its documentation.
```
Note:
  With Connect Web API you can only control Spotify Premium users’ playback.
``` 

An AutoHotkey wrapper for the Spotify web API designed to allow control over Spotify's internal volume slider and provide various other functionality.

Uses a slightly modified version of the [AHKhttp library by zhamlin](https://github.com/zhamlin/AHKhttp), the [AHKsock library by jleb](https://github.com/jleb/AHKsock) and the [Crypt library by Deo](https://autohotkey.com/board/topic/67155-ahk-l-crypt-ahk-cryptography-class-encryption-hashing/)

### Documentation can now be found [here](https://cloakersmoker.github.io/Spotify.ahk/index.html), however it is not complete.

#### How to use
Create a new Spotify object, and call methods from the various nested classes. Examples can been seen in the Example Hotkeys file and throughout the documentation.

When you create a new Spotify object for the first time, a Spotify app authorization page will open in your default browser, and you will be prompted to authorize `Spotify.ahk`.
While you can choose not to authorize Spotify.ahk, all functionality will be lost without valid authorization. 

You will only rarely need to do web authorization thanks to Spotify's refreshable user authorization.

# Personalization Changes 

#### Spotify.AHK
1. Limited the OAUTH request scope.
2. Modified spotify.ahk to not popup/annoy when token refresh fails. Instead, it now silently sleeps and retries.
3. Replaced API auth, using an app under my own account.
4. Replaced plain-text base64 auth with secret stored in environment variable.

#### Playlist Controls
Implemented a set of playlist controls to my own personal preference.

| Key Combo  | Action |
| ------------- | ------------- |
| Volume increase by 5% | LShift + Up |
| Volume increase by 5% | LShift + Down |
| Volume MUTE | LShift + Left |
| Volume MAX  | LShift + Right |
| Next Track | LCtrl + Right |
| Last Track | LCtrl + Left |

## Future Changes / Wishlist
1. Playlist selection 
2. Re-implement shuffle

