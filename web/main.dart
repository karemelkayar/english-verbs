import 'package:angular2/bootstrap.dart';
import 'package:english-verbs/app.dart';
import 'package:angular2/angular2.dart' show provide;
import 'package:angular2/router.dart' show ROUTER_PROVIDERS,APP_BASE_HREF, LocationStrategy, HashLocationStrategy;
import 'dart:html' show window;
import 'package:usage/usage_html.dart' show AnalyticsHtml, Analytics;

const String id = 'UA-71715642-3';
const String name = 'English-Verbs';
const String version = '0.3.0';

main() => bootstrap(
    AppComponent,[
    ROUTER_PROVIDERS,
    provide(APP_BASE_HREF, useValue: window.location.pathname),
    provide(LocationStrategy, useClass: HashLocationStrategy),
    provide(Analytics,useValue: new AnalyticsHtml(id,name,version))
]);
