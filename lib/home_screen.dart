import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.groups),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              Icon(Icons.camera_alt),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.search),
              SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text('New Group')),
                        PopupMenuItem(value: 2, child: Text('New broadcast')),
                        PopupMenuItem(value: 3, child: Text('Linked Devices')),
                        PopupMenuItem(
                            value: 4, child: Text('Starred messages')),
                        PopupMenuItem(value: 5, child: Text('Settings')),
                        PopupMenuItem(value: 6, child: Text('Switch accounts')),
                      ])
            ],
          ),
          body: TabBarView(
            children: [
              Text('Groups'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Shayan Noor'),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.check,
                            size: 18,
                            color: Colors.blueAccent,
                          ),
                          Text(' ha Alaka snga ye')
                        ],
                      ),
                      trailing: Text('12:20'),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        // backgroundColor: Colors.black,
                        // child: Icon(Icons.account_circle,color: Colors.white ,),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(index == 0?"My status" : 'Shayan Noor'),
                      subtitle: Row(
                        children: [
                          Text(index == 0? '31 views' :'21m Ago')
                        ],
                      ),
                      trailing: Text(index == 0? 'Today, 5:03 PM' : 'Unseened'),
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green,width: 3),
                        ),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),

                        ),
                      )
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Shayan Noor'),
                      subtitle: Row(
                        children: [
                          Text(
                            '↙',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          Text(' Today, 11:52 AM')
                        ],
                      ),
                      trailing: Icon(
                        index / 2 == 0 ? Icons.call : Icons.video_call,
                        color: Colors.green,
                      ),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        // backgroundColor: Colors.black,
                        // child: Icon(Icons.account_circle,color: Colors.white ,),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
