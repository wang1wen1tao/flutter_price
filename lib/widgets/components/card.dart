import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import '../../page.dart';

class JwTDraw extends StatefulWidget {
  JwTDraw({Key key}) : super(key: key);

  @override
  _JwTDrawState createState() => _JwTDrawState();
}

class _JwTDrawState extends State<JwTDraw> {
  //app的版本号
  static PackageInfo _package;
  static var _isHome = true;
  static final _panels = [
    {
      'title': 'Widget',
      'isExpanded': false,
      'items': [
        {
          'title': 'Basic',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => WidgetBasicPage(),
        },
        {
          'title': 'Material',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => WidgetMaterialPage(),
        },
      ],
    },
    {
      'title': 'Layout',
      'isExpanded': false,
      'items': [
        {
          'title': 'Horizontal and Vertical Align',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => HoriVertAlignPage(),
        },
        {
          'title': 'Horizontal and Vertical Sizing',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => HoriVertSizingPage(),
        },
        {
          'title': 'Horizontal and Vertical Packing',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => HoriVertPackingPage(),
        },
        {
          'title': 'Container',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => ContainerPage(),
        },
        {
          'title': 'Grid View Extent',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => GridViewExtentPage(),
        },
        {
          'title': 'Grid View Count',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => GridViewCountPage(),
        },
        {
          'title': 'List View',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => ListViewPage(),
        },
        {
          'title': 'Stack',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => StackPage(),
        },
        {
          'title': 'Card',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CardPage(),
        },
        {
          'title': 'Pavlova',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => PavlovaPage(),
        },
        {
          'title': 'Lake',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => LakePage(),
        },
      ],
    },
    {
      'title': 'Ineraction',
      'isExpanded': false,
      'items': [
        {
          'title': 'Favorite Lake',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => FavoriteLakePage(),
        },
        {
          'title': 'Refresh Indicator',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => RefreshIndicatorPage(),
        },
        {
          'title': 'Silver App Bar',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => SilverAppBarScrollPage(),
        },
      ],
    },
    {
      'title': 'Asset',
      'isExpanded': false,
      'items': [],
    },
    {
      'title': 'Navigation',
      'isExpanded': false,
      'items': [
        {
          'title': 'Basic',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => BasicNavigationPage(),
        },
        {
          'title': 'Named Route',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => NamedRoutePage(),
        },
        {
          'title': 'Send Data',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => SendDataPage(),
        },
        {
          'title': 'Return Data',
          'isSelected': false,
          // 'pageBuilder': (BuildContext context) => ReturnDataPage(),
        },
        {
          'title': 'Hero',
          'isSelected': false,
          // 'pageBuilder': (BuildContext context) => HeroPage(),
        },
        {
          'title': 'Nested',
          'isSelected': false,
          //'pageBuilder': (BuildContext context) => NestedNavigationPage(),
        },
        {
          'title': 'TabBar',
          'isSelected': false,
          //'pageBuilder': (BuildContext context) => TabBarNavigationPage(),
        },
      ],
    },
    {
      'title': 'State',
      'isExpanded': false,
      'items': [
        {
          'title': 'Tabbox',
          'isSelected': false,
          // 'pageBuilder': (BuildContext context) => TapboxPage(),
        },
        {
          'title': 'Counter',
          'isSelected': false,
          //'pageBuilder': (BuildContext context) => StateCounterPage(),
        },
      ],
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PackageInfo.fromPlatform().then((pack) => {
          setState(() {
            _package = pack;
          })
        });
  }

  void _goHome() {
    _isHome = true;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Homepage()));
    _resetsPanel();
  }

  void _onExpand(index, isExpend) {
    _panels[index]['isExpanded'] = !isExpend;
    print(_panels[index]['isExpanded']);
  }

  void _onSelected(Map<String, Object> panel, Map<String, Object> item) {
    print(item);
    _isHome = false;
    panel['isExpanded'] = true;
    item['isExpanded'] = true;
    Navigator.of(context).push(MaterialPageRoute(builder: item['pageBuilder']));
  }

  void _resetsPanel() {
    _panels.forEach((panel) {
      panel['isExpanded'] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Center(
            child: Text(
              'First Demo',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
          ListTile(
            onTap: _goHome,
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            selected: _isHome,
            dense: true,
          ),
          ExpansionPanelList(
            expansionCallback: _onExpand,
            children: _panels
                .asMap()
                .map((index, panel) => MapEntry(
                    index,
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) => ListTile(
                        onTap: () => _onExpand(index, panel['isExpanded']),
                        title: Text(panel['title']),
                        selected: isExpanded,
                        dense: true,
                      ),
                      body: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: (panel['items'] as List)
                              .map((item) => ListTile(
                                    onTap: () => _onSelected(panel, item),
                                    title: Text(item['title']),
                                    selected: item['isSelected'],
                                    dense: true,
                                    enabled: item['pageBuilder'] != null,
                                  ))
                              .toList(),
                        ),
                      ),
                      isExpanded: panel['isExpanded'],
                    )))
                .values
                .toList(),
          ),
          if (_package != null)
            AboutListTile(
              applicationName: _package.appName,
              applicationLegalese: 'Copyright © Jagger Wang',
              applicationVersion: _package.version,
            ),
        ],
      ),
    );
  }
}
