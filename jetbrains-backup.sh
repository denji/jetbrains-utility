#!/usr/bin/env bash
set -u
FILE=~/Desktop/JetBrains-$(date "+%Y%m%d-%H%M%S").tar.xz

if [ "`uname -s`" != "Darwin" ] ; then
    echo "Sorry, $(uname -s) is not supported yet."
    exit 1
fi

# Clear Application Saved States JetBrains
tar pf "$FILE" --append ~/Library/Saved\ Application\ State/com.jetbrains.* &>/dev/null
tar pf "$FILE" --append ~/Library/Preferences/jetbrains.* &>/dev/null
tar pf "$FILE" --append ~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jetbrains.* &>/dev/null
tar pf "$FILE" --append ~/Library/Application\ Support/CrashReporter/* &>/dev/null

# DataGrip (0xDBE10)
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/{DataGrip,0xDBE}{??,???,20??.*,-EAP} &>/dev/null

# AppCode
tar pf "$FILE" --append ~/Library/Preferences,Caches,Application\ Support,Logs/appCode{??,???,20??.*,-EAP} &>/dev/null

# CLion
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/clion{??,???,20??.*,-EAP} &>/dev/null

# Gogland
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/Gogland{?.?} &>/dev/null

# IntelliJ IDEA
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/IntelliJIdea{??,???,20??.*,-EAP} &>/dev/null

# IntelliJ IDEA Community Edition
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/IdeaIC{??,???,20??.*,-EAP} &>/dev/null

# PhpStorm
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/{PhpStorm,WebIde}{??,???,20??.*,-EAP} &>/dev/null

# PyCharm
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/PyCharm{??,???,20??.*,-EAP} &>/dev/null

# PyCharm Educational Edition
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/PyCharmEdu{??,???,20??.*,-EAP} &>/dev/null

# Rider
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/Rider{??,???,20??.*,-EAP} &>/dev/null

# RubyMine
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/RubyMine{??,???,20??.*,-EAP} &>/dev/null

# WebStorm
tar pf "$FILE" --append ~/Library/{Preferences,Caches,Application\ Support,Logs}/WebStorm{?,??,20??.*,-EAP} &>/dev/null

echo 'Check backup all data before deleting the product'
echo "The configuration backup is successfully created: $FILE (size: $(du -sh $FILE|cut -f1))"
# open -R $FILE
