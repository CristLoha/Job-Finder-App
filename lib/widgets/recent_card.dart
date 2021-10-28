import 'package:flutter/material.dart';
import 'package:jobby_app/shared/theme.dart';

class RecentCard extends StatelessWidget {
  const RecentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 354,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: kGreyColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(6),
          color: Color(
            0xffFCFCFD,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icon_twitter.png',
                  width: 60,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'UX Designer',
                            style: primaryTextStyle.copyWith(
                                fontSize: 16, fontWeight: bold),
                          ),
                          Text(
                            '1 hr ago',
                            style: greyTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Twitter',
                            style: primaryTextStyle.copyWith(
                                fontSize: 16, fontWeight: semiBold),
                          ),
                          SizedBox(width: 7),
                          Image.asset(
                            'assets/divider.png',
                            width: 4,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'West Jakarta',
                            style: primaryTextStyle.copyWith(
                                fontSize: 16, fontWeight: semiBold),
                          )
                        ],
                      ),
                      SizedBox(height: 18.5)
                    ],
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
