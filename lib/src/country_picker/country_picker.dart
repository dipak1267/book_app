import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/app_span_text.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/common_widgets/custom_divider.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';
import 'country_code_model.dart';

Future<dynamic> countryPickerBottomSheet(
  BuildContext context,
  CountryCodeModel selectedCountry,
) async {
  return await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) => CountryPicker(
      selectedCountry: selectedCountry,
    ),
  );
}

class CountryPicker extends StatefulWidget {
  final CountryCodeModel? selectedCountry;

  const CountryPicker({
    this.selectedCountry,
  });

  @override
  _CountryPickerState createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  final TextEditingController _searchController = TextEditingController();

  late String _searchText;

  List<CountryCodeModel> countries = CountryCodeModel.all;

  IconData? _suffixIcon() {
    _searchText = _searchController.text.toString().trim();
    return _searchText.isNotEmpty ? Icons.clear : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 2.w,
      ),
      child: Column(
        children: [
          SafeArea(child: Container()),
          SizedBox(height: 6.h),
          AppIconButton(
            onTap: () => Beamer.of(context).beamBack(),
            label: LanguageConstants.selectYourCountry,
            textColor: AppColor.primaryColor,
            fontWeight: FontWeight.w700,
            prefixWidget: Icon(
              Icons.close,
            ),
          ),
          SizedBox(height: 2.h),
          AppSearchTextField(
            prefixIcon: Icons.search,
            labelText: LanguageConstants.searchByCountry,
            suffixIcon: _suffixIcon(),
            onIconPress: () {
              setState(() {
                _searchController.text = '';
                countries = CountryCodeModel.all;
              });
            },
            textEditingController: _searchController,
            onChanged: (String value) {
              if (value.trim().length > 0) {
                List<CountryCodeModel> _countries = [];
                for (CountryCodeModel country in CountryCodeModel.all) {
                  if (country.name.toLowerCase().contains(value)) {
                    _countries.add(country);
                  }
                }
                countries = _countries;
                setState(() {});
              } else {
                if (countries.length != CountryCodeModel.all.length) {
                  countries = CountryCodeModel.all;
                  setState(() {});
                }
              }
            },
          ),
          Expanded(
            child: ListView.separated(
              itemCount: countries.length,
              itemBuilder: (_, index) {
                CountryCodeModel country = countries[index];
                return ListTile(
                  onTap: () => Navigator.of(context).pop(country),
                  title: CustomSpanText(
                    head: LanguageConstants.selectCountry,
                    headFontSize: 2.0,
                    headFontWeight: FontWeight.w700,
                    headColor: AppColor.primaryColor,
                    body: country.flag,
                    bodyFontSize: 3,
                  ),
                  trailing: Text(
                    '+',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                );
              },
              separatorBuilder: (_, index) => CustomDivider(margin: 0),
            ),
          )
        ],
      ),
    );
  }
}