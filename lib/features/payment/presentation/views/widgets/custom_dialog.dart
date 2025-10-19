import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion_app/core/utils/app_styles.dart';
import 'package:open_fashion_app/core/widgets/custom_button.dart';
import 'package:open_fashion_app/features/item_details/presentation/views_model/details_cubit/details_cubit.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            GestureDetector(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.clear),
              ),
              onTap: () => Navigator.pop(context),
            ),
            SizedBox(height: 20),
            Text(
              "Payment Success".toUpperCase(),
              style: AppStyles.getFont18(context).copyWith(color: Colors.black),
            ),
            SizedBox(height: 10),
            SvgPicture.asset("assets/pop/done.svg", width: 60),
            SizedBox(height: 10),
            Text(
              "Payment Id 52356987".toUpperCase(),
              style: AppStyles.getFont14(context),
            ),
            SizedBox(height: 20),
            Image.asset(
              "assets/svgs/line.png",
              width: 120,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            SizedBox(height: 20),
            Text("Rate your purchase", style: AppStyles.getFont18(context)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/pop/emogi1.svg"),
                SizedBox(width: 20),
                SvgPicture.asset("assets/pop/emogi2.svg"),
                SizedBox(width: 20),
                SvgPicture.asset("assets/pop/emogi3.svg"),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      context.read<DetailsCubit>().reset();
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    title: "Go to home",
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    title: "Submit",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
