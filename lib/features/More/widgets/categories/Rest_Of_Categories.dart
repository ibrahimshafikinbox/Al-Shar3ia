import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/More/cubit/categories_cubit/get_categories_cubit.dart';
import 'package:final_shar3ia_mobile/features/More/widgets/categories/ListOfCategries.dart';
import 'package:flutter/material.dart';

class Rest_Of_Categories extends StatefulWidget {
  const Rest_Of_Categories({super.key});

  @override
  State<Rest_Of_Categories> createState() => _Rest_Of_CategoriesState();
}

class _Rest_Of_CategoriesState extends State<Rest_Of_Categories> {
  bool categoriesOpened = false;
  void toggleItemsVisibility() {
    setState(() {
      categoriesOpened = !categoriesOpened;
    });
  }

  // List<Getcategoriesmodel> categories = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CategoriesCubit.get(context).fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 244, 242, 242)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.translate("rest_category"),
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                  ),
                  onPressed: toggleItemsVisibility,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        if (categoriesOpened) ListOfCategries(),
      ],
    );
  }
}
