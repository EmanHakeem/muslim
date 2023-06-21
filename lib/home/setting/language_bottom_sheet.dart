import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/home/setting/setting_provider.dart';


class languageBottomSheet extends StatefulWidget {
  const languageBottomSheet({Key? key}) : super(key: key);

  @override
  State<languageBottomSheet> createState() => _languageBottomSheetState();
}

class _languageBottomSheetState extends State<languageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);

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
              settingProvider.changeLanguage("en");
            },
            child: settingProvider.currentLocal == "en"
                ? getSelectedItem("English")
                : getUnselectedItem("English"),
          ),
          const SizedBox(height: 8.0),
          InkWell(
            onTap: () {
              settingProvider.changeLanguage("ar");
            },
            child: settingProvider.currentLocal == "en"
                ? getUnselectedItem("عربي")
                : getSelectedItem("عربي"),
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
                ?.copyWith(color:Color(0xFFB7935F)),
          ),
          Icon(
            Icons.check,
            color: Colors.white,
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