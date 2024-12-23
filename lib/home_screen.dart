import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(
              color: Color(0xFF1877F2),
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('assets/images/Plus.png'),
                color: Color(0xFF242527),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('assets/images/Search.png'),
                color: Color(0xFF242527),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('assets/images/Messenger.png'),
                color: Color(0xFF242527),
              ),
            ),
          ],
          bottom: TabBar(
              indicatorColor: Color(0xFF1877F2),
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Color(0xFF1877F2),
              unselectedLabelColor: Color(0xFF242527),
              tabs: [
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/home.png'),
                  ),
                ),
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/vid.png'),
                  ),
                ),
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/Store.png'),
                  ),
                ),
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/Profile.png'),
                  ),
                ),
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/Notification.png'),
                  ),
                ),
                Tab(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/ronaldo.png',
                    ),
                  ),
                ),
              ]),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 5,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/ronaldo.png'),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'What’s in Your Mind?',
                      style: TextStyle(
                        color: Color(0xFF898F9C),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage('assets/images/imagePluse.png'),
                        color: Color(0xFF0DE571),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 5,
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                thickness: 2,
                color: Color(0xFF898F9C),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: size.height * 0.24,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return SizedBox(
                          width: size.height * 0.19,
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Column(
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            ),
                                            child: Image.asset(
                                              'assets/images/ronaldo.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xFF1877F2),
                                        child: Icon(
                                          Icons.add,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Create a story',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      return SizedBox(
                        width: size.height * 0.19,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage('assets/images/uyd.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFF1877F2),
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/ismaily.png'),
                                  radius: 25,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'City Guards',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Divider(
                thickness: 2,
                color: Color(0xFF898F9C),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/ismaily.png'),
                            radius: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'City Guards',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "8h",
                                    style: TextStyle(
                                      color: Color(0xFF898F9C),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.public,
                                    size: 12,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Color(0xFF242527),
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Image(
                      width: double.infinity,
                      image: AssetImage('assets/images/uyd.png'),
                      fit: BoxFit.cover,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.thumb_up,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.comment,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.bookmark_outline,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Color(0xFF898F9C),
                    ),
                  ],
                ),
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
