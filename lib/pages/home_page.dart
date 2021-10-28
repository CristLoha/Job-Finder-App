import 'package:flutter/material.dart';
import 'package:jobby_app/shared/theme.dart';
import 'package:jobby_app/widgets/recent_card.dart';
import 'package:jobby_app/widgets/recommended_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Home',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          backgroundColor: kBackgroundColor1,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/setting_icon.png',
              width: 26,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/notication_icon.png',
                width: 26,
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: 35,
        ),
        child: Text(
          'Let’s discover\nyour ideal job here.',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget inputSearch() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: 354,
          height: 64,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 19,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kGreyColor,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Row(
              children: [
                Image.asset(
                  'assets/icon_search.png',
                  width: 26,
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search jobs...',
                      hintStyle: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: kGreyColor,
                  height: 50,
                  width: 2,
                ),
                SizedBox(
                  width: 19,
                ),
                Image.asset(
                  'assets/icon_filter.png',
                  width: 26,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget recommendedTitle() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        margin: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommended Jobs',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            Text(
              'See All',
              style: blueTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget recommendedContent() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              RecommendedCard(),
              SizedBox(width: 20),
              RecommendedCard(),
              SizedBox(width: defaultMargin),
            ],
          ),
        ),
      );
    }

    Widget recentTitle() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        margin: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Jobs',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            Text(
              'See All',
              style: blueTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget recentContent() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            RecentCard(),
            SizedBox(width: defaultMargin),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        title(),
        inputSearch(),
        recommendedTitle(),
        recommendedContent(),
        recentTitle(),
        recentContent(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
