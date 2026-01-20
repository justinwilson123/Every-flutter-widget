import 'package:all_widget/widget/align_widget.dart';
import 'package:all_widget/widget/animated_builder_widget.dart';
import 'package:all_widget/widget/place_holder_widget.dart';
import 'package:all_widget/widget/popup_menu_button_widget.dart';
import 'package:all_widget/widget/positioned_transition_widget.dart';
import 'package:all_widget/widget/preferred_size_widget.dart';
import 'package:all_widget/widget/raw_auto_complete_widget.dart';
import 'package:all_widget/widget/raw_chip_widget.dart';
import 'package:all_widget/widget/reorder_able_list_view_widget.dart';
import 'package:all_widget/widget/rotation_transition_widget.dart';
import 'package:all_widget/widget/roted_box_widget.dart';
import 'package:all_widget/widget/scale_transition_widget.dart';
import 'package:all_widget/widget/scroll_bar_widget.dart';
import 'package:all_widget/widget/selectable_text_widget.dart';
import 'package:all_widget/widget/shader_mask_widget.dart';
import 'package:all_widget/widget/size_transition_widget.dart';
import 'package:all_widget/widget/sized_over_flow_box_widget.dart';
import 'package:all_widget/widget/slider_tansition_widget.dart';
import 'package:all_widget/widget/tab_bar_selector_widget.dart';
import 'package:all_widget/widget/toggle_buttons_widget.dart';
import 'package:all_widget/widget/tool_tip_widget.dart';
import 'package:all_widget/widget/transform_widget.dart';
import 'package:all_widget/widget/tween_animation_builder_widget.dart';
import 'package:all_widget/widget/value_listenable_builder_widget.dart';
import 'package:all_widget/widget/vertical_divider_widget.dart';
import 'package:all_widget/widget/visibilty_widget.dart';
import 'package:flutter/material.dart';

import 'widget/about_dialog_widget.dart';
import 'widget/about_list_tile_widget.dart';
import 'widget/alert_dialog_widget.dart';
import 'widget/animated_align_widget.dart';
import 'widget/animated_container_widget.dart';
import 'widget/animated_cross_fade_widget.dart' show AnimatedCrossFadeWidget;
import 'widget/animated_icon_widget.dart';
import 'widget/animated_list_widget.dart';
import 'widget/orientation_builder_widget.dart';
import 'widget/over_flow_box_widget.dart';
import 'widget/overflow_bar_widget.dart';
import 'widget/page_view_widget.dart';
import 'widget/phsical_model_widget.dart';
import 'widget/phsical_shape_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedListWidget(),
    );
  }
}
