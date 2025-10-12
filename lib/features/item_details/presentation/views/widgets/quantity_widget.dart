import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion_app/features/home/presentation/views_model/cubit/details_cubit.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({super.key});

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int calc = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        icon(
          onTap: () {
            setState(() {
              calc++;
              context.read<DetailsCubit>().nItems = calc;
            });
          },
          icon: Icons.add,
        ),

        SizedBox(width: 20),
        Text(
          calc.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(width: 20),
        icon(
          onTap: () {
            if (calc == 1) {
            } else {
              setState(() {
                calc--;
                context.read<DetailsCubit>().nItems = calc;
              });
            }
          },
          icon: Icons.remove,
        ),
      ],
    );
  }

  Widget icon({required Function() onTap, required IconData icon}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: Icon(icon, color: Colors.grey, size: 20),
      ),
    );
  }
}
