# Installation Guide - GitHub Direct Usage

## 🚀 Quick Installation

### From GitHub Repository

```bash
# Install directly from GitHub
npm install git+https://github.com/tan4194/react-native-ultimate-config.git

# Or with yarn
yarn add git+https://github.com/tan4194/react-native-ultimate-config.git
```

### From package.json

Add this to your `package.json`:

```json
{
  "dependencies": {
    "react-native-ultimate-config": "git+https://github.com/tan4194/react-native-ultimate-config.git"
  }
}
```

Then run:
```bash
npm install
# or
yarn install
```

## 📋 Setup Steps

### 1. Install the package
```bash
npm install git+https://github.com/tan4194/react-native-ultimate-config.git
```

### 2. Setup native projects (one-time only)
Follow the [quickstart guide](./docs/quickstart.md) to configure your iOS and Android projects.

### 3. Create environment file
Create a `.env` file in your project root:
```env
API_URL=https://api.example.com
APP_NAME=MyApp
BUNDLE_ID=com.example.myapp
```

### 4. Generate native config
```bash
npm run rnuc .env
```

### 5. Build your app
```bash
# iOS
react-native run-ios

# Android
react-native run-android
```

## 🔧 Usage Examples

### JavaScript
```javascript
import Config from 'react-native-ultimate-config';

console.log(Config.API_URL); // https://api.example.com
console.log(Config.APP_NAME); // MyApp
```

### Native Code (iOS - Objective-C)
```objc
#import "UltimateConfig.h"

NSString *apiUrl = [UltimateConfig API_URL];
NSString *appName = [UltimateConfig APP_NAME];
```

### Native Code (Android - Java)
```java
import com.maxkomarychev.rnultimateconfig.UltimateConfig;

String apiUrl = UltimateConfig.API_URL;
String appName = UltimateConfig.APP_NAME;
```

## 🛠️ Available Scripts

After installation, you can use these npm scripts:

- `npm run rnuc <env-file>` - Generate native config from environment file
- `npm test` - Run tests
- `npm run example:ios` - Run iOS example
- `npm run example:android` - Run Android example

## 🔄 Updating

To update to the latest version from GitHub:

```bash
npm update react-native-ultimate-config
# or
yarn upgrade react-native-ultimate-config
```

After updating, regenerate your config:
```bash
npm run rnuc .env
```

## 🐛 Troubleshooting

### Common Issues

1. **"Command not found: rnuc"**
   - Make sure you've installed the package correctly
   - Try running `npm run rnuc` instead of `rnuc` directly

2. **Native build errors**
   - Run `npm run rnuc .env` to regenerate config files
   - Clean and rebuild your project

3. **iOS build issues**
   - Run `cd ios && pod install` to install CocoaPods dependencies

4. **Android build issues**
   - Clean Android build: `cd android && ./gradlew clean`

### Getting Help

- Check the [troubleshooting guide](./docs/troubleshooting.md)
- Review the [API documentation](./docs/api.md)
- Look at the [cookbook](./docs/cookbook.md) for common use cases

## 📚 Additional Resources

- [API Documentation](./docs/api.md)
- [Quickstart Guide](./docs/quickstart.md)
- [Cookbook](./docs/cookbook.md)
- [Troubleshooting](./docs/troubleshooting.md)
- [Contributor Notes](./docs/contributor-notes.md) 