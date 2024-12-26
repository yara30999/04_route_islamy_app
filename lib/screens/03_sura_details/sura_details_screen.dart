import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/sura_model.dart';
import '../../resourses/assets_manager.dart';
import '../../resourses/colors_manager.dart';

class SuraDetailsScreen extends StatefulWidget {
  final SuraModel suraModel;
  const SuraDetailsScreen({super.key, required this.suraModel});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  Future<void> loadSuraFile(int index) async {
    String suraFile = await rootBundle.loadString("assets/files/$index.txt");
    List<String> lines = suraFile.split("\n");
    setState(() {
      verses = lines;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (verses.isEmpty) {
      loadSuraFile(widget.suraModel.index);
    }
    return Scaffold(
      backgroundColor: ColorsManager.black,
      appBar: AppBar(
        title: Text(
          widget.suraModel.nameEn,
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            PngAssets.detailsBackground,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    widget.suraModel.nameAr,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: verses.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 16,
                    ),
                    itemBuilder: (context, index) {
                      return VerseItem(
                        verse: verses[index],
                        verseIndex: index + 1,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VerseItem extends StatelessWidget {
  final String verse;
  final int verseIndex;
  const VerseItem({super.key, required this.verse, required this.verseIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.beige),
          borderRadius: BorderRadius.circular(15)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            children: [
              TextSpan(
                  text: verse,
                  style: Theme.of(context).textTheme.headlineMedium),
              TextSpan(
                  text: "($verseIndex)",
                  style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ),
      ),
    );
  }
}
