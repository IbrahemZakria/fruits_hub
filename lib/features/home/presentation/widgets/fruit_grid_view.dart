import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/features/home/domain/entities/fruit_entity.dart';
import 'package:fruit_hub/features/home/presentation/widgets/fruit_card.dart';

class FruitGridView extends StatelessWidget {
  final List<FruitEntity> fruits = [
    FruitEntity("فراولة", Assets.assetsImagesOnBoardingImage2, 30),
    FruitEntity("بطيخ", Assets.assetsImagesOnBoardingImage2, 20),
    FruitEntity("أفوكادو", Assets.assetsImagesOnBoardingImage2, 5),
    FruitEntity("أناناس", Assets.assetsImagesOnBoardingImage2, 5),
    FruitEntity("موز", Assets.assetsImagesOnBoardingImage2, 15),
    FruitEntity("مانجو", Assets.assetsImagesOnBoardingImage2, 50),
    FruitEntity("فراولة", Assets.assetsImagesOnBoardingImage2, 30),
    FruitEntity("بطيخ", Assets.assetsImagesOnBoardingImage2, 20),
    FruitEntity("أفوكادو", Assets.assetsImagesOnBoardingImage2, 5),
    FruitEntity("أناناس", Assets.assetsImagesOnBoardingImage2, 5),
    FruitEntity("موز", Assets.assetsImagesOnBoardingImage2, 15),
    FruitEntity("مانجو", Assets.assetsImagesOnBoardingImage2, 50),
    FruitEntity("فراولة", Assets.assetsImagesOnBoardingImage2, 30),
    FruitEntity("بطيخ", Assets.assetsImagesOnBoardingImage2, 20),
    FruitEntity("أفوكادو", Assets.assetsImagesOnBoardingImage2, 5),
    FruitEntity("أناناس", Assets.assetsImagesOnBoardingImage2, 5),
    FruitEntity("موز", Assets.assetsImagesOnBoardingImage2, 15),
    FruitEntity("مانجو", Assets.assetsImagesOnBoardingImage2, 50),
    FruitEntity("فراولة", Assets.assetsImagesOnBoardingImage2, 30),
    FruitEntity("بطيخ", Assets.assetsImagesOnBoardingImage2, 20),
    FruitEntity("أفوكادو", Assets.assetsImagesOnBoardingImage2, 5),
    FruitEntity("أناناس", Assets.assetsImagesOnBoardingImage2, 5),
    FruitEntity("موز", Assets.assetsImagesOnBoardingImage2, 15),
    FruitEntity("مانجو", Assets.assetsImagesOnBoardingImage2, 50),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: fruits.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 3 / 3.5,
      ),
      itemBuilder: (context, index) {
        final fruit = fruits[index];
        return FruitCard(fruit: fruit);
      },
    );
  }
}
