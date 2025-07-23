import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/function/navigate_page.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/features/onpoarding/presentation/widgets/custom_page_view_item.dart';
import 'package:fruit_hub/features/onpoarding/presentation/widgets/page_view_dot_indicator.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController pageController = PageController();
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        pageIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<CustomPageViewItem> customPageViewItem = [
      CustomPageViewItem(
        index: 0,
        image: Assets.assetsImagesOnBoardingImage1,
        backgroundImage: Assets.assetsImagesOnBoardingBackground1,
        titel: S.of(context).Welcome_to,
        describtion: S.of(context).onBoarSubTitle1,
      ),
      CustomPageViewItem(
        index: 1,
        image: Assets.assetsImagesOnBoardingImage2,
        backgroundImage: Assets.assetsImagesOnBoardingBackground2,
        titel: S.of(context).search_markteng,
        describtion: S.of(context).onBoarSubTitle2,
      ),
    ];
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: customPageViewItem.length,
              itemBuilder: (context, index) {
                return customPageViewItem[index];
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PageViewDotIndicatorWidget(
                pageCount: customPageViewItem.length,
                selectedPage: pageIndex,
              ),
            ],
          ),

          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: pageIndex == customPageViewItem.length - 1 ? true : false,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                top: 29,
                bottom: 43,
              ),
              child: CustomButton(
                onTap: () {
                  NavigatePage.addOnBoardingState();

                  Navigator.pushReplacementNamed(
                    context,
                    NavigatePage.routeName(),
                  );
                },
                text: S.of(context).start_now,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
