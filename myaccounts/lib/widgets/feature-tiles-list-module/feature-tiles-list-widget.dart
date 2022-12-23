import 'package:flutter/material.dart';
import 'package:myaccounts/models/button-info-model.dart';
import 'package:myaccounts/models/store-info-model.dart';

import '../../models/feature-tile-model.dart';
import 'feature-tile-widget.dart';

class FeatureTileList extends StatefulWidget {
  const FeatureTileList({Key? key}) : super(key: key);
  static List<FeatureTileModel> widgetDetails = [
    FeatureTileModel(
      title: 'Profile Information',
      subHeading: 'User Name',
      description: 'user email',
      buttonInfo: ButtonInfo(
        buttonTitle: 'Edit Profile Information',
        buttonOnClick: () {},
      ),
    ),
    FeatureTileModel(
      title: 'Shipping Address',
      description: 'Add a shipping Address for Faster Checkout.',
      buttonInfo: ButtonInfo(
        buttonTitle: 'Add Addresses',
        buttonOnClick: () {},
      ),
    ),
    FeatureTileModel(
      title: 'Payment Methods',
      description: 'Add a Payment method for Faster Checkout.',
      buttonInfo: ButtonInfo(
        buttonTitle: 'Add Payment Method',
        buttonOnClick: () {},
      ),
    ),
    FeatureTileModel(
      title: 'Buy Now',
      description: 'Enable Buy Now for faster checkout.',
      buttonInfo: ButtonInfo(
        buttonTitle: 'Edit Buy Now Settings',
        buttonOnClick: () {},
      ),
    ),
    FeatureTileModel(
      title: 'My List',
      description: 'You have not saved any products yet.',
      buttonInfo: ButtonInfo(
        buttonTitle: 'View List',
        buttonOnClick: () {},
      ),
    ),
    FeatureTileModel(
      title: 'Email Subscriptions',
      description:
          'Select which emails you would like to receive from The Home Depot.',
      buttonInfo: ButtonInfo(
        buttonTitle: 'Edit Subscriptions',
        buttonOnClick: () {},
      ),
    ),
    FeatureTileModel(
      title: 'My Bookings',
      description:
          'The Home Depot offers both in-store consultations and virtual consultations via phone, video or email.',
      buttonInfo: ButtonInfo(
        buttonTitle: 'Book a Consultation',
        buttonOnClick: () {},
      ),
    ),
    FeatureTileModel(
      title: 'My Store',
      storeInfo: StoreInfo(
          storeName: 'SCARBOROUGH',
          storeContactNumber: '416-609-1800',
          storeStatus: 'Closed',
          storeOpenTime: 'Opens 6 a.m'),
      buttonInfo: ButtonInfo(
        buttonTitle: 'See Store Details',
        buttonOnClick: () {},
      ),
    ),
    FeatureTileModel(
      title: 'Own a business or planning on starting one?',
      proExtra: 'Learn More about Pro Xtra',
      imageData: 'assets/pro-extra.png',
    ),
  ];
  @override
  _FeatureTileListState createState() => _FeatureTileListState();
}

class _FeatureTileListState extends State<FeatureTileList> {
  List<Widget> _buildWidgetList(List<FeatureTileModel> widgetDetails) {
    List<Widget> widgetList = [];
    for (int i = 0; i < widgetDetails.length; i++) {
      widgetList.add(FeatureTile(cardDetails: widgetDetails[i]));
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
          spacing: 20,
          children: _buildWidgetList(FeatureTileList.widgetDetails)),
    );
  }
}
