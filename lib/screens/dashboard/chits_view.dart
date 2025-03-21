import 'package:back_bone/constants/app_images.dart';
import 'package:back_bone/extensions/spacing_extensions.dart';
import 'package:flutter/widgets.dart';

class ChitsView extends StatelessWidget {
  const ChitsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.horizontalPadding,
      child: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 10),
          curve: Curves.easeInOut,
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.instance.homeBanner),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
