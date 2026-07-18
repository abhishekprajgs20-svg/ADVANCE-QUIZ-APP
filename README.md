# ADVANCE QUIZ APP 📱

This repository contains a fully configured, production-ready **Android WebView Project** wrapping the mobile-responsive **Quiz Bot Simulator** web application. 

The app features deep hardware acceleration, immersive fullscreen UI, offline asset support, Android back-button navigation integration, and file chooser permissions so you can upload custom settings/wallpapers directly from the app interface.

---

## Complete Layman's Step-by-Step Guide to Build & Upload the App

Follow these detailed steps to run, test, compile, and upload your app to the Google Play Store.

### Step 1: Run the Asset Copy Script
An Android app loads its web pages from a special internal folder called `assets`.
1. Open the project folder `QuizBotApp` on your computer.
2. Locate the file named `copy_assets.ps1` (it has a blue icon or says "PowerShell Script").
3. Right-click on it and choose **Run with PowerShell**.
4. A console window will pop up, copy the HTML file to the assets folder, and print a success message. Press **Enter** on your keyboard to close it.

---

### Step 2: Install Android Studio (The Official App Compiler)
To convert code files into a real Android application, you need Google’s free app-making software.
1. Download Android Studio from the official developer site: **[developer.android.com/studio](https://developer.android.com/studio)**.
2. Once downloaded, double-click the installer file to run it.
3. Click **Next** on all prompts, keeping the default settings, and click **Finish** to complete the installation.
4. Launch Android Studio. If it asks to download initial configurations or SDK packages, allow it to proceed.

---

### Step 3: Import Project into Android Studio
1. On the Android Studio welcome screen, click **Open** (or select **File > Open** from the top menu).
2. Browse your computer to find this project directory: `D:\UNIGRAM\QuizBotApp`.
3. Select the `QuizBotApp` folder and click **OK**.
4. Android Studio will open the project. Look at the bottom-right corner of the window—you will see a loading bar labeled "Gradle Syncing/Indexing". 
5. **Wait 2 to 5 minutes** for the download to finish. Do not modify files while it compiles the initial indices.

---

### Step 4: Test the App on a Physical Android Phone
Before uploading your app to the public Play Store, you must test it on your personal device.

#### A. Turn on Developer Mode on Your Phone:
1. Open your Android phone's **Settings** app.
2. Scroll to the bottom and tap **About Phone** (or **About Device**).
3. Look for **Build Number** (sometimes inside a sub-menu like "Software Information").
4. Tap the **Build Number** row **7 times** quickly. A toast message will pop up saying: *"Developer Mode is now active!"*
5. Go back to your main Settings screen, open the newly appeared **Developer Options** menu, scroll down, and turn on **USB Debugging**.

#### B. Run the App:
1. Connect your Android phone to your PC using a USB cable.
2. If your phone asks: *"Allow USB debugging?"*, check "Always allow from this computer" and tap **Allow**.
3. In the top toolbar of Android Studio, make sure **your phone's model** is selected in the device dropdown list (instead of "No Devices" or "Simulator").
4. Click the green **Run (Play)** button.
5. Android Studio will build the app and launch it directly on your phone screen! You can now verify that the responsive side menu drawer, stats bar, and button taps work smoothly.

---

### Step 5: Generate a Signed App Bundle (.aab)
To upload an app to Google Play Store, it must be compiled into a secure package called an **Android App Bundle (.aab)** and signed with your personal developer credentials.

1. In Android Studio's top menu bar, click **Build > Generate Signed Bundle / APK...**.
2. Select **Android App Bundle** and click **Next**.
3. Under **Key store path**, click **Create new...** to create your app's digital key file.
   * **Key store path**: Click the folder icon, choose a folder (e.g. `D:\UNIGRAM\`), and type a name like `quizbot-key.jks`.
   * **Password**: Create a secure password (make sure to write it down!).
   * **Alias**: Keep it as `key0`.
   * **Password (under Alias)**: Use the same password.
   * **Validity**: Leave it as 25 years.
   * **First and Last Name**: Enter your name.
   * Click **OK**.
4. Click **Next** on the wizard.
5. Set Build Variant to **release** and click **Create** (or **Finish**).
6. Android Studio will start compiling your release package. Once completed, a notification bubble will appear on the bottom-right corner: *"Bundle(s) generated successfully."*
7. Click the **Locate** link inside the notification. This opens a folder containing a file named `app-release.aab`. **This file is what you will upload to Google!**

---

### Step 6: Upload to the Google Play Store
To put your app on Google Play, you need a Google Play Developer Account.

#### A. Set up Your Account:
1. Visit the **[Google Play Console](https://play.google.com/console/signup)**.
2. Sign in with your standard Google Account.
3. Pay the **$25 USD one-time registration fee** (Google charges this to verify your identity and prevent spam apps).
4. Verify your account by uploading a photo of a government ID (Passport, Voter Card, or Driving License).

#### B. Create the App Listing:
1. Click **Create App** at the top-right of your dashboard.
2. Enter your App Name: **Quiz Bot**.
3. Choose Language: **English**.
4. Select **App** (not Game) and set it to **Free**.
5. Check the declarations checkboxes and click **Create app**.

#### C. Create a Production Release:
1. On the left side navigation panel, scroll down to the **Release** section and select **Production**.
2. Click **Create new release** at the top right.
3. Under **App bundles**, click **Upload** and select the `app-release.aab` file located in Step 5.
4. Set Release Name to `1.0` and write a short description in the Release Notes.
5. Click **Save** at the bottom.

#### D. Complete Google App Content Surveys:
1. Go back to your App Dashboard and complete the required questionnaires under the **"Set up your app"** section:
   * **App Access**: Set to "All functionality is available without special access".
   * **Ads**: Set to "No, my app does not contain ads".
   * **Content Rating**: Answer a quick survey about your app categories (select "Utility/Education") to get your official age rating.
   * **Target Audience**: Select age target (e.g., 18 and over).
   * **Privacy Policy**: Enter a link to a privacy policy page (you can generate a free privacy policy online and host it for free on sites like Google Sites).
2. Under **Store Presence > Main Store Listing**:
   * Add a Short Description (e.g. *"Play gamified, interactive quiz bot simulator"*).
   * Add a Full Description.
   * Upload your App Icon (`512x512` pixels) and a Feature Graphic (`1024x500` pixels).
   * Upload 2 to 4 screenshots of the app running on your phone.
3. Go back to the **Production** tab, select **Edit Release**, click **Review Release**, and click **Start Rollout to Production**!