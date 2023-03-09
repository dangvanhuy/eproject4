import 'package:eproject/app/modules/truckmonitoring/model/chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartOder extends StatefulWidget {
  const ChartOder({Key? key}) : super(key: key);

  @override
  State<ChartOder> createState() => _ChartOderState();
}

class _ChartOderState extends State<ChartOder> {
  late List<ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    data = [
      ChartData('Mới', 12),
      ChartData('Kế hoạch', 15),
      ChartData('Vận chuyển', 30),
      ChartData('Hoàn tất', 90),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trạng thái đơn"),
        centerTitle: true,
      ),
      body: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
        tooltipBehavior: _tooltip,
        series: <ChartSeries<ChartData, String>>[
          ColumnSeries<ChartData, String>(
              dataSource: data,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              name: 'Gold',
              color: Color.fromRGBO(8, 142, 255, 1))
        ],
      ),
    );
  }
}
