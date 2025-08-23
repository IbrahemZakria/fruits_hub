import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_decoration.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/generated/l10n.dart';

class DeliveryAddressWidget extends StatelessWidget {
  const DeliveryAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    {
      log(context.read<OrderEntity>().adressEntity.adress ?? "");
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: AppDecoration.greyBoxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(Assets.assetsImagesLocation),
          ),
          SizedBox(width: 8),
          Text(
            "${context.read<OrderEntity>().adressEntity.adress},${context.read<OrderEntity>().adressEntity.adressDetails}",
            style: Thems.textStyle13re,
          ),
          Spacer(),
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(Assets.assetsImagesEdit),
              ),
              Text(S.current.edit, style: Thems.textStyle13re),
            ],
          ),
        ],
      ),
    );
  }
}
