import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Initialize the data sourcefinal
  final List<ChartSampleData> chartData = <ChartSampleData>[
    ChartSampleData(x: 'Jan', y: 23),
    ChartSampleData(x: 'Feb', y: 24),
    ChartSampleData(x: 'Mar', y: 23),
    ChartSampleData(x: 'Apr', y: 22),
    ChartSampleData(x: 'May', y: 21),
    ChartSampleData(x: 'Jun', y: 27),
    ChartSampleData(x: 'Jul', y: 33),
    ChartSampleData(x: 'Aug', y: 36),
    ChartSampleData(x: 'Sep', y: 23),
    ChartSampleData(x: 'Oct', y: 25),
    ChartSampleData(x: 'Nov', y: 22)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: SfCartesianChart(
        primaryXAxis: CategoryAxis(plotBands: <PlotBand>[
          PlotBand(
              start: 7, end: 7, borderWidth: 2, dashArray: const <double>[4, 5])
        ]),
        primaryYAxis: NumericAxis(plotBands: <PlotBand>[
          PlotBand(
              start: 36, end: 36, borderWidth: 2, dashArray: const <double>[4, 5])
        ]),
        series: <ChartSeries<ChartSampleData, String>>[
          LineSeries<ChartSampleData, String>(
              dataSource: chartData,
              xValueMapper: (ChartSampleData data, _) => data.x,
              yValueMapper: (ChartSampleData data, _) => data.y)
        ],
      )),
    );
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.y});
  final String? x;
  final num? y;
}
