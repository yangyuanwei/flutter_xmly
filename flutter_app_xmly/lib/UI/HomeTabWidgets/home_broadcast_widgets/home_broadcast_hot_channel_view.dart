import 'package:flutter/material.dart';

class HomeBroadCastHotChannelHeaderView extends StatelessWidget {
  List<String> imageArray;

  List<String> titleArray;

  HomeBroadCastHotChannelHeaderView(this.imageArray, this.titleArray);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _createGirdView();
  }

  Widget _createGirdView() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(), //去除gridView本身的滚动
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: imageArray.length,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
          childAspectRatio: 3 / 4),
      itemBuilder: _createGridViewItem,
      itemCount: imageArray.length,
    );
  }

  Widget _createGridViewItem(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        debugPrint("点击了热门频道>>");
      },
      child: Container(
        color: Colors.white,
        height: 90.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 8.0,
            ),
            Image.network(
              imageArray[index],
              width: 45.0,
              height: 45.0,
            ),
            SizedBox(
              height: 6.0,
            ),
            Expanded(
                child: Text(
                  titleArray[index],
                    style: TextStyle(fontSize: 13.0, color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
