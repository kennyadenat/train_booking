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
      monthYear: 'July, 2020',
      discount: '45',
      oldPrice:
          'Apple says it’s ‘committed’ to supporting Thunderbolt on new Macs after Intel details latest version',
      newPrice:
          'Currently, the lab has accumulated dozens of leading technologies in face, image and audio analysis fields, and created the world record in the international competition. Through cloud services, intelligent hardware, industry solutions'
          ),
  LatestNews(
      id: '2',
      imagePath: camping,
      storeName: 'Quibi',
      monthYear: 'July, 2020',
      discount: '45',
      oldPrice:
          'Report says Quibi lost 92% of its earliest users after free trials expired',
      newPrice:
          ' Dr. Tong Zhang, the famous expert on machine learning and big data, the lab was backed by 50 world-class research scientists and 200 experienced engineers in China and US. Its research focuses on four key areas: machine learning'),
  LatestNews(
      id: '3',
      imagePath: lebon,
      storeName: 'Whatsapp',
      monthYear: 'July, 2020',
      discount: '45',
      oldPrice:
          'WhatsApp Business, now with 50m MAUs, adds QR codes and catalog sharing',
      newPrice:
          'The global COVID-19 health pandemic has raised the stakes for businesses when it comes to using digital channels to connect with customers, and today WhatsApp unveiled its latest tools to help businesses use its platform to do just that. The Facebook-owned messaging behemoth is expanding the reach and use of QR codes to let customers easily connect with businesses on the platform, providing them also with a series of stickers (pictured below) to kick off “we’re open for business” campaigns; and it’s made it possible for businesses to start sharing WhatsApp-based catalogs — dynamic lists of items that can in turn be ordered by users as links outside of the WhatsApp platform itself.')
,
  LatestNews(
      id: '4',
      imagePath: london,
      storeName: 'Elon Musk',
      monthYear: 'July, 2020',
      discount: '45',
      oldPrice:
          'Elon Musk sets update on brain-computer interface company Neuralink for August 28',
      newPrice:
          'Elon Musk  said on Twitter this week that Neuralink, the company he founded in 2016 to develop computer-brain interfaces for the explicit purpose of helping humans keep pace with advanced artificial intelligence, will provide an update on its progress on August 28. The last major update from Neuralink  came roughly a year ago, when it shared that it will be using a surgical robot to implant gossamer-thin wires into a person’s brain, connected to an external computer processing unit, and that ultimately it hopes to make the connection between the two wireless for maximum freedom and flexibility. Neuralink revealed in July 2019 that it had already performed successful tests of its technology on mice and even apes, and that it would be pursuing testing on its first human subjects starting as early as the following year – which is this year, 2020, if you’re keeping track.'),
  LatestNews(
      id: '5',
      imagePath: luis,
      storeName: 'Google',
      monthYear: 'July, 2020',
      discount: '45',
      oldPrice:
          'Google reportedly cancelled a cloud project meant for countries including China',
      newPrice:
          'After reportedly spending a year and a half working on a cloud service meant for China and other countries, Google cancelled the project, called “Isolated Region,” in May due partly to geopolitical and pandemic-related concerns. Bloomberg reports that Isolated Region, shut down in May, would have enabled it to offer cloud services in countries that want to keep and control data within their borders. According to two Google employees who spoke to Bloomberg, the project was part of a larger initiative called “Sharded Google” to create data and processing infrastructure that is completely separate from the rest of the company’s network. Isolated Region began in early 2018 in response to Chinese regulations that mean foreign tech companies that want to enter the country need to form a joint venture with a local company that would hold control over user data. Isolated Region was meant to help meet requirements like this in China and other countries, while also addressing U.S. national security concerns'),
  LatestNews(
    id: '6',
    imagePath: macy,
    storeName: 'MariaDB',
    monthYear: 'July, 2020',
    discount: '45',
    oldPrice:
        'MariaDB raises \$25 more to expand its SkySQL cloud database platform',
    newPrice:
        'Cloud services continue to be a key component of how organisations remain operational even as so much else — such as physically working in enclosed offices — is forced to change because of the COVID-19 health pandemic. Today, MariaDB Corporation, the company behind MariaDB SkySQL and one of the startups leading the charge on open source cloud databases, is announcing \$25 million in funding to continue its growth. The money is coming in the form of an extension to the company’s Series C round, and it’s being led by SmartFin Capital, a Belgian VC, with participation also from previous investor GP Bullhound. (Side note: extensions to existing rounds seem to have become more frequent in recent months. That’s in part because extensions can be faster to close than opening and closing completely new rounds; in part because they are typically smaller amounts; and in part because fundraising has become a lot more challenging and harder to do in recent months, with people travelling and meeting in person much less, and sometimes not at all.) Notably, however, being an extension doesn’t mean the valuation is not changing. This latest infusion brings the total raised by MariaDB Corp. to over \$125 million, “doubling our valuation,” CEO Michael Howard noted in a statement.',
  ),
  LatestNews(
    id: '7',
    imagePath: paris,
    storeName: 'Microsoft',
    monthYear: 'July, 2020',
    discount: '45',
    oldPrice:
        'Microsoft makes Teams video meetings less tiring with its new Together mode',
    newPrice:
        'Video meetings. While the move to remote work during the COVID-19 pandemic may have made them mainstream, they are not without issues and more and more people are now opting out. For good reason. As it turns out, it’s really hard for our brains to sustain concentration while we’re trying to focus on 20 people in neat squares, all with different backgrounds and never quite looking at the camera. While we’ve had quite a bit of anecdotal evidence for this, Microsoft  today released some of the research it did in this area, as well as new features in Teams that it hopes will make video meetings easier and less tiring',
  ),
  LatestNews(
    id: '8',
    imagePath: tulors,
    storeName: 'Marriot',
    monthYear: 'July, 2020',
    discount: '45',
    oldPrice:
        'Amazon will start listing names and addresses of Marketplace sellers to combat counterfeiting',
    newPrice:
        'Amazon will start publicly listing the names and addresses of US-based third-party sellers on its Marketplace platform as a measure to fight counterfeiters, according to a report from Business Insider. The change was announced in a note sent to sellers on Wednesday, and the change goes into effect on September 1st. “These features help customers learn more about the businesses of a seller and the products that they are selling,” the note says, according to a copy obtained by Business Insider. “We are making this change to ensure there is a consistent baseline of seller information to help customers make informed shopping decisions.” The change in policy will make it harder to stay an anonymous seller on Marketplace, but it also means customers will know exactly which individual or entity they’re buying form and where that business is located.',
  ),
];
