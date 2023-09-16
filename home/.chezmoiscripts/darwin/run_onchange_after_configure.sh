#!/bin/bash

set -eufo pipefail

# https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# Close any open System Preferences panes, to prevent them from overriding settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

sudo nvram SystemAudioVolume=" "

defaults write NSAutomaticWindowAnimationsEnabled -bool false # opening/closing windows/popovers
defaults write NSGlobalDomain AppleInterfaceStyle Dark
defaults write NSGlobalDomain AppleLanguages -array en-US
defaults write NSGlobalDomain AppleLocale en_US
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write NSGlobalDomain NSUserDictionaryReplacementItems -array
defaults write NSGlobalDomain WebAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
defaults write NSScrollViewRubberbanding -int 0
defaults write com.apple.Accessibility ReduceMotionEnabled -int 1
defaults write com.apple.CrashReporter DialogType none
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.appleseed.FeedbackAssistant Autogather -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock launchanim -bool false
defaults write com.apple.dock mineffect scale
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock orientation bottom
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.finder "AppleShowAllFiles" -bool "false"
defaults write com.apple.finder FXPreferredViewStyle clmv
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.screencapture "disable-shadow" -bool "false"
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false
killall Dock
killall Finder

launchctl setenv KITTY_CONFIG_DIRECTORY $HOME/kitty/
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2>/dev/null
