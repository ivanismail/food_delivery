import 'package:food_delivery/export.dart';

EdgeInsets pageWrapper() => EdgeInsets.symmetric(horizontal: 15);
Widget displayNone() => SizedBox.shrink();

class Spacing extends StatelessWidget {
  const Spacing({
    Key key,
    this.width = 0,
    this.height = 0,
  }) : super(key: key);
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
