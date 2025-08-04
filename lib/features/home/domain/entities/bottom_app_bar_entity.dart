import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BottomAppBarEntity {
  final String title, slectedImage, unSelectedImage;

  BottomAppBarEntity(this.title, this.slectedImage, this.unSelectedImage);
  static List<BottomAppBarEntity> getBottomAppBarItems = [
    BottomAppBarEntity(
      S.current.home,
      Assets.assetsImagesSelectedHome,
      Assets.assetsImagesUnSelectedHome,
    ),
    BottomAppBarEntity(
      S.current.products,
      Assets.assetsImagesSelectedProduct,
      Assets.assetsImagesUnSelectedProduct,
    ),
    BottomAppBarEntity(
      S.current.cart,
      Assets.assetsImagesSelectedShoppingCart,
      Assets.assetsImagesUnSelectedShoppingCart,
    ),
    BottomAppBarEntity(
      S.current.profile,
      Assets.assetsImagesSelectedUser,
      Assets.assetsImagesUnSelectedUser,
    ),
  ];
}
