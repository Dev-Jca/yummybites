import 'package:flutter/material.dart';
import 'package:yummybites/utils/colors.dart';
import 'package:yummybites/utils/dimensions.dart';
import 'package:yummybites/widgets/big_text.dart';
import 'package:yummybites/widgets/icon_and_text_widget.dart';
import 'package:yummybites/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            //====================Wrap widget for the stars =============================
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: Dimensions.height15,
                ),
              ),
            ),
            SizedBox(width: Dimensions.width15),
            SmallText(text: '4.5'),
            SizedBox(width: Dimensions.width10),
            SmallText(text: '1685'),
            SizedBox(width: Dimensions.width10),
            SmallText(text: 'comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: '1.7km',
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: '32min',
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
