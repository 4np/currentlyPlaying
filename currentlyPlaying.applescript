-- iTunes / Spotify track information
-- Copyright © 2012 Jeroen Wesbeek <work AT osx.eu>
--
-- on run this script
-- 1. returns the current track(s)
-- 2. writes the album artwork of the current
--    track(s). Note that iTunes artwork always
--    overrules other playing applications
-- 
-- For efficiency, checks are performed if the artwork
-- has changed. It writes a 1x1 transparent pixel is
-- there is no artwork, or if no songs are being played
-- or if the players are paused
--
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--  http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--
on run argv
	# configuration
	set useSkype to true
	
	# application variables
	set musicApplications to {"Spotify", "iTunes"}
	set tempFile to "/tmp/albumArt.txt"
	set tempMoodFile to "/tmp/skypeMood.txt"
	Äset spacer €ﬂÔto "GIF89a
!˘
D,
;"
	set info to ""
	set previousApp to ""
	set previousInfo to ""
	set clearArtwork to true
	
	# check if we have an argument
	try
		# use specified file
		set artworkFile to (item 1 of argv) as string as POSIX file as string
	on error
		# use ~/albumArt.tiff
		set artworkFile to ((path to home folder) as text) & "albumArt.tiff" as string
	end try
	
	# get the previous track
	try
		set lastTrack to read tempFile
	on error
		set lastTrack to ""
	end try
	
	# get all processes
	tell application "System Events"
		set myList to (name of every process)
	end tell
	
	# set debug var
	set debug to "lastTrack: " & lastTrack
	
	# iterate through music applications	
	repeat with musicApp in musicApplications
		# is this application running?
		if myList contains musicApp then
			# append debug value
			set debug to debug & "
" & musicApp
			
			# dynamically address music application
			using terms from application "iTunes"
				tell application musicApp
					set debug to debug & ":" & player state
					
					# check if music application is playing
					if player state is playing then
						set albumArtwork to null
						set currentTrack to (musicApp as string) & ":" & (id of current track as string)
						set debug to debug & "(" & currentTrack & ")"
						
						# application specific logic to fetch album art
						if musicApp as string is "iTunes" and (artworks of current track exists) then
							using terms from application "iTunes"
								set frontArtwork to front artwork of current track
								set albumArtwork to (data of frontArtwork)
							end using terms from
						else if musicApp as string is "Spotify" then
							using terms from application "Spotify"
								set albumArtwork to (artwork of current track)
							end using terms from
						end if
						
						set who to artist of current track
						set what to name of current track
						
						if who as string is "missing value" then
							set title to what
						else
							set title to what & " by " & who as string
						end if
						
						if info is "" then
							set info to title
							set previousInfo to info & " (" & musicApp & ")"
							set firstTrack to true
						else if firstTrack is true then
							set info to previousInfo & "
" & title & " (" & musicApp & ")"
							set firstTrack to false
						else
							set info to info & "
" & title & " (" & musicApp & ")"
							set firstTrack to false
						end if
						
						# check if the track has changed
						if (currentTrack is not lastTrack) then
							set debug to debug & ":write artwork"
							
							# write artwork to file
							set fileRef to (open for access artworkFile with write permission)
							try
								set eof fileRef to 0
								write albumArtwork to fileRef
							on error errorMessage
								set debug to debug & ":error=" & errorMessage
							end try
							close access fileRef
							
							# remember current track
							set fileRef to (open for access tempFile with write permission)
							try
								set eof fileRef to 0
								write currentTrack to fileRef
							on error errorMessage
								set debug to debug & ":error=" & errorMessage
							end try
							close access fileRef
							
							if albumArtwork is not null then
								set clearArtwork to false
							else
								set debug to debug & ":no artwork"
								set clearArtwork to true
							end if
						else
							set debug to debug & ":unchanged artwork"
							set clearArtwork to false
						end if
					end if
				end tell
			end using terms from
		end if
	end repeat
	
	# clear artwork?
	if clearArtwork is true and lastTrack is not "::cleared::" then
		# write 1x1 transparent pixel as artwork
		set fileRef to (open for access artworkFile with write permission)
		try
			set eof fileRef to 0
			write spacer to fileRef
			set debug to debug & "
cleared artwork by wroting an empty pixel as artwork"
		on error errorMsg
			do shell script "rm " & POSIX path of artworkFile
		end try
		close access fileRef
		
		# and remember that we already did this
		set fileRef to (open for access tempFile with write permission)
		try
			set eof fileRef to 0
			write "::cleared::" to fileRef
		on error errorMessage
			set debug to debug & ":error=" & errorMessage
		end try
		close access fileRef
		
	end if
	
	# uncomment to debug
	#return debug
	
	# is Skype running?
	if myList contains "Skype" and useSkype then
		tell application "Skype"
			# get current mood text from skype
			set skypeMood to send command "GET PROFILE MOOD_TEXT" script name "currentlyPlaying"
			set AppleScript's text item delimiters to "TEXT "
			set currentMood to text item 2 of skypeMood
			
			# does the old mood start with a music sign?
			#display dialog currentMood
			
			#display dialog length of currentMood
			
			if currentMood starts with "♬" or length of currentMood is less than 1 then
				# yes, fetch the old mood from the tempfile
				try
					set oldMood to read tempMoodFile
				on error
					set oldMood to ""
				end try
			else
				# no, set oldMood to currentMood
				set oldMood to currentMood
				
				# remember current mood
				set fileRef to (open for access tempMoodFile with write permission)
				try
					set eof fileRef to 0
					write currentMood to fileRef
				on error errorMessage
					set debug to debug & ":error=" & errorMessage
				end try
				close access fileRef
			end if
			
			# update mood text
			if length of info is less than 4 then
				send command "SET PROFILE MOOD_TEXT " & oldMood script name "currentlyPlaying"
			else
				send command "SET PROFILE MOOD_TEXT ♬ " & info script name "currentlyPlaying"
			end if
		end tell
	end if
	
	# return 'currently playing' information
	return info
end run
