// import 'dart:io';

// import 'package:apptest_food/constants/admod_key.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// class AdHelper {
//   static AdHelper instance = AdHelper();

//   static AdHelper getInstance() {
//     return instance;
//   }

//   static bool isShowInterstitial = false;
//   final Duration maxCacheDuration = const Duration(hours: 4);
//   AppOpenAd? _appOpenAd;

//   bool get isAdAvailable {
//     return _appOpenAd != null;
//   }

//   String get bannerAdUnitId {
//     if (Platform.isAndroid) {
//       return ADMOB_BANNER_ID_ANDROID;
//     } else if (Platform.isIOS) {
//       return ADMOB_BANNER_ID_IOS;
//     }
//     throw UnsupportedError("Unsupported platform");
//   }

//   String get interstitialAdUnitId {
//     if (Platform.isAndroid) {
//       return ADMOB_INTERSTITIAL_ID_ANDROID;
//     } else if (Platform.isIOS) {
//       return ADMOB_INTERSTITIAL_ID_IOS;
//     }
//     throw UnsupportedError("Unsupported platform");
//   }

//   void showInterstitialAd() {
//     InterstitialAd.load(
//         adUnitId: interstitialAdUnitId,
//         request: const AdRequest(),
//         adLoadCallback: InterstitialAdLoadCallback(
//           onAdLoaded: (InterstitialAd ad) {
//             ad.fullScreenContentCallback = FullScreenContentCallback(
//               onAdShowedFullScreenContent: (InterstitialAd ad) =>
//                   print('%ad onAdShowedFullScreenContent.'),
//               onAdDismissedFullScreenContent: (InterstitialAd ad) {
//                 print('$ad onAdDismissedFullScreenContent.');
//                 isShowInterstitial = false;
//                 ad.dispose();
//               },
//               onAdFailedToShowFullScreenContent:
//                   (InterstitialAd ad, AdError error) {
//                 print('$ad onAdFailedToShowFullScreenContent: $error');
//                 isShowInterstitial = false;
//                 ad.dispose();
//               },
//               onAdImpression: (InterstitialAd ad) =>
//                   print('$ad impression occurred.'),
//             );
//             ad.show();
//           },
//           onAdFailedToLoad: (LoadAdError error) {
//             print('InterstitialAd failed to load: $error');
//             isShowInterstitial = false;
//           },
//         ));
//   }
// }
