import 'package:flutter/material.dart';
import 'package:jobby_app/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Detail Page',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          backgroundColor: kBackgroundColor1,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Image.asset(
              'assets/icon_back.png',
              width: 26,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icon_favorite.png',
                width: 26,
                color: Color(0xff292A2D),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 42),
        child: Column(
          children: [
            Image.asset(
              'assets/icon_company_logo.png',
              width: 100,
            ),
            SizedBox(height: 16),
            Text(
              'Senior Product Designer',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor1,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
