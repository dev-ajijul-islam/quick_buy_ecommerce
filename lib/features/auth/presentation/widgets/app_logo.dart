import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_buy/app/asset_paths.dart';

class AppLogo extends StatelessWidget {
  final double width;
  final double height;
  const AppLogo({super.key, this.width = 120, this.height = 120});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetPaths.logoSvg, width: width, height: height);
  }
}
