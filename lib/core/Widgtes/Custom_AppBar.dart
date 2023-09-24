import 'package:final_shar3ia_mobile/core/helpers/navigation_helper.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Search/View/search_view.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String requiredappBarText;
  const CustomAppBar({
    Key? key,
    required this.requiredappBarText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title: Text(requiredappBarText),
      title: Text(
          AppLocalizations.of(context)!.translate("${requiredappBarText}")),

      actions: [
        IconButton(
          onPressed: () {
            navigateTo(
              context,
              const SearchView(),
            );
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
