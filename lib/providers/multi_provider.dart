import 'package:provider/provider.dart';

import '../views/dashboard/controller/dashboard_provider.dart';

var multiProvider = [
  ChangeNotifierProvider<DashboardProvider>(
    create: (_) => DashboardProvider(),
    lazy: true,
  ),

];
