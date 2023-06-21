import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/home/setting/theme_bottom_sheet.dart';
import 'package:untitled2/home/setting/language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled2/home/setting/setting_provider.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var settingProvider =Provider.of<SettingProvider>(context);
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.theme_title,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 10.0),
          InkWell(
            onTap: () {

              showThemeBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color:Color(0xFFB7935F) ,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    settingProvider.isDark()
                        ? AppLocalizations.of(context)!.dark
                        : AppLocalizations.of(context)!.light,
                    style: theme.textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFFB7935F),
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            AppLocalizations.of(context)!.language_title,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Color(0xFFB7935F),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    settingProvider.currentLocal == "en" ? "English" : "عربي",
                    style: theme.textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFFB7935F),
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }
  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const languageBottomSheet(),
    );
  }
}