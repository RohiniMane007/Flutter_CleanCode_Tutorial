import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// import 'config/routes/routes.dart';
// import 'config/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      // initialRoute: RoutesName.splashScreen,
      // onGenerateRoute: Routes.generateRoute,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ChartData> chartData = <ChartData>[
    
    ChartData("Sat", 2.43),
    ChartData("sun", 4.43),
    ChartData("mon", 3.43),
    ChartData("tues", 5.43),
    ChartData("wed", 4.43),
    ChartData("thu", 3.6),
    ChartData("fri", 4.6),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Graph"),
      ),
      body: Center(
          child: SizedBox(
        width: 1000,
        child: SfCartesianChart(
          primaryXAxis: const CategoryAxis(
           labelPlacement: LabelPlacement.onTicks,
              interval: 1,
            minimum: 0, 
          ),
          primaryYAxis: const NumericAxis(
              minimum: 0, // Start y-axis from 0
              
            ),
          series: <CartesianSeries>[
          SplineAreaSeries<ChartData, String>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y),
          
        ]),
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
  // final double y1;
}
