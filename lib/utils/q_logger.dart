import 'package:logger/logger.dart';

var qLogger = Logger(
  printer: PrettyPrinter(),
);

var qLoggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);
