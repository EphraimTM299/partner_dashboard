// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "package:store_responsive_dashboard/components/constants.dart";
import "package:store_responsive_dashboard/providers/currentUser.dart";

class CustomersPage extends StatefulWidget {
  CustomersPage({super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  //setting the expansion function for the navigation rail
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    print(Provider.of<CurrentUser>(context, listen: false).getCurrentUser?.uid);
    return Scaffold(
      body: Row(
        children: [
          //Let's start by adding the Navigation Rail

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //let's add the navigation menu for this project

                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text(
                            "Customer Management",
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),

                    //Now let's start with the dashboard main rapports

                    //Now let's set the article section
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // CardWidget(
                        //     title: "Total Users",
                        //     metric: "4652",
                        //     subtitle: "Lifetime Users"),
                        // CardWidget(
                        //     title: "Total Customers",
                        //     metric: "3520",
                        //     subtitle: "Lifetime Customers"),
                        // CardWidget(
                        //     title: "Customers",
                        //     metric: "14",
                        //     subtitle: "New Customers Today"),
                        // CardWidget(
                        //     title: "Average Spend",
                        //     metric: "R 485.08",
                        //     subtitle: "Average to date"),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 380.0,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search Customers",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),

                    //let's set the filter section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back,
                              color: kPrimaryColor),
                          label: Text(
                            "${DateTime.now()}",
                            style: const TextStyle(color: kPrimaryColor),
                          ),
                        ),
                        Row(
                          children: [
                            DropdownButton(
                                hint: const Text("Filter by"),
                                items: [
                                  const DropdownMenuItem(
                                    value: "Customer Name",
                                    child: Text("Customer Name"),
                                  ),
                                  const DropdownMenuItem(
                                    value: "Date",
                                    child: Text("Registered Date"),
                                  ),
                                  const DropdownMenuItem(
                                    value: "Order Amount",
                                    child: Text("Order Amount"),
                                  ),
                                  const DropdownMenuItem(
                                    value: "Client Status",
                                    child: Text("Client Status"),
                                  ),
                                ],
                                onChanged: (value) {}),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    // Data Table
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DataTable(
                            showCheckboxColumn: true,
                            headingRowColor: MaterialStateProperty.resolveWith(
                                (states) => kPrimaryLightColor),
                            columns: [
                              const DataColumn(label: Text("ID")),
                              const DataColumn(label: Text("Customer ID")),
                              const DataColumn(
                                  label: Text("Customer First Name")),
                              const DataColumn(
                                  label: Text("Customer Last Name")),
                              const DataColumn(
                                  label: Text("Customer Cellphone")),
                              const DataColumn(label: Text("Customer Email")),
                              const DataColumn(
                                  label: Text("Total Orders Amount")),
                              const DataColumn(
                                  label: Text("Client Registered Date")),
                            ],
                            rows: [
                              DataRow(cells: [
                                const DataCell(Text("1")),
                                const DataCell(Text("1001")),
                                const DataCell(Text("Makurumidze")),
                                const DataCell(Text("TMakurumidze")),
                                const DataCell(Text("0622762061")),
                                const DataCell(Text("ephraimtamuka@gmail.com")),
                                const DataCell(Text("R4580.00")),
                                DataCell(Text("${DateTime.now()}")),
                              ]),
                              DataRow(cells: [
                                const DataCell(Text("1")),
                                const DataCell(Text("1001")),
                                const DataCell(Text("Makurumidze")),
                                const DataCell(Text("TMakurumidze")),
                                const DataCell(Text("0622762061")),
                                const DataCell(Text("ephraimtamuka@gmail.com")),
                                const DataCell(Text("R4580.00")),
                                DataCell(Text("${DateTime.now()}")),
                              ]),
                              DataRow(cells: [
                                const DataCell(Text("1")),
                                const DataCell(Text("1001")),
                                const DataCell(Text("Makurumidze")),
                                const DataCell(Text("TMakurumidze")),
                                const DataCell(Text("0622762061")),
                                const DataCell(Text("ephraimtamuka@gmail.com")),
                                const DataCell(Text("R4580.00")),
                                DataCell(Text("${DateTime.now()}")),
                              ]),
                              DataRow(cells: [
                                const DataCell(Text("1")),
                                const DataCell(Text("1001")),
                                const DataCell(Text("Makurumidze")),
                                const DataCell(Text("TMakurumidze")),
                                const DataCell(Text("0622762061")),
                                const DataCell(Text("ephraimtamuka@gmail.com")),
                                const DataCell(Text("R4580.00")),
                                DataCell(Text("${DateTime.now()}")),
                              ]),
                              DataRow(cells: [
                                const DataCell(Text("1")),
                                const DataCell(Text("1001")),
                                const DataCell(Text("Makurumidze")),
                                const DataCell(Text("TMakurumidze")),
                                const DataCell(Text("0622762061")),
                                const DataCell(Text("ephraimtamuka@gmail.com")),
                                const DataCell(Text("R4580.00")),
                                DataCell(Text("${DateTime.now()}")),
                              ]),
                              DataRow(cells: [
                                const DataCell(Text("1")),
                                const DataCell(Text("1001")),
                                const DataCell(Text("Makurumidze")),
                                const DataCell(Text("TMakurumidze")),
                                const DataCell(Text("0622762061")),
                                const DataCell(Text("ephraimtamuka@gmail.com")),
                                const DataCell(Text("R4580.00")),
                                DataCell(Text("${DateTime.now()}")),
                              ]),
                              DataRow(cells: [
                                const DataCell(Text("1")),
                                const DataCell(Text("1001")),
                                const DataCell(Text("Makurumidze")),
                                const DataCell(Text("TMakurumidze")),
                                const DataCell(Text("0622762061")),
                                const DataCell(Text("ephraimtamuka@gmail.com")),
                                const DataCell(Text("R4580.00")),
                                DataCell(Text("${DateTime.now()}")),
                              ]),
                            ]),
                        //Now let's set the pagination
                        const SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "1",
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "2",
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "3",
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "See All",
                                style: TextStyle(color: kPrimaryColor),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      //let's add the floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
