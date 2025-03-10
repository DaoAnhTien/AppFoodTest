// import 'package:flutter/material.dart';
// import 'package:apptest_food/constants/image_constant.dart';
// import 'package:apptest_food/helpers/extension/responsive.dart';
// import 'package:apptest_food/page/home/home_controller.dart';
// import 'package:apptest_food/style/app_style.dart';
// import 'package:apptest_food/widget/button_with_icon.dart';
// import 'package:get/get.dart';

// class BuildFilter extends GetView<HomeController> {
//   const BuildFilter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.all(30.w),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(16.sp),
//             topRight: Radius.circular(16.sp),
//           ),
//           color: Style.white,
//         ),
//         height: Get.height,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Text(
//                 'Filter Search',
//                 style: Style().smallTextBold,
//               ),
//             ),
//             SizedBox(
//               height: 14.w,
//             ),
//             SizedBox(
//               height: 14.w,
//             ),
//             Obx(
//               () => Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Time",
//                         style: Style().smallTextBold,
//                       ),
//                       SizedBox(
//                         height: 10.h,
//                       ),
//                       Wrap(
//                           spacing: 4.0,
//                           children: List.generate(
//                               controller.listTime.length,
//                               (index) => GestureDetector(
//                                     onTap: () {
//                                       controller.timer.value = index;
//                                     },
//                                     child: Container(
//                                       margin: EdgeInsets.only(right: 10.w),
//                                       decoration: BoxDecoration(
//                                           color: controller.timer.value == index
//                                               ? Style.primary100
//                                               : Style.white,
//                                           border: Border.all(
//                                               color: Style.primary100),
//                                           borderRadius:
//                                               BorderRadius.circular(10.sp)),
//                                       padding: EdgeInsets.symmetric(
//                                           vertical: 8.h, horizontal: 13.w),
//                                       child: Text(
//                                         controller.listTime[index],
//                                         style: Style()
//                                             .smallerTextSemiBold
//                                             .copyWith(
//                                               color: controller.timer.value ==
//                                                       index
//                                                   ? Style.white
//                                                   : Style.primary100,
//                                             ),
//                                       ),
//                                     ),
//                                   ))),
//                       SizedBox(
//                         height: 20.w,
//                       ),
//                       Text(
//                         "Rate",
//                         style: Style().smallTextBold,
//                       ),
//                       SizedBox(
//                         height: 10.h,
//                       ),
//                       Wrap(
//                           spacing: 10,
//                           runSpacing: 10,
//                           children: List.generate(
//                               5,
//                               (index) => GestureDetector(
//                                     onTap: () {
//                                       controller.star.value = index;
//                                     },
//                                     child: Container(
//                                       width: 60.w,
//                                       decoration: BoxDecoration(
//                                           color: controller.star.value == index
//                                               ? Style.primary100
//                                               : Style.white,
//                                           border: Border.all(
//                                               color: Style.primary100),
//                                           borderRadius:
//                                               BorderRadius.circular(10.sp)),
//                                       padding: EdgeInsets.symmetric(
//                                           vertical: 8.h, horizontal: 10.w),
//                                       child: Row(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           Text(
//                                             '${index + 1}',
//                                             style: Style()
//                                                 .smallerTextSemiBold
//                                                 .copyWith(
//                                                   color:
//                                                       controller.star.value ==
//                                                               index
//                                                           ? Style.white
//                                                           : Style.primary100,
//                                                 ),
//                                           ),
//                                           SizedBox(
//                                             width: 5.w,
//                                           ),
//                                           Image.asset(
//                                             ImageConstant.icStart,
//                                             width: 18.w,
//                                             height: 18.h,
//                                             color:
//                                                 controller.star.value == index
//                                                     ? Style.white
//                                                     : Style.primary100,
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ))),
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                       Text(
//                         "Category",
//                         style: Style().smallTextBold,
//                       ),
//                       SizedBox(
//                         height: 10.h,
//                       ),
//                       Wrap(
//                           spacing: 10,
//                           runSpacing: 10,
//                           children: List.generate(
//                               controller.listCategory.length,
//                               (index) => GestureDetector(
//                                     onTap: () {
//                                       if (controller.chooseeCategory.contains(
//                                           controller.listCategory[index])) {
//                                         controller.chooseeCategory.remove(
//                                             controller.listCategory[index]);
//                                       } else {
//                                         controller.chooseeCategory.add(
//                                             controller.listCategory[index]);
//                                       }
//                                     },
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                           color: controller.chooseeCategory
//                                                   .contains(controller
//                                                       .listCategory[index])
//                                               ? Style.primary100
//                                               : Style.white,
//                                           border: Border.all(
//                                               color: Style.primary100),
//                                           borderRadius:
//                                               BorderRadius.circular(10.sp)),
//                                       padding: EdgeInsets.symmetric(
//                                           vertical: 8.h, horizontal: 13.w),
//                                       child: Text(
//                                         controller.listCategory[index],
//                                         style: Style()
//                                             .smallerTextSemiBold
//                                             .copyWith(
//                                                 color: controller
//                                                         .chooseeCategory
//                                                         .contains(controller
//                                                                 .listCategory[
//                                                             index])
//                                                     ? Colors.white
//                                                     : Style.primary100),
//                                       ),
//                                     ),
//                                   ))),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Center(child: buildbutton())
//           ],
//         ));
//   }

//   Widget buildbutton() {
//     return RadiusButton(
//         innerPadding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 100.w),
//         outsidePadding: EdgeInsets.symmetric(vertical: 10.w),
//         radius: 8.w,
//         text: 'Filter'.tr,
//         textColor: Colors.white,
//         onTap: () {
//           // controller.getProduct();
//           // Get.back();
//         });
//   }
// }
