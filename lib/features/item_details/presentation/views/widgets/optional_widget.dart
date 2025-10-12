import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionalWidget extends StatelessWidget {
  const OptionalWidget({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title, imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(width: 16),
          svgIcon(context, path: imagePath),
          SizedBox(width: 10),
          Text(title, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  SvgPicture svgIcon(BuildContext context, {required String path}) {
    return SvgPicture.asset(
      path,
      width: 30,
      colorFilter: ColorFilter.mode(
        Theme.of(context).colorScheme.onSurface,
        BlendMode.srcIn,
      ),
    );
  }
}
