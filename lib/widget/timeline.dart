import 'package:flutter/material.dart';
import 'package:quotedemo/pages/tabs/home_page/home_page_controller.dart';
import 'package:quotedemo/widget/row_card.dart';
import 'package:quotedemo/widget/single_text_card.dart';
import 'package:quotedemo/widget/text_card.dart';
import 'package:timelines/timelines.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: FixedTimeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                thickness: 1.0,
              ),
          indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                size: 20.66,
                color: Colors.black,
              ),
        ),
        builder: TimelineTileBuilder(
          indicatorBuilder: (_, index) => Indicator.outlined(
            borderWidth: 1.0,
            color: Colors.black,
            backgroundColor: index != 0 ? null : Colors.black,
            child: const Icon(
              Icons.check,
              size: 15,
              color: Colors.white,
            ),
          ),
          startConnectorBuilder: (_, index) => index == 0
              ? Connector.transparent()
              : Connector.solidLine(
                  color: Colors.black,
                  thickness: 1,
                  endIndent: 5,
                ),
          endConnectorBuilder: (_, index) => index == 3
              ? Connector.transparent()
              : Connector.solidLine(
                  color: Colors.black,
                  thickness: 1,
                  indent: 5,
                ),
          contentsAlign: ContentsAlign.basic,
          contentsBuilder: (context, index) => index == 3
              ? SingleTextCard(controller: controller)
              : index == 2
                  ? const RowCardWidget()
                  : TextCardWidget(
                      index: index,
                    ),
          itemCount: 4,
        ),
      ),
    );
  }
}
