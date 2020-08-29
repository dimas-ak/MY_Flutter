class ViewHome extends State<HomeController> {
  @override
  initState() {
    super.initState();
  }
  return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: FlatButton(onPressed: () {
          widget.mencoba();
        }
        , child: Text('OKE'))
    );
}