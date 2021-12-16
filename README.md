# world_time_beautiful

CYBR8470 Secure Web App Development

Bob Wilmes
December 16, 2021

## Introduction

This app is based on the later chapters of the Youtube video series
"Flutter for Beginners" which has had over 5 million views since 2019.

As I was learning Flutter and Dart together to create this project it
took me hours to laboriously type this code and clean up the modern
Flutter 2.2 features to enable this to run.

It is based on 35 Youtube videos: Flutter Tutorial for Beginners which
does not currently run after Flutter changed the mechanism to handle null
arguments and async code. This required about 200 man hours to manually type
and research each change. 

Flutter Tutorial for Beginners
https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ

I used a Google Pixel 3 Android phone, running Android 12 (dated Oct 5 2021)
for testing, and Ubuntu 20.04 AndroidStudio (Artic Fox) 2020.3.1 Patch 2
for development.

In the "screens" folder are snapshots of the app.
1. There is a 'Loading' spinner which appears briefly while information
   is initially loaded from the WorldTimeAPI web
2. Phoenix.png shows the initial location and current time
3. Touch the edit icon to see the "Locations" screen
4. Choose a location by touching a flag and the app returns to the main screen
5. The background art for the main screen changes depending on day or night
   at the choosen timezone

This app demonstrates the use of an asynchronous HTTP web service call
to the WorldTimeAPI.org web service to get the current GMT time and GMT offset
to the timezone chosen. It also demonstrates navigation between three screens:
Loading, Home and Choose_Location. Android uses a complex async futures mechanism
to assure that information is passed between screens as a Map.

The project is configured with a Pixel 3 emulator to run on AndroidStudio.


## Flutter Doctor

[✓] Flutter (Channel stable, 2.8.0, on Ubuntu 20.04.3 LTS 5.11.0-41-generic,
locale en_US.UTF-8)
• Flutter version 2.8.0 at /home/bobwilmes/snap/flutter/common/flutter
• Upstream repository https://github.com/flutter/flutter.git
• Framework revision cf44000065 (7 days ago), 2021-12-08 14:06:50 -0800
• Engine revision 40a99c5951
• Dart version 2.15.0

[✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
• Android SDK at /home/bobwilmes/Android/Sdk
• Platform android-32, build-tools 31.0.0
• Java binary at: /snap/android-studio/current/android-studio/jre/bin/java
• Java version OpenJDK Runtime Environment (build 11.0.10+0-b96-7249189)
• All Android licenses accepted.

[✓] Chrome - develop for the web
• Chrome at google-chrome

[✓] Linux toolchain - develop for Linux desktop
• clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)
• cmake version 3.10.2
• ninja version 1.8.2
• pkg-config version 0.29.1

[✓] Android Studio (version 2020.3)
• Android Studio at /snap/android-studio/115/android-studio
• Flutter plugin version 63.2.1
• Dart plugin version 203.8452
• Java version OpenJDK Runtime Environment (build 11.0.10+0-b96-7249189)

[✓] Android Studio
• Android Studio at /snap/android-studio/current/android-studio
• Flutter plugin can be installed from:
🔨 https://plugins.jetbrains.com/plugin/9212-flutter
• Dart plugin can be installed from:
🔨 https://plugins.jetbrains.com/plugin/6351-dart
• android-studio-dir = /snap/android-studio/current/android-studio
• Java version OpenJDK Runtime Environment (build 11.0.10+0-b96-7249189)

[✓] VS Code
• VS Code at /snap/code/current
• Flutter extension version 3.29.0

[✓] Connected device (3 available)
• Pixel 3 (mobile) • 96WX22M8V • android-arm64  • Android 12 (API 31)
• Linux (desktop)  • linux     • linux-x64      • Ubuntu 20.04.3 LTS
5.11.0-41-generic
• Chrome (web)     • chrome    • web-javascript • Google Chrome 96.0.4664.93

• No issues found!
