# currentlyPlaying

## Usage

Usage:	osascript path/to/currentlyPlaying.scpt

```
	osascript path/to/currentlyPlaying.scpt /path/to/my/image.tiff
```

The script will return the currently playing track(s) in iTunes
and / or Spotify in the format:
	song by artist

In the rare case that both programs will be playing (for example
iTunes is streaming to an Airport Express while Spotify is
playing locally) the output will be multiline:
	song by artist (Spotify)
	song by artist (iTunes)

When nothing is playing, or when the players are paused, an empty
string will be returned.

In addition to returning information on the currently playing
track, the script will also store the album artwork in a file. By
default this is ~/albumArt.tiff, but by specifying an argument
you are able to change this default path.

When nothing is playing, or a track does not have any artwork
associated to it, the album artwork wil be set to a 1x1 transparent
pixel.

The script is optimized to only update the artwork when the track
has changed. To accomplish this it uses a temporary cache file in
/tmp/albumArt.txt which contains the id of the current track or
the player state.

## Skype Mood Message
In addition, the script will update your skype's mood message (if it is running) with the song information:

![skype](https://dl.dropboxusercontent.com/s/fscgwlwo40uwmkn/screenshot-skype.png?token_hash=AAGS2Lx2OHKHqe79pxaHr6F8ID5J0XkjyZ5j1pRHnlOPhw&dl=1)

## Geek Tool
This script is particularly useful when combined and used with
Geektool. You could create a script 'geeklet', executing the
curentlyPlaying script every 10 seconds to print the currently
playing track(s):

```
	osascript path/to/currentlyPlaying.scpt
```

![screenshot](https://dl.dropboxusercontent.com/s/ot7ieemju2zsej8/currently%20playing%20-%20geektools.png?token_hash=AAHrTcVEaWBs2vc68QewWij4Qa5oyn0U7sBPGik6fHYHQQ&dl=1)

You could then create an image 'geeklet', reading the image file
from ~/albumArt.tiff (or: /Users/yourname/albumArt.tiff) every
10 seconds.

You can tweak the time, but at the moment I don't see any
performance issues with the 10 second interval and the updates
seem quite responsive to the changing of the tracks as it now
only has a 10 second delay (at max).

# Copyright
   Copyright 2011 Jeroen Wesbeek

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
