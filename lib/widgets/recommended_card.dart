import 'package:flutter/material.dart';
import 'package:jobby_app/shared/theme.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234,
      width: 314,
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
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.5),
                  child: Image.asset(
                    'assets/icon_company_logo.png',
                    width: 70,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icon_favorite.png',
                    width: 26,
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            Text(
              'Senior Product Designer',
              style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: bold),
            ),
            Row(
              children: [
                Text(
                  'Google LLC',
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
                  'South Jakarta',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
              ],
            ),
            Spacer(),
            Expanded(
              child: Row(
                children: [
                  Text(
                    '10 June 2021',
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(width: 50),
                  Text(
                    'Onsite',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(width: 7),
                  Image.asset(
                    'assets/divider.png',
                    width: 4,
                  ),
                  SizedBox(width: 7),
                  Expanded(
                    child: Text(
                      '\$8k/mo',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
