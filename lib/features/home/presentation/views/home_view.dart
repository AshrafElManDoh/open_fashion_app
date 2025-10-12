import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/core/widgets/custom_appbar.dart';
import 'package:open_fashion_app/features/home/data/models/cover_model.dart';
import 'package:open_fashion_app/features/home/data/models/product_model.dart';
import 'package:open_fashion_app/features/home/presentation/views/widgets/cover_item.dart';
import 'package:open_fashion_app/features/home/presentation/views/widgets/grid_item.dart';
import 'package:open_fashion_app/features/home/presentation/views/widgets/icons_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/10.svg"),
          ),
          Positioned(
            top: 100,
            right: 0,
            left: 0,
            child: svgIcon(context, path: "assets/texts/Collection.svg"),
          ),
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: svgIcon(context, path: "assets/texts/October.svg"),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  SizedBox(height: 150),
                  Image.asset("assets/cover/cover1.png"),
                  SizedBox(height: 20),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: ProductModel.products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.6,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) =>
                        GridItem(product: ProductModel.products[index]),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "You may Also like".toUpperCase(),
                    style: AppStyles.getFont18(context),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 350,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: CoverModel.covers.length,
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                      itemBuilder: (context, index) =>
                          CoverItem(item: CoverModel.covers[index]),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.onSurface,
                    padding: EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        IconsWidget(),
                        SizedBox(height: 16),
                        Image.asset(
                          "assets/svgs/line.png",
                          width: 190,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          textAlign: TextAlign.center,
                          "support@openui.design\n+60 825 876\n08:00 - 22:00 - Everyday",
                          style: AppStyles.getFont16(
                            context,
                          ).copyWith(color: Colors.grey),
                        ),
                        SizedBox(height: 16),
                        Image.asset(
                          "assets/svgs/line.png",
                          width: 190,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 16),
                        Text(
                          "About     Contact       Blog",
                          style: AppStyles.getFont16(
                            context,
                          ).copyWith(color: Colors.grey),
                        ),
                        SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          color: Colors.grey,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: Text(
                              "Copyright© OpenUI All Rights Reserved.",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SvgPicture svgIcon(BuildContext context, {required String path}) {
    return SvgPicture.asset(
      path,
      colorFilter: ColorFilter.mode(
        Theme.of(context).colorScheme.onSurface,
        BlendMode.srcIn,
      ),
    );
  }
}
