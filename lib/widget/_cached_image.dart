// import 'package:apptest_food/constants/image_constant.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_blurhash/flutter_blurhash.dart' as blurhash;
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:octo_image/octo_image.dart';
// import 'package:shimmer/shimmer.dart';

// import '_image_shimmer_widget.dart';

// class CachedImage extends StatelessWidget {
//   final String url;
//   final String? defaultUrl;
//   final String? blurHash;
//   final double? width;
//   final double? height;
//   final BoxFit? fit;
//   final String? token;
//   final ShimmerDirection shimmerDirection;
//   final Duration shimmerDuration;
//   final Color? shimmerBaseColor;
//   final Color? shimmerHighlightColor;
//   final Color? shimmerBackColor;
//   final Widget? errorWidget;
//   final BoxDecoration? boxDecoration;
//   final double radius;

//   const CachedImage(
//     this.url, {
//     this.defaultUrl,
//     this.blurHash,
//     this.width = 300,
//     this.height = 300,
//     this.fit = BoxFit.fill,
//     this.token,
//     this.shimmerDirection = ShimmerDirection.ltr,
//     this.shimmerDuration = const Duration(milliseconds: 1500),
//     this.shimmerBaseColor,
//     this.shimmerHighlightColor,
//     this.shimmerBackColor,
//     this.errorWidget,
//     this.boxDecoration,
//     this.radius = 0,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // AppUtil.checkMemory();
//     return OctoImage(
//         image: CachedNetworkImageProvider(url),
//         height: height,
//         width: width,
//         fit: fit ?? BoxFit.cover,
//         // placeholderBuilder:
//         //     OctoPlaceholder.blurHash('LKO2?U%2Tw=w]~RBVZRi};RPxuwH'),
//         errorBuilder: (context, error, stackTrace) => Container(
//               width: width,
//               height: height,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(radius),
//                 image: DecorationImage(
//                   image: ResizeImage(
//                     AssetImage(defaultUrl ?? ImageConstant.emptyImage),
//                     width: width?.toInt(),
//                     height: height?.toInt(),
//                   ),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ));
//     //     CachedNetworkImage(
//     //   colorBlendMode: BlendMode.clear,
//     //   width: width,
//     //   height: height,
//     //   memCacheWidth: width?.toInt(),
//     //   memCacheHeight: height?.toInt(),
//     //   maxWidthDiskCache: 1000,
//     //   maxHeightDiskCache: 1000,
//     //   fit: fit,
//     //   imageUrl: url,
//     //   httpHeaders: {
//     //     'Authorization': token ?? '',
//     //   },
//     //   imageBuilder: (context, imageProvider) => Container(
//     //     width: width,
//     //     height: height,
//     //     decoration: BoxDecoration(
//     //       color: ColorConstant.colorf1f1f1,
//     //       borderRadius: BorderRadius.circular(radius),
//     //       image: DecorationImage(
//     //         image: imageProvider,
//     //         fit: fit,
//     //       ),
//     //     ),
//     //   ),
//     //   placeholder: (context, url) {
//     //     if (blurHash != null && blurHash != '') {
//     //       return blurhash.BlurHash(
//     //           hash: blurHash ?? 'LKO2?U%2Tw=w]~RBVZRi};RPxuwH');
//     //     }
//     //     return Container(
//     //       width: width,
//     //       height: height,
//     //       decoration: BoxDecoration(
//     //         color: ColorConstant.colorf1f1f1,
//     //         borderRadius: BorderRadius.circular(radius),
//     //       ),
//     //       child: Center(
//     //         child: SpinKitCircle(color: ColorConstant.primary),
//     //       ),
//     //     );
//     //   },
//     //   errorWidget: (context, url, error) {
//     //     return Container(
//     //       width: width,
//     //       height: height,
//     //       decoration: BoxDecoration(
//     //         color: Colors.white,
//     //         borderRadius: BorderRadius.circular(radius),
//     //         image: DecorationImage(
//     //           image: ResizeImage(
//     //             AssetImage(defaultUrl ?? ImageConstant.emptyImage),
//     //             width: width?.toInt(),
//     //             height: height?.toInt(),
//     //           ),
//     //           fit: BoxFit.fill,
//     //         ),
//     //       ),
//     //     );
//     //   },
//     // );
//   }
// }
