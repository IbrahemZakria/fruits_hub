import 'package:flutter/widgets.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class PageViewDotIndicatorWidget extends StatelessWidget {
  final int pageCount, selectedPage;

  const PageViewDotIndicatorWidget({
    super.key,
    required this.pageCount,
    required this.selectedPage,
  });

  @override
  Widget build(BuildContext context) {
    return PageViewDotIndicator(
      currentItem: selectedPage,
      count: pageCount,
      unselectedColor: Thems.kprimarycolor.withValues(alpha: .5),
      selectedColor: Thems.kprimarycolor,
      size: const Size(12, 12),
      unselectedSize: const Size(8, 8),
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      fadeEdges: false,
      boxShape: BoxShape.circle, //defaults to circle
    );
  }
}
