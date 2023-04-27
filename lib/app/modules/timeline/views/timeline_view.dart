import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:timelines/timelines.dart';

import '../controllers/timeline_controller.dart';

class TimelineView extends GetView<TimelineController> {
  const TimelineView({Key? key}) : super(key: key);

  /// I picked these links & images from internet
  final String _errorImage =
      "https://i.ytimg.com/vi/z8wrRRR7_qU/maxresdefault.jpg";
  final String _url0 = "https://github.com/nlpxucan/WizardLM";
  final String _url11 = "https://lifearchitect.ai/gpt-4/";
  final String _url1 = "https://openai.com/blog/chatgpt-plugins";
  final String _url2 = "https://openai.com/blog/chatgpt";
  final String _url3 =
      "https://www.digitaltransformation-week.com/northamerica/";
  final String _url4 = "https://www.youtube.com/watch?v=W1pNjxmNHNQ";
  final String _url5 =
      "https://openai.com/blog/dall-e-now-available-without-waitlist";
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
          'timeline_tab_title'.tr,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            child: AnyLinkPreview(
              link: _url0,
              displayDirection: UIDirection.uiDirectionHorizontal,
              showMultimedia: true,
              cache: Duration(hours: 1),
              backgroundColor: Colors.grey[300],
              errorWidget: Container(
                color: Colors.grey[300],
                child: Text('Oops!'),
              ),
              errorImage: _errorImage,
            ),
          ),
          SizedBox(
            height: 50.0,
            child: TimelineNode.simple(),
          ),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.basic,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('GPT-4'),
              ),
              contentsBuilder: (context, index) => Card(
                child: AnyLinkPreview(
                  link: _url11,
                  showMultimedia: false,
                  displayDirection: UIDirection.uiDirectionHorizontal,
                  previewHeight: 100,
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.reverse,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('GPT-3 was Released'),
              ),
              contentsBuilder: (context, index) => Card(
                child: AnyLinkPreview(
                  link: _url2,
                  showMultimedia: false,
                  displayDirection: UIDirection.uiDirectionHorizontal,
                  previewHeight: 100,
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.basic,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ChatGPT was Released'),
              ),
              contentsBuilder: (context, index) => Card(
                child: AnyLinkPreview(
                  link: _url4,
                  displayDirection: UIDirection.uiDirectionHorizontal,
                  previewHeight: 100,
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.reverse,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('GPT-3 was Released'),
              ),
              contentsBuilder: (context, index) => Card(
                child: AnyLinkPreview(
                  link: _url3,
                  displayDirection: UIDirection.uiDirectionHorizontal,
                  previewHeight: 100,
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.basic,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ChatGPT was Released'),
              ),
              contentsBuilder: (context, index) => Card(
                child: AnyLinkPreview(
                  link: _url5,
                  showMultimedia: false,
                  displayDirection: UIDirection.uiDirectionHorizontal,
                  previewHeight: 100,
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.reverse,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('GPT-3 was Released'),
              ),
              contentsBuilder: (context, index) => Card(
                child: AnyLinkPreview(
                  link: _url2,
                  displayDirection: UIDirection.uiDirectionHorizontal,
                  previewHeight: 100,
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.basic,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ChatGPT was Released'),
              ),
              contentsBuilder: (context, index) => Card(
                child: AnyLinkPreview(
                  link: _url4,
                  displayDirection: UIDirection.uiDirectionHorizontal,
                  previewHeight: 100,
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.reverse,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('GPT-3 was Released'),
              ),
              contentsBuilder: (context, index) => Card(
                child: AnyLinkPreview(
                  link: _url3,
                  displayDirection: UIDirection.uiDirectionHorizontal,
                  previewHeight: 100,
                ),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
              itemCount: 1,
            ),
          )
        ]),
      ),
    );
  }
}
