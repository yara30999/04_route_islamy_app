import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../models/hadeth_model.dart';
import '../../../../resourses/assets_manager.dart';
import '../../../../resourses/colors_manager.dart';
import '../../../../resourses/routes_manager.dart';

class AhadethTab extends StatefulWidget {
  const AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            options: CarouselOptions(height: double.infinity, autoPlay: false),
            items: allAhadeth.map((hadeth) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.hadethDetailsRoute,
                          arguments: hadeth);
                    },
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Image.asset(
                          PngAssets.hadethBackground,
                          fit: BoxFit.fill,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 24),
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Text(hadeth.title,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(color: ColorsManager.black)),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(hadeth.content.first,
                                    textAlign: TextAlign.center,
                                    maxLines: 10,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(color: ColorsManager.black)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: 18,
        )
      ],
    );
  }

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then(
      (file) {
        List<String> ahadeth = file.split("#");
        for (String data in ahadeth) {
          List<String> lines = data.trim().split("\n");
          String title = lines[0];
          lines.removeAt(0);
          debugPrint(title);
          List<String> content = lines;
          HadethModel hadethModel = HadethModel(title, content);
          allAhadeth.add(hadethModel);
        }
        setState(() {});
      },
    ).catchError((error) {
      debugPrint("Error Details : $error");
    });
  }
}
