import 'package:admin_page_template/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset(
              "assets/images/logo.png",
            ),
            padding: EdgeInsets.all(40),
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
            minVerticalPadding: 16,
            title: const Text(
              'マスタ',
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
            minVerticalPadding: 16,
            title: const Text(
              'メーカー管理',
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
            minVerticalPadding: 16,
            title: const Text(
              '製品認証',
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
            minVerticalPadding: 16,
            title: const Text(
              'マップ',
            ),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
            minVerticalPadding: 16,
            title: const Text(
              'データ',
            ),
            onTap: () {},
          ),
          ListTile(
            // selected: true,
            leading: Icon(
              Icons.panorama_vertical_select_rounded,
              color: Colors.green,
            ),
            // selectedTileColor: Colors.red,
            contentPadding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width / 27),
            minVerticalPadding: 16,
            title: const Text(
              'ユーザー',
            ),
            onTap: () {
              context.goNamed("user");
            },
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
            minVerticalPadding: 16,
            title: const Text(
              '電力会社',
            ),
            onTap: () {},
          ),
          Container(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Divider(
            color: grey.withOpacity(0.1),
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
            minVerticalPadding: 16,
            title: const Text(
              'ログアウト',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
