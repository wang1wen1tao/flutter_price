import 'package:flutter/material.dart';

class SilverAppBarScrollPage extends StatelessWidget {
  static final _tabs = ['tab1', 'tab2', 'tab3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          DefaultTabController(length: _tabs.length, child: _Body(tabs: _tabs)),
    );
  }
}

class _Body extends StatefulWidget {
  final List<String> tabs;

  _Body({Key key, @required this.tabs}) : super(key: key);

  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  final _items = {
    'Tab1': <String>[],
    'Tab2': <String>[],
    'Tab3': <String>[],
  };

  final _controller = ScrollController();
  @override
  void dispose() {
    _controller.removeListener(_scrollListener);

    super.dispose();
  }

  void _scrollListener() {
    final index = DefaultTabController.of(context).index;
    if (_controller.position.pixels == _controller.position.maxScrollExtent) {
      _loadItems(widget.tabs[index]);
    }
  }

  void _loadItems(String name) {
    setState(() {
      final start = _items[name].length;
      _items[name].addAll(List.generate(20, (i) => 'Item ${start + i}'));
    });
  }

  _buildSilverAppBar(BuildContext context, bool innerBoxIsScrolled) {
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      child: SliverAppBar(
        expandedHeight: 240,
        forceElevated: innerBoxIsScrolled,
        flexibleSpace: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(
                flex: 5,
              ),
              Text(
                'Silver App Bar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'Intro',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              Spacer(flex: 5),
            ],
          ),
        ),
        bottom: TabBar(
          tabs: widget.tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
    );
  }

  _buildTabBarView() {
    return TabBarView(
      children: widget.tabs
          .map((name) => SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                    builder: (context) => CustomScrollView(
                          key: PageStorageKey<String>(name),
                          slivers: <Widget>[
                            SliverOverlapInjector(
                                handle: NestedScrollView
                                    .sliverOverlapAbsorberHandleFor(context)),
                            SliverList(
                                delegate: SliverChildBuilderDelegate(
                              (context, index) => ListTile(
                                title: Text('$name Item $index'),
                              ),
                              childCount: _items.length,
                            ))
                          ],
                        )),
              ))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: _controller,
      headerSliverBuilder: (context, innerBoxIsScrolled) =>
          [_buildSilverAppBar(context, innerBoxIsScrolled)],
      body: _buildTabBarView(),
    );
  }
}
