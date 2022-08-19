import 'package:flutter/material.dart';
import 'package:mightytips/ui/theme/app_colors.dart';
import 'package:mightytips/ui/theme/app_images.dart';
import 'package:mightytips/ui/widgets/header/menu/menu_model.dart';

abstract class MenuWidgetIndex {
  static int main = 0;
  static int bookmakers = 1;
  static int predictions = 2;
  static int privacyPolicy = 3;
  static int about = 4;
}

class MenuWidget extends StatelessWidget {
  final int menuActivePage;

  const MenuWidget({Key? key, required this.menuActivePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 1,
      color: Colors.grey,
    );
    return Drawer(
      backgroundColor: AppColors.bgDark,
      child: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(14, 28, 32, 1),
                    Color.fromRGBO(4, 43, 52, 1)
                  ]),
            ),
            child: Column(
              children: [
                const DrawerHeader(
                  child: Image(
                    image: AppImages.logo,
                    width: 102,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                    ),
                    child: Container(
                      color: AppColors.bgDark,
                      height: MediaQuery.of(context).size.height * 0.674,
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 20,
                        bottom: 40,
                      ),
                      child: Column(
                        children: [
                          divider,
                          MenuItemBuildWidget(
                            text: 'Main Page',
                            index: MenuWidgetIndex.main,
                            menuActivePage: menuActivePage,
                          ),
                          divider,
                          MenuItemBuildWidget(
                            text: 'Bookmakers',
                            index: MenuWidgetIndex.bookmakers,
                            menuActivePage: menuActivePage,
                          ),
                          divider,
                          MenuItemBuildWidget(
                            text: 'Predictions',
                            index: MenuWidgetIndex.predictions,
                            menuActivePage: menuActivePage,
                          ),
                          divider,
                          const SizedBox(height: 40),
                          divider,
                          MenuItemBuildWidget(
                            text: 'Privacy Policy',
                            index: MenuWidgetIndex.privacyPolicy,
                            menuActivePage: menuActivePage,
                          ),
                          divider,
                          MenuItemBuildWidget(
                            text: 'About',
                            index: MenuWidgetIndex.about,
                            menuActivePage: menuActivePage,
                          ),
                          divider,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItemBuildWidget extends StatelessWidget {
  final String text;
  final int index;
  final int menuActivePage;

  const MenuItemBuildWidget({
    Key? key,
    required this.text,
    required this.index,
    required this.menuActivePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = MenuModel();
    var color = Colors.white;
    const hoverColor = Colors.white70;
    VoidCallback? onClicked = () => model.selectedItem(context, index);
    if (menuActivePage == index) {
      color = AppColors.blue;
      onClicked = null;
    }
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 10),
      visualDensity: const VisualDensity(vertical: -4),
      title: Text(text, style: TextStyle(color: color, fontSize: 12)),
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
