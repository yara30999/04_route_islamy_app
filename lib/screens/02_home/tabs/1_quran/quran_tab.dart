import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../models/sura_model.dart';
import '../../../../resourses/assets_manager.dart';
import '../../../../resourses/colors_manager.dart';
import 'sura_name_horizontal_item.dart';
import 'sura_name_item.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  var searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(onSearch);
  }

  onSearch() {
    SuraModel.searchResult.clear();
    String text = searchController.text;
    if (text.isNotEmpty) {
      for (String data in SuraModel.suraNamesEn) {
        if (data.toLowerCase().contains(text.toLowerCase())) {
          SuraModel.searchResult.add(data);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _searchItem(),
        SuraModel.searchResult.isNotEmpty || searchController.text.isNotEmpty
            ? SizedBox()
            : _suraHorizontalList(),
        _suraVerticalList(),
      ],
    );
  }

  Widget _suraVerticalList() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Suras List",
              textAlign: TextAlign.start,
              style: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: SuraModel.searchResult.isNotEmpty
                    ? SuraModel.searchResult.length
                    : SuraModel.listLength,
                separatorBuilder: (context, index) => const Divider(
                  indent: 40,
                  endIndent: 40,
                  thickness: 2,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      //TODO navigate to sura details screen here
                    },
                    child: SuraNameItem(
                        model: SuraModel.searchResult.isNotEmpty
                            ? SuraModel.getSelectedSuraModel(index)
                            : SuraModel.getSuraModel(index)),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _suraHorizontalList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Most Recently ",
            textAlign: TextAlign.start,
            style: GoogleFonts.elMessiri(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ColorsManager.white),
          ),
        ),
        SizedBox(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: SuraModel.listLength,
              separatorBuilder: (context, index) => SizedBox(
                width: 12,
              ),
              itemBuilder: (context, index) {
                return SuraNameHorizontalItem(
                  model: SuraModel.getSuraModel(index),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _searchItem() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            controller: searchController,
            cursorColor: ColorsManager.beige,
            cursorWidth: 3,
            style: GoogleFonts.elMessiri(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              labelText: "Sura Name",
              fillColor: ColorsManager.lightBlack,
              filled: true,
              labelStyle: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              prefixIcon: Image.asset(
                PngAssets.quranIcon,
                color: ColorsManager.beige,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorsManager.beige,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: ColorsManager.beige, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: ColorsManager.beige, width: 2),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
