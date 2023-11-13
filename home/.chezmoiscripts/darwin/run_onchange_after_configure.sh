#!/bin/bash

set -eufo pipefail

# https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# Close any open System Preferences panes, to prevent them from overriding settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

sudo nvram SystemAudioVolume=" "

defaults write NSAutomaticWindowAnimationsEnabled -bool false                    # opening/closing windows/popovers
defaults write NSGlobalDomain AppleInterfaceStyle Dark                           # Set dark mode
defaults write NSGlobalDomain AppleLanguages -array en-US                        # Set language to English (US)
defaults write NSGlobalDomain AppleLocale en_US                                  # Set locale to en_US
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false               # Disables press-and-hold for keys in favor of a key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15                           # Initial key repeat delay, lower is faster
defaults write NSGlobalDomain KeyRepeat -int 2                                   # Key repeat speed, lower is faster
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false       # Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false   # Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false    # Disable smart quotes
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false   # Disable auto-correct
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false       # Disable text completion
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false     # Disable window animations
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false      # Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSUserDictionaryReplacementItems -array            # Empty array for user dictionary items
defaults write NSGlobalDomain WebAutomaticSpellingCorrectionEnabled -bool false  # Disable auto-correct in web forms
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false         # Disable natural (Lion-style) scrolling
defaults write NSScrollViewRubberbanding -int 0                                  # Disable rubber band scrolling
defaults write com.apple.Accessibility ReduceMotionEnabled -int 1                # Reduce motion effect
defaults write com.apple.CrashReporter DialogType none                           # Set crash reporter to log quietly
defaults write com.apple.LaunchServices LSQuarantine -bool false                 # Disable warning when changing file extension
defaults write com.apple.Safari IncludeDevelopMenu -bool true                    # Enable the Safari Developer Menu
defaults write com.apple.appleseed.FeedbackAssistant Autogather -bool false      # Disable auto gathering of feedback
defaults write com.apple.dashboard mcx-disabled -bool true                       # Disable Dashboard
defaults write com.apple.dock autohide -bool true                                # Automatically hide and show the Dock
defaults write com.apple.dock autohide-delay -float 10000                        # Set a long delay for dock auto-hide
defaults write com.apple.dock autohide-time-modifier -float 0                    # Remove animation when hiding/showing the Dock
defaults write com.apple.dock dashboard-in-overlay -bool true                    # Dashboard as overlay
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true # Enable spring loading for all Dock items
defaults write com.apple.dock expose-animation-duration -float 0                 # Speed up Mission Control animations
defaults write com.apple.dock expose-group-by-app -bool false                    # Don't group windows by app in Mission Control
defaults write com.apple.dock launchanim -bool false                             # Disable the launch animation
defaults write com.apple.dock mineffect scale                                    # Change minimization effect to scale
defaults write com.apple.dock minimize-to-application -bool true                 # Minimize windows into their application icon
defaults write com.apple.dock mouse-over-hilite-stack -bool false                # Remove highlight when hovering over stack
defaults write com.apple.dock mru-spaces -bool false                             # Don't rearrange Spaces based on most recent use
defaults write com.apple.dock orientation bottom                                 # Set Dock to appear at the bottom
defaults write com.apple.dock show-process-indicators -bool true                 # Show indicator lights for open apps in Dock
defaults write com.apple.dock show-recents -bool false                           # Don't show recent apps in Dock
defaults write com.apple.dock showhidden -bool true                              # Make Dock icons of hidden apps translucent
defaults write com.apple.dock static-only -bool true                             # Only show open apps in the Dock
defaults write com.apple.dock tilesize -int 1                                    # Set the Dock tile size to minimum
defaults write com.apple.finder QuitMenuItem -bool true                          # Enable 'Quit Finder' menu item
defaults write com.apple.dock show-recents -bool false                           # Don't show recent items in Dock
defaults write com.apple.finder AppleShowAllFiles -bool true                     # Show hidden files in Finder
defaults write com.apple.finder FXPreferredViewStyle clmv                        # Set the Finder view to column view
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true               # Show full path in Finder title
defaults write com.apple.screencapture disable-shadow -bool false                # Don't disable shadow in screenshots
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false  # Don't restore windows when quitting/reopening apps
killall Dock
killall Finder

launchctl setenv KITTY_CONFIG_DIRECTORY $HOME/.kitty/
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2>/dev/null
