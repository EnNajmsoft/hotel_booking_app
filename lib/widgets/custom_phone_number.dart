import 'package:HotelAppUser/core/app_export.dart';
import 'package:HotelAppUser/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {required this.country, required this.onTap, required this.controller, required validator});

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.blueGray900,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: getPadding(
                left: 20,
                top: 19,
                bottom: 19,
              ),
              child: Row(
                children: [
                  CountryPickerUtils.getDefaultFlagImage(
                    country,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowdown,
                    height: getVerticalSize(
                      4,
                    ),
                    width: getHorizontalSize(
                      9,
                    ),
                    margin: getMargin(
                      left: 11,
                      top: 6,
                      bottom: 6,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomTextFormField(
              width: getHorizontalSize(
                294,
              ),
              focusNode: FocusNode(),
              controller: controller,
              hintText: "Phone Number",
              margin: getMargin(
                left: 15,
                right: 6,
              ),
              variant: TextFormFieldVariant.None,
              fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500,
              textInputType: TextInputType.phone,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
