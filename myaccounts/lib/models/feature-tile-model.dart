import 'package:myaccounts/models/button-info-model.dart';
import 'package:myaccounts/models/learn-more-model.dart';
import 'package:myaccounts/models/store-info-model.dart';

class FeatureTileModel {
  final String title;
  final String? subHeading;
  final String? description;
  final ButtonInfo? buttonInfo;
  final LearnMore? learnMore;
  final String? imageData;
  final StoreInfo? storeInfo;
  final String? proExtra;

  FeatureTileModel({
    required this.title,
    this.subHeading,
    this.description,
    this.buttonInfo,
    this.learnMore,
    this.imageData,
    this.storeInfo,
    this.proExtra,
  });
}
