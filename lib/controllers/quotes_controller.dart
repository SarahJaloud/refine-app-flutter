import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:refineapp/Screens/Home/Motivation/Models/motivational_quotes.dart';

class QuotesController extends GetxController {
  PageController _pageController;
  PageController get pageController => this._pageController;

  List<Quotes> _quote = sample_data
      .map((quote) => Quotes(
            quote: quote['quote'],
          ))
      .toList();
  List<Quotes> get quotes => this._quote;
}
