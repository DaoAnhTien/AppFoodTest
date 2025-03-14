// import 'dart:io' show Platform;

// import 'package:apptest_food/constants/admod_key.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// class AppOpenAdManager {
//   String adUnitId =
//       Platform.isAndroid ? ADMOB_APP_OPEN_ID_ANDROID : ADMOB_APP_OPEN_ID_IOS;

//   //String adUnitId = "ca-app-pub-3940256099942544/3419835294";

//   AppOpenAd? _appOpenAd;
//   bool _isShowingAd = false;

//   /// Whether an ad is available to be shown.
//   bool get isAdAvailable {
//     return _appOpenAd != null;
//   }

//   /// Load an AppOpenAd.
//   void loadAd() {
//     AppOpenAd.load(
//       adUnitId: adUnitId,
//       orientation: AppOpenAd.orientationPortrait,
//       request: const AdRequest(),
//       adLoadCallback: AppOpenAdLoadCallback(
//         onAdLoaded: (ad) {
//           _appOpenAd = ad;
//         },
//         onAdFailedToLoad: (error) {
//           print('AppOpenAd failed to load: $error');
//           // Handle the error.
//         },
//       ),
//     );
//   }

//   void showAdIfAvailable() {
//     // if (Paywall().checkPremium()) {
//     //   return;
//     // }

//     if (!isAdAvailable) {
//       print('Tried to show ad before available.');
//       loadAd();
//       return;
//     }
//     if (_isShowingAd) {
//       print('Tried to show ad while already showing an ad.');
//       return;
//     }
//     // Set the fullScreenContentCallback and show the ad.
//     _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
//       onAdShowedFullScreenContent: (ad) {
//         _isShowingAd = true;
//         print('$ad onAdShowedFullScreenContent');
//       },
//       onAdFailedToShowFullScreenContent: (ad, error) {
//         print('$ad onAdFailedToShowFullScreenContent: $error');
//         _isShowingAd = false;
//         ad.dispose();
//         _appOpenAd = null;
//       },
//       onAdDismissedFullScreenContent: (ad) {
//         print('$ad onAdDismissedFullScreenContent');
//         _isShowingAd = false;
//         ad.dispose();
//         _appOpenAd = null;
//         loadAd();
//       },
//     );
//     _appOpenAd!.show();
//   }
// }
