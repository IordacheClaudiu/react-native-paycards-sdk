
# react-native-paycards-sdk

## Getting started

`$ npm install react-native-paycards-sdk --save`

### Mostly automatic installation

`$ react-native link react-native-paycards-sdk`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-paycards-sdk` and add `RNPaycardsSdk.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPaycardsSdk.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNPaycardsSdkPackage;` to the imports at the top of the file
  - Add `new RNPaycardsSdkPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-paycards-sdk'
  	project(':react-native-paycards-sdk').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-paycards-sdk/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-paycards-sdk')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNPaycardsSdk.sln` in `node_modules/react-native-paycards-sdk/windows/RNPaycardsSdk.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Paycards.Sdk.RNPaycardsSdk;` to the usings at the top of the file
  - Add `new RNPaycardsSdkPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNPaycardsSdk from 'react-native-paycards-sdk';

// TODO: What to do with the module?
RNPaycardsSdk;
```
  