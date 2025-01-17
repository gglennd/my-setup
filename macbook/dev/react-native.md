## Setup Android Emulator without Android Studio MacOS

1. Install android-commandlinetools using Homebrew

```bash
brew install --cask android-commandlinetools
```

2. Set Up Environment Variables

```toml
# https://reactnative.dev/docs/set-up-your-environment
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

# Set Android SDK root (adjust if needed)
export ANDROID_HOME=/opt/homebrew/share/android-commandlinetools
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
```

3. Download Required System Images

```bash
sdkmanager "platform-tools" "emulator" "platforms;android-34" "system-images;android-34;google_apis_playstore;arm64-v8a
```

4. Create an AVD

```bash
avdmanager create avd -n Pixel_6_Pro_API_34_PlayStore_ARM -k "system-images;android-34;google_apis_playstore;arm64-v8a" --device "pixel_6_pro"
```

5. List available AVD's

```bash
avdmanager list avd
```

6. Run the Emulator

```bash
emulator -avd Pixel_6_Pro_API_34_PlayStore_ARM -gpu on -skin 1440x3120
```

7. Remove Unused AVDs

```bash
# List AVDs
avdmanager list avd

# Remove Unused AVDs
avdmanager delete avd -n Pixel_6_Pro_API_34
avdmanager delete avd -n Pixel_6_Pro_API_34_PlayStore
```

[complete tutorial](https://dev.to/mochafreddo/setting-up-and-managing-android-emulators-on-macos-with-homebrew-3fg0)
