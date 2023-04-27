import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/events_controller.dart';

class EventsView extends GetView<EventsController> {
  const EventsView({Key? key}) : super(key: key);

  /// I picked these links & images from internet
  final String _errorImage =
      "https://i.ytimg.com/vi/z8wrRRR7_qU/maxresdefault.jpg";
  final String _url1 = "https://www.ai-expo.net/northamerica/";
  final String _url2 =
      "https://www.artificialintelligence-news.com/events/2022/feb/04/cyber-security-cloud-congress-global-30-nov-1-dec-2023/";
  final String _url3 =
      "https://www.digitaltransformation-week.com/northamerica/";
  final String _url4 = "https://www.youtube.com/watch?v=W1pNjxmNHNQ";
  final String _url5 = "https://flutter.dev/";
  final String _url6 =
      "https://www.amazon.com/gp/product/B00JZEW4XS?ie=UTF8&th=1&linkCode=li1&tag=pratiksharu-20&linkId=1d34bc8b2b8b01132376486955c5d313&language=en_US&ref_=as_li_ss_il";
  final String _url7 =
      "https://www.artificialintelligence-news.com/2023/03/24/what-will-ai-regulation-look-like-for-businesses/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: Text(
          'events_tab_title'.tr,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnyLinkPreview(
              link: _url1,
              displayDirection: UIDirection.uiDirectionHorizontal,
              cache: Duration(hours: 1),
              backgroundColor: Colors.grey[300],
              errorWidget: Container(
                color: Colors.grey[300],
                child: Text('Oops!'),
              ),
              errorImage: _errorImage,
            ),
            SizedBox(height: 25),
            AnyLinkPreview(
              link: _url2,
              displayDirection: UIDirection.uiDirectionHorizontal,
              showMultimedia: true,
              bodyMaxLines: 5,
              bodyTextOverflow: TextOverflow.ellipsis,
              titleStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              bodyStyle: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: 25),
            AnyLinkPreview(
              displayDirection: UIDirection.uiDirectionHorizontal,
              link: _url3,
              errorBody: 'Show my custom error body',
              errorTitle: 'Next one is youtube link, error title',
            ),
            SizedBox(height: 25),
            // Custom preview builder
          ],
        ),
      ),
    );
  }
}
