import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: isLargeScreen
          ? null
          : AppBar(
              title: Text('Profile'),
            ),
      drawer: isLargeScreen ? null : SideBar(),
      backgroundColor: Colors.green[50],
      body: Row(
        children: [
          if (isLargeScreen) SideBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Denilson Santos',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Universitas Pendidikan Nasional',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24),
                    Card(
                      elevation: 2,
                      child: Container(
                        width: 2000,
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ABOUT',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Nama saya Denilson Redentor Antonio Dos Santos Freitas; '
                              'lahir pada tanggal 4 September 2003 di Dili, Timor Leste. '
                              'Saya adalah anak kedua dari dua bersaudara. Saat ini, '
                              'saya berkesempatan untuk menempuh pendidikan Sarjana di '
                              'Universitas Pendidikan Nasional, dengan jurusan Teknologi Informasi, '
                              'yang menjadi wadah bagi saya dalam mengasah kompetensi serta '
                              'memperkaya ilmu pengetahuan di bidang teknologi.',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Card(
                      elevation: 2,
                      child: Container(
                        width: 2000,
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CONTACT INFORMATION',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16),
                            InfoRow(label: 'Phone:', value: '+62 81237328149'),
                            InfoRow(
                                label: 'Email:',
                                value: 'denilsonsantos0409@gmail.com'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Card(
                      elevation: 2,
                      child: Container(
                        width: 2000,
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KEMAMPUAN',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'SMA  : Externato Sao Jose Dili',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'SMP  : Externato Sao Jose Dili',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'SMP  : Externato Sao Jose Dili',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.green[800],
      child: Column(
        children: [
          SizedBox(height: 40),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
          SizedBox(height: 16),
          Text(
            'Denilson Santos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Universitas Pendidikan Nasional',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 32),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text('Home', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text('About', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.school, color: Colors.white),
            title: Text('Pendidikan', style: TextStyle(color: Colors.white)),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '@denisantoss\nDesigned by Denilson Santos',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$label ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
