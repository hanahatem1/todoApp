import 'package:flutter/material.dart';
import 'package:to_do_app/constant/colors.dart';
import 'package:to_do_app/main.dart';

class CustomCardDarkMode extends StatefulWidget {
  const CustomCardDarkMode({super.key});

  @override
  State<CustomCardDarkMode> createState() => _CustomCardDarkModeState();
}

class _CustomCardDarkModeState extends State<CustomCardDarkMode> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color:  Theme.of(context).cardColor,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Dark mode',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Transform.scale(
              scale: .7,
              child: Switch(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: AppColors.blueColor,
                  padding: EdgeInsets.zero,
                  value: isSwitched,
                  onChanged: (val) {
                    setState(() {
                      isSwitched = val;
                        themeNotifier.value =
                        val ? ThemeMode.dark : ThemeMode.light;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
