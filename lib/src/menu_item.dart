/*
 * @Author     : leafney
 * @Github     : https://github.com/leafney
 * @Date       : 2021-03-26 09:45:22
 * @Description: set menu item
 */

import 'package:flutter/material.dart';

///
class SetMenuItem extends StatelessWidget {
  ///
  final double? itemHeight;

  ///
  final Widget? itemInfo;

  /// item title
  final Widget itemTitle;

  final CrossAxisAlignment itemCrossAlign;

  /// 是否显示底部虚线（默认显示
  final bool bottomLine; // 底部虚线

  /// 虚线颜色值
  final Color bottomLineColor; // 底部虚线颜色

  /// icon底部虚线
  final bool iconBottomLine;

  /// 虚线宽度
  final double bottomLineWidth;

  /// 左侧Icon
  final Widget? icon; // 左侧Icon

  /// 左侧Icon与文本之间间距
  final double iconRightPadding;

  /// 左侧Icon副轴排列方式
  final CrossAxisAlignment iconCrossAlign; // 左侧Icon副轴排列方式

  /// 是否显示右侧箭头（默认true显示
  final bool nextIcon; // 右侧箭头
  /// 箭头颜色
  final Color? nextIconColor; // 右侧箭头颜色

  /// 右侧文本控件
  final Widget? rightText; // 右侧文本控件

  /// 左侧开头边距
  final double startPadding;

  /// 右侧尾部边距(注意右侧箭头图标右侧有4像素空白)
  final double endPadding; // 右侧间距

  final VoidCallback onTap;

  const SetMenuItem({
    Key? key,
    required this.itemTitle,
    required this.onTap,
    this.itemHeight = 53,
    this.itemInfo,
    this.itemCrossAlign = CrossAxisAlignment.center,
    this.bottomLine = true,
    this.bottomLineColor = const Color(0xFF000000),
    this.bottomLineWidth = 1,
    this.icon,
    this.iconRightPadding = 0,
    this.iconBottomLine = false,
    this.iconCrossAlign = CrossAxisAlignment.center,
    this.nextIcon = true,
    this.nextIconColor,
    this.rightText,
    this.startPadding = 0,
    this.endPadding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: this.itemHeight,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: this.iconCrossAlign,
          children: [
            // left icon
            buildItemLeft(),
            // right info and title content
            buildItemRight(),
          ],
        ),
      ),
    );
  }

  Widget buildItemLeft() {
    return Container(
      height: this.itemHeight,
      decoration: BoxDecoration(
        border: this.iconBottomLine
            ? Border(
                bottom: BorderSide(
                width: 1, // TODO set width
                color: this.bottomLineColor,
              ))
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: this.startPadding,
          right: this.iconRightPadding,
        ),
        child: this.icon ?? SizedBox(),
      ),
    );
  }

  Widget buildItemRight() {
    return Expanded(
      child: Container(
        height: this.itemHeight,
        decoration: BoxDecoration(
          border: this.bottomLine
              ? Border(
                  bottom: BorderSide(
                  width: 1, // TODO
                  color: this.bottomLineColor,
                ))
              : null,
        ),
        child: Row(
          crossAxisAlignment: this.itemCrossAlign,
          children: [
            // item info
            this.itemInfo ?? SizedBox(),
            // item title
            Expanded(child: this.itemTitle),
            // item right text
            this.rightText ?? SizedBox(),
            // whether to show the right next arrow
            this.nextIcon
                ? Icon(Icons.navigate_next, color: this.nextIconColor)
                : SizedBox(),
            // item right padding
            SizedBox(width: this.endPadding),
          ],
        ),
      ),
    );
  }
}
