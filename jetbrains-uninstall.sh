#!/usr/bin/env bash
set -x

if [ "$(uname -s)" != "Darwin" ] ; then
    echo "Sorry, $(uname -s) is not supported yet."
    exit 1
fi

# Clear Application Saved States JetBrains
rm -rfv ~/Library/Saved\ Application\ State/com.jetbrains.*
rm -fv ~/Library/Preferences/jetbrains.*
rm -fv ~/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jetbrains.*
# rm -fv ~/Library/Application\ Support/CrashReporter/*

# DataGrip (0xDBE10)
rm -rfv ~/Library/Preferences/{DataGrip,0xDBE}{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/{DataGrip,0xDBE}{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/{DataGrip,0xDBE}{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/{DataGrip,0xDBE}{??,???,20??.*,-EAP}

# AppCode
rm -rfv ~/Library/Preferences/appCode{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/appCode{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/appCode{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/appCode{??,???,20??.*,-EAP}

# CLion
rm -rfv ~/Library/Preferences/{c,C}{l,L}ion{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/{c,C}{l,L}ion{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/{c,C}{l,L}ion{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/{c,C}{l,L}ion{??,???,20??.*,-EAP}

# GoLand
rm -rfv ~/Library/Preferences/Go{gl,L}and{?.?}
rm -rfv ~/Library/Caches/Go{gl,L}and{?.?}
rm -rfv ~/Library/Application\ Support/Go{gl,L}and{?.?}
rm -rfv ~/Library/Logs/Go{gl,L}and{?.?}

# IntelliJ IDEA
rm -rfv ~/Library/Preferences/IntelliJIdea{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/IntelliJIdea{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/IntelliJIdea{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/IntelliJIdea{??,???,20??.*,-EAP}

# IntelliJ IDEA Community Edition
rm -fv /usr/local/bin/idea
rm -rfv ~/Library/Preferences/IdeaIC{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/IdeaIC{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/IdeaIC{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/IdeaIC{??,???,20??.*,-EAP}

# PhpStorm
rm -fv /usr/local/bin/pstorm
rm -rfv ~/Library/Preferences/{PhpStorm,WebIde}{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/{PhpStorm,WebIde}{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/{PhpStorm,WebIde}{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/{PhpStorm,WebIde}{??,???,20??.*,-EAP}

# PyCharm
rm -fv /usr/local/bin/charm
rm -rfv ~/Library/Preferences/PyCharm{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/PyCharm{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/PyCharm{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/PyCharm{??,???,20??.*,-EAP}

# PyCharm Educational Edition
rm -rfv ~/Library/Preferences/PyCharmEdu{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/PyCharmEdu{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/PyCharmEdu{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/PyCharmEdu{??,???,20??.*,-EAP}

# Rider
rm -fv /usr/local/bin/rider
rm -rfv ~/Library/Preferences/Rider{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/Rider{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/Rider{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/Rider{??,???,20??.*,-EAP}

# RubyMine
rm -fv /usr/local/bin/mine
rm -rfv ~/Library/Preferences/RubyMine{??,???,20??.*,-EAP}
rm -rfv ~/Library/Caches/RubyMine{??,???,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/RubyMine{??,???,20??.*,-EAP}
rm -rfv ~/Library/Logs/RubyMine{??,???,20??.*,-EAP}

# WebStorm
rm -fv /usr/local/bin/wstorm
rm -rfv ~/Library/Preferences/WebStorm{?,??,20??.*,-EAP}
rm -rfv ~/Library/Caches/WebStorm{?,??,20??.*,-EAP}
rm -rfv ~/Library/Application\ Support/WebStorm{?,??,20??.*,-EAP}
rm -rfv ~/Library/Logs/WebStorm{?,??,20??.*,-EAP}
