import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/home/setting/setting_provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider =Provider.of<SettingProvider>(context);
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              print("light");
              settingsProvider.changeTheme(ThemeMode.light);
            },
            child: settingsProvider.isDark() // false
                ? getUnselectedItem(AppLocalizations.of(context)!.light)
                : getSelectedItem(AppLocalizations.of(context)!.light),
          ),
          const SizedBox(height: 8.0),
          InkWell(
            onTap: () {
              print("dark");
              settingsProvider.changeTheme(ThemeMode.dark);
            },
            child: settingsProvider.isDark() // false
                ? getSelectedItem(AppLocalizations.of(context)!.dark)
                : getUnselectedItem(AppLocalizations.of(context)!.dark),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall
                ?.copyWith(color: Color(0xFFB7935F)),
          ),
          Icon(
            Icons.check,
            color:Colors.white,
            //Color(0xFFB7935F),
          )
        ],
      ),
    );
  }

  Widget getUnselectedItem(String title) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}