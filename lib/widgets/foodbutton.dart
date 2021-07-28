import 'package:food_delivery/export.dart';
import 'package:food_delivery/const.dart';

class FoodButton extends StatelessWidget {
  final Color backgroundColor, color, loadingColor;
  final String text;
  final Function onTap;
  final BorderRadiusGeometry borderRaduis;
  final Widget icon;
  final double elevation;
  final bool isLoading;
  final bool disabled;
  final FontWeight fontweight;
  final double height;

  const FoodButton({
    Key key,
    this.backgroundColor = Colors.transparent,
    this.color = Colors.black,
    this.text = '---',
    this.onTap,
    this.borderRaduis = BorderRadius.zero,
    this.icon,
    this.elevation = 0,
    this.isLoading = false,
    this.loadingColor = Colors.white,
    this.disabled = false,
    this.fontweight = FontWeight.normal,
    this.height = 31,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:
          disabled ? this.backgroundColor.withAlpha(90) : this.backgroundColor,
      borderRadius: borderRaduis,
      elevation: elevation,
      child: InkWell(
        borderRadius: borderRaduis,
        onTap: isLoading || disabled ? null : onTap,
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: borderRaduis,
          ),
          child: isLoading
              ? Container(
                  child: Center(
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                          backgroundColor: loadingColor),
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    icon ?? displayNone(),
                    !icon.isNullOrBlank ? Spacing(width: 6) : displayNone(),
                    Text(
                      text,
                      style: TextStyle(
                        color: color,
                        fontWeight: fontweight,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  static Widget outline({
    Color borderColor = Colors.black,
    Color color = Colors.black,
    Color backgroundColor = Colors.white,
    String text = '---',
    Function onTap,
    BorderRadiusGeometry borderRaduis = BorderRadius.zero,
    Widget icon,
    UseIconButton iconPosition = UseIconButton.left,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Material(
      color: backgroundColor,
      borderRadius: borderRaduis,
      child: InkWell(
        borderRadius: borderRaduis,
        onTap: onTap,
        child: Container(
          // height: 20 ,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: borderRaduis,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon != null && iconPosition == UseIconButton.left
                  ? icon
                  : displayNone(),
              Text(
                text,
                style: TextStyle(
                  color: color,
                  fontWeight: fontWeight,
                ),
                textAlign: TextAlign.center,
              ),
              icon != null && iconPosition == UseIconButton.right
                  ? icon
                  : displayNone(),
            ],
          ),
        ),
      ),
    );
  }
}
