import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/homePageController.dart';
import '../model/item_model.dart';
import '../services/itemService.dart';
import '../theme.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/enum.dart';
import 'ItemDetail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  ItemServices itemServices = ItemServices();
  List<ShopDataModel> items = [];
  final HomePageController controller = Get.put(HomePageController());

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: whiteColor,
        padding: const EdgeInsets.all(20.0),
        child: GetBuilder<HomePageController>(
          init: controller,
          builder: (_) => controller.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ShopItemListing(
                  items: controller.items,
                ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}

class ShopItemListing extends StatelessWidget {
  final List<ShopDataModel> items;

  ShopItemListing({required this.items});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Row(
          children: [
            const Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    faker.image.image(random: true, keywords: ["peopple"])),
                // AssetImage('assets/img/person.jpg'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Pilih dan pesan Gethukmu!',
          style: textTitleStyle
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Pilihan favorit',
          style: textTitle2Style
        ),

        // TabBar(

        //     indicatorColor: Colors.transparent,
        //     labelColor: primaryColor,
        //     isScrollable: true,
        //     labelPadding: EdgeInsets.only(right: 45),
        //     unselectedLabelColor: Color(0xffcdcdcd),
        //     tabs: [
        //       Tab(
        //         child: Text('Original',
        //             style: GoogleFonts.poppins(
        //               fontSize: 18,
        //               fontWeight: FontWeight.w400,
        //             )),
        //       ),
        //       Tab(
        //         child: Text('Coklat',
        //             style: GoogleFonts.poppins(
        //               fontSize: 18,
        //               fontWeight: FontWeight.w400,
        //             )),
        //       ),
        //       Tab(
        //         child: Text('Durian',
        //             style: GoogleFonts.poppins(
        //               fontSize: 18,
        //               fontWeight: FontWeight.w400,
        //             )),
        //       )
        //     ]),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemBuilder: (BuildContext context, int index) {
              return ItemView(
                item: items[index],
              );
            },
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}

class ItemView extends StatelessWidget {
  final ShopDataModel item;

  ItemView({required this.item});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkResponse(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ItemDetailPage(itemId: item.id)));
          },
          child: Material(
            child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 120.0,
                                child: Image.network(
                                  item.image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              child: item.fav
                                  ? Icon(
                                      Icons.favorite,
                                      size: 20.0,
                                      color: primaryColor,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      size: 20.0,
                                    ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "${item.name}",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.0,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Text(
                              "\Rp.${item.price}",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          )),
    );
  }
}
