import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/features/home/data/models/cover_model.dart';

class CoverItem extends StatelessWidget {
  const CoverItem({super.key, required this.item});
  final CoverModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(item.image,height: 300,),
        SizedBox(height: 5,),
        Text(
          item.title.toUpperCase(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.getFont14(context).copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
