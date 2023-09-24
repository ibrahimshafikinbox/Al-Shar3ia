import 'package:final_shar3ia_mobile/core/Widgtes/Custom_AppBar.dart';
import 'package:final_shar3ia_mobile/core/localizations/clasess/app_localization.dart';
import 'package:final_shar3ia_mobile/features/Login/Wigets/Custom_Form_Field.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  var searchByCodeController = TextEditingController();

  var searchByNAtionalIdController = TextEditingController();
  var searchByFamilyNameController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: 150,
                  child: Expanded(
                    child: DefaultFormField(
                      controller: searchByCodeController,
                      type: TextInputType.phone,
                      onValidate: (String? value) {
                        if (value == null || value.isEmpty) {
                          return '  required';
                        }
                        return null;
                      },
                      hint: "Search by code ",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 180,
                  child: Expanded(
                    child: DefaultFormField(
                      controller: searchByNAtionalIdController,
                      type: TextInputType.phone,
                      onValidate: (String? value) {
                        if (value == null || value.isEmpty) {
                          return '  required';
                        }
                        return null;
                      },
                      hint: "Search by national Id  ",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: DefaultFormField(
                  controller: searchByFamilyNameController,
                  type: TextInputType.emailAddress,
                  onValidate: (String? value) {
                    if (value == null || value.isEmpty) {
                      return '  required';
                    }
                    return null;
                  },
                  hint: "Search by family name   ",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.translate("hello_msg"),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
