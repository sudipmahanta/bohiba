import 'package:flutter/material.dart';

class HomeImageSliderSection extends StatefulWidget {
  const HomeImageSliderSection({Key? key}) : super(key: key);

  @override
  State<HomeImageSliderSection> createState() => _HomeImageSliderSectionState();
}

class _HomeImageSliderSectionState extends State<HomeImageSliderSection> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)),
      builder: (BuildContext context, s) =>
          s.connectionState == ConnectionState.done
              ? Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  width: MediaQuery.of(context).size.width,
                  height: height * 0.12,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageData.length,
                      itemBuilder: (_, index) {
                        var img = imageData[index];
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(
                                  width: 1.0, color: Colors.grey.shade200),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: NetworkImage(img.imageCategory),
                                fit: BoxFit.cover,
                              )),
                        );
                      }),
                )
              : Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  width: width,
                  height: height * 0.12,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageData.length,
                      itemBuilder: (_, index) {
                        // var img = imageData[index];
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                        );
                      }),
                ),
    );
  }
}

List<ImageCarousel> imageData = [
  ImageCarousel(
      imageCategory:
          "https://img.freepik.com/free-vector/various-agricultural-machinery-infographic-elements_1284-62912.jpg?w=1060&t=st=1686304271~exp=1686304871~hmac=652ffda67270d26068fb7b66a2c3f0f62e31ae8b54d754273cb4c33ab1e57e3d"),
  ImageCarousel(
      imageCategory:
          "https://img.freepik.com/free-vector/flat-design-geometric-metaverse-twitch-banner_23-2149437712.jpg?w=1060&t=st=1686304454~exp=1686305054~hmac=c9eedc3164bba515a0522cf6033163bdbde0104540616b24631fd82c423a2118"),
  ImageCarousel(
      imageCategory:
          "https://img.freepik.com/free-vector/flat-minimal-technology-twitter-header_23-2149088093.jpg?w=1060&t=st=1686304529~exp=1686305129~hmac=2e27e0408ee242e4907ff0379aebb6503eec46daaa707c52ed874729a0d307f3"),
  ImageCarousel(
      imageCategory:
          "https://img.freepik.com/free-vector/gradient-abstract-fluid-technology-linkedin-banner_23-2149171998.jpg?w=1060&t=st=1686304561~exp=1686305161~hmac=0b8b4301f143ee286653addc1116eb9c7243169fc6ab57dd4c3bef0a5c15612d"),
];

class ImageCarousel {
  String imageCategory;

  ImageCarousel({required this.imageCategory});
}
