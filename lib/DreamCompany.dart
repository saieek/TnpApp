import 'package:flutter/material.dart';

// Model representing a dream company
class DreamCompany {
  final String name;
  final String details;

  DreamCompany({required this.name, required this.details});
}

class MyDreamCompany extends StatefulWidget {
  const MyDreamCompany({Key? key}) : super(key: key);

  @override
  State<MyDreamCompany> createState() => _MyDreamCompanyState();
}

class _MyDreamCompanyState extends State<MyDreamCompany> {
  // List of dream companies with details
  List<DreamCompany> dreamCompanies = [
    DreamCompany(name: 'Dream Company 1', details: 'Details of Dream Company 1'),
    DreamCompany(name: 'Dream Company 2', details: 'Details of Dream Company 2'),
    DreamCompany(name: 'Dream Company 3', details: 'Details of Dream Company 3'),
    DreamCompany(name: 'Dream Company 4', details: 'Details of Dream Company 4'),
    DreamCompany(name: 'Dream Company 5', details: 'Details of Dream Company 5'),
    DreamCompany(name: 'Dream Company 6', details: 'Details of Dream Company 6'),
    DreamCompany(name: 'Dream Company 7', details: 'Details of Dream Company 7'),
    DreamCompany(name: 'Dream Company 8', details: 'Details of Dream Company 8'),
    DreamCompany(name: 'Dream Company 9', details: 'Details of Dream Company 9'),
    DreamCompany(name: 'Dream Company 10', details: 'Details of Dream Company 10'),
    DreamCompany(name: 'Dream Company 11', details: 'Details of Dream Company 11'),
    DreamCompany(name: 'Dream Company 12', details: 'Details of Dream Company 12'),
    DreamCompany(name: 'Dream Company 13', details: 'Details of Dream Company 13'),
    DreamCompany(name: 'Dream Company 14', details: 'Details of Dream Company 14'),
    DreamCompany(name: 'Dream Company 15', details: 'Details of Dream Company 15'),
    DreamCompany(name: 'Dream Company 16', details: 'Details of Dream Company 16'),
    DreamCompany(name: 'Dream Company 17', details: 'Details of Dream Company 17'),
    DreamCompany(name: 'Dream Company 18', details: 'Details of Dream Company 18'),
    DreamCompany(name: 'Dream Company 19', details: 'Details of Dream Company 19'),
    DreamCompany(name: 'Dream Company 20', details: 'Details of Dream Company 20'),
    // Add details for other dream companies
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dream Company Infos'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF375DE8),
              Color(0xFFE100FF),
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: dreamCompanies.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(dreamCompanies[index].name),
              onTap: () {
                // Navigate to a new state for the selected dream company
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompanyDetails(dreamCompanies[index])),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class CompanyDetails extends StatelessWidget {
  final DreamCompany company;

  CompanyDetails(this.company);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add company logo here
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              child: Image.network(
                'https://example.com/logo.png', // Replace with actual logo URL
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(height: 10),
            Text(
              company.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              company.details,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Heading 1:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Info 1',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            // Add more headings and info as needed
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
//
// class MyDreamCompany extends StatefulWidget {
//   const MyDreamCompany({Key? key});
//
//   @override
//   State<MyDreamCompany> createState() => _MyDreamCompanyState();
// }
//
// class _MyDreamCompanyState extends State<MyDreamCompany> {
//   List<String> dreamCompanies = [
//     'Dream Company 1',
//     'Dream Company 2',
//     'Dream Company 3',
//     'Dream Company 4',
//     'Dream Company 5',
//     'Dream Company 6',
//     'Dream Company 7',
//     'Dream Company 8',
//     'Dream Company 9',
//     'Dream Company 10',
//     'Dream Company 11',
//     'Dream Company 12',
//     'Dream Company 13',
//     'Dream Company 14',
//     'Dream Company 15',
//     'Dream Company 16',
//     'Dream Company 17',
//     'Dream Company 18',
//     'Dream Company 19',
//     'Dream Company 20',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dream Company Infos'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFF375DE8),
//               Color(0xFFE100FF),
//             ],
//           ),
//         ),
//         child: ListView.builder(
//           itemCount: dreamCompanies.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(dreamCompanies[index]),
//               onTap: () {
//                 // Navigate to a new state for the selected dream company
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => CompanyDetails(dreamCompanies[index])),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class CompanyDetails extends StatelessWidget {
//   final String companyName;
//
//   CompanyDetails(this.companyName);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Company Details'),
//       ),
//       body: Center(
//         child: Text('Details of $companyName will be shown here'),
//       ),
//     );
//   }
// }
