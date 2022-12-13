import 'package:flutter/rendering.dart';

import 'constants.dart';

scrollDirectionController(direction) {
  if (direction == ScrollDirection.reverse) {
    scrollNotifier.value = false;
  } else if (direction == ScrollDirection.forward) {
    scrollNotifier.value = true;
  }
}
