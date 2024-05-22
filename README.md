<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to setup your project on firebase.
* find SHA1 & SHA256
  ```sh
  keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore
  ```

copy the one of them and paste on firebase project settings


### Installation
1. Delete file firebase-option.dart 
2. If you haven't already, [install the Firebase CLI](https://firebase.google.com/docs/cli#setup_update_cli)
3. Log into Firebase using your Google account by running the following command:
   ```sh
   firebase login
   ``
4. Install the FlutterFire CLI by running the following command from any directory:
   ```sh
   dart pub global activate flutterfire_cli
   ``
5. Use the FlutterFire CLI to configure your Flutter apps to connect to Firebase.
   From your Flutter project directory, run the following command to start the app configuration workflow:
   ```sh
    flutterfire configure
   ``
