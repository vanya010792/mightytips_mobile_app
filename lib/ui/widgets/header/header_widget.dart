import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mightytips/ui/theme/app_colors.dart';
import 'package:mightytips/ui/theme/app_images.dart';
import 'package:mightytips/ui/widgets/header/menu/menu_widget.dart';

class HeaderWidget extends StatelessWidget {
  final Widget screen;
  final int menuActivePage;

  const HeaderWidget({
    Key? key,
    required this.screen,
    required this.menuActivePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var leadingButtonIcon = const Icon(Icons.arrow_back);
    VoidCallback? leadingOnPressed = () => Navigator.of(context).pop();
    if (!Navigator.of(context).canPop()) {
      leadingButtonIcon = const Icon(null);
      leadingOnPressed = null;
    }
    return Scaffold(
      drawerEdgeDragWidth: MediaQuery.of(context).size.width / 2,
      drawer: MenuWidget(menuActivePage: menuActivePage),
      appBar: AppBar(
        leading: IconButton(
          icon: leadingButtonIcon,
          onPressed: leadingOnPressed,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.bgGray,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        centerTitle: true,
        backgroundColor: AppColors.bgGray,
        title: const Image(
          image: AppImages.logo,
          width: 102,
          height: 50,
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.grid_view_rounded),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            }
          )
        ],
      ),
      body: screen,
    );
  }
}
