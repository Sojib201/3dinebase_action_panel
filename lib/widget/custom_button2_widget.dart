// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../utils/styles.dart';
//
// class CustomButton2Widget extends StatelessWidget {
//   final String label;
//   final VoidCallback onTap;
//   final double? width;
//   final double? height;
//   final IconData? icon;
//   final Color? backgroundColor;
//   final Color? textColor;
//   final Color? iconColor;
//
//   const CustomButton2Widget({
//     Key? key,
//     required this.label,
//     required this.onTap,
//  this.width,
//   this.height,
//     this.icon,
//     this.backgroundColor,
//     this.textColor,
//     this.iconColor,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: width ??0.w,
//         height: height??0.h,
//         decoration: BoxDecoration(
//           color: backgroundColor ?? Utils.greenColor,
//           borderRadius: BorderRadius.circular(20.r),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 2,
//               spreadRadius: 0,
//               offset: Offset(2, 2),
//             ),
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 4,
//               spreadRadius: 0,
//               offset: Offset(-2, -1),
//             ),
//           ],
//         ),
//         // child: Row(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //   icon != null?
//         //       Padding(
//         //         padding: EdgeInsets.only(right: 8.w),
//         //         child: Icon(
//         //           icon,
//         //           color: iconColor ?? Utils.primaryColor,
//         //           size: 30.sp,
//         //         ),
//         //       ):Text(''),
//         //     Text(
//         //       label,
//         //       style: TextStyle(
//         //         fontWeight: FontWeight.bold,
//         //         fontSize: 28.sp,
//         //         color: textColor ?? Utils.primaryColor,
//         //       ),
//         //     ),
//         //   ],
//         // ),
//
//         child:   Row(
//           children: [
//             icon != null? Padding(
//                 padding: EdgeInsets.only(right: 8.w),
//                 child: Icon(
//                   icon,
//                   color: iconColor ?? Utils.primaryColor,
//                   size: 30.sp,
//                 ),
//               ): Text(''),
//             Text(
//               label,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 28.sp,
//                 color: textColor ?? Utils.primaryColor,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomButton2Widget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final IconData? icon;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Color? iconColor;
  final TextStyle textStyle;
  final double? iconSize;

  const CustomButton2Widget({
    Key? key,
    required this.label,
    required this.onTap,
    this.width,
    this.height,
    this.icon,
    this.backgroundColor,

    this.iconColor,
    required this.textStyle, this.iconSize, this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 0.w,
        height: height ?? 0.h,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 2,
              spreadRadius: 0,
              offset: Offset(2, 2),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(-2, -1),
            ),
          ],
        ),
        child: icon != null
            ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,

                    color: iconColor,
                    size: 40.sp,
                  ),
                  SizedBox(width: 20.w,),
                  Text(
                    label,style: textStyle,
                  ),
                ],
              )
            : Center(
                child: Text(
                  label,style: textStyle,
                ),
              ),
      ),
    );
  }
}
