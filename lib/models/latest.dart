import 'package:train/styles/images.dart';

class LatestNews {
  final String id,
      imagePath,
      storeName,
      monthYear,
      discount,
      oldPrice,
      newPrice;
  LatestNews(
      {this.id,
      this.imagePath,
      this.storeName,
      this.monthYear,
      this.discount,
      this.oldPrice,
      this.newPrice});
}

final List<LatestNews> latestNewsList = [
  LatestNews(
      id: '1',
      imagePath: apple,
      storeName: 'Apple',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice:
          'Sudanese is witnessing a rise in youth-led environmental startups who wants to protect their country future',
      newPrice:
          'Currently, the lab has accumulated dozens of leading technologies in face, image and audio analysis fields, and created the world record in the international competition. Through cloud services, intelligent hardware, industry solutions'),
  LatestNews(
      id: '2',
      imagePath: camping,
      storeName: 'Labondy',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice:
          'Established in Shenzhen in 2016, Tencent AI Lab is a leading AI research and engineering lab of Tencent. ',
      newPrice:
          ' Dr. Tong Zhang, the famous expert on machine learning and big data, the lab was backed by 50 world-class research scientists and 200 experienced engineers in China and US. Its research focuses on four key areas: machine learning'),
  LatestNews(
      id: '3',
      imagePath: lebon,
      storeName: 'Wardrobes',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice:
          'Tencent PC Manager is China’s first online security software that incorporates both protection from the axis',
      newPrice:
          'Tencent Mobile Manager is mobile security and management software available on Android, iOS and Windows operating systems. Tencent Mobile Manager is currently the most used mobile security software in the China market defined by line'),
  LatestNews(
      id: '4',
      imagePath: london,
      storeName: 'Wardrobes',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice:
          'Sudanese is witnessing a rise in youth-led environmental startups who wants to protect their country future',
      newPrice:
          'Currently, the lab has accumulated dozens of leading technologies in face, image and audio analysis fields, and created the world record in the international competition. Through cloud services, intelligent hardware, industry solutions'),
  LatestNews(
      id: '5',
      imagePath: luis,
      storeName: 'Luois Vutton',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice:
          'Tencent PC Manager is China’s first online security software that incorporates both protection from the axis',
      newPrice:
          'Tencent Mobile Manager is mobile security and management software available on Android, iOS and Windows operating systems. Tencent Mobile Manager is currently the most used mobile security software in the China market defined by line'),
  LatestNews(
    id: '6',
    imagePath: macy,
    storeName: 'Macy',
    monthYear: 'Feb 2019',
    discount: '45',
    oldPrice:
        'Established in Shenzhen in 2016, Tencent AI Lab is a leading AI research and engineering lab of Tencent. ',
    newPrice:
        'Amidst such a competitive food delivery landscape, Fastbee has thrown in the towel and announced that it will be ceasing operations today. Kar Kiat revealed to Channel NewsAsia that the startup has had difficulty raising funding to support business operations. Earlier this year, it had actively sought venture capital (VC) and has since expanded its search to include traditional investors as well. But by April, its cashflow was running low as talks with a potential investor dragged on, he said. They had to resort to reducing the number of vending machine locations from 10 to 6, but it was still tough for them to hold the financial fort without any fresh funding.',
  ),
  LatestNews(
    id: '7',
    imagePath: paris,
    storeName: 'Channel',
    monthYear: 'Feb 2019',
    discount: '45',
    oldPrice:
        'Tencent PC Manager is China’s first online security software that incorporates both protection from the axis',
    newPrice:
        ' that it will be ceasing operations today. Kar Kiat revealed to Channel NewsAsia that the startup has had difficulty raising funding to support business operations. Earlier this year, it had actively sought venture capital (VC) and has since expanded its search to include traditional investors as well. But by April, its cashflow was running low as talks with a potential investor dragged on, he said. They had to resort to reducing the number of vending machine',
  ),
  LatestNews(
    id: '8',
    imagePath: tulors,
    storeName: 'Marriot',
    monthYear: 'Feb 2019',
    discount: '45',
    oldPrice:
        'Sudanese is witnessing a rise in youth-led environmental startups who wants to protect their country future',
    newPrice:
        'Amidst such a competitive food delivery landscape, Fastbee has thrown in the towel and announced that it will be ceasing operations today. Kar Kiat revealed to Channel NewsAsia that the startup has had difficulty raising funding to support business operations. Earlier this year, it had actively sought venture capital (VC) and has since expanded its search to include traditional investors as well. But by April, its cashflow was running low as talks with a potential investor dragged on, he said. They had to resort to reducing the number of vending machine locations from 10 to 6, but it was still tough for them to hold the financial fort without any fresh funding.',
  ),
];
