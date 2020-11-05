class HomeView extends View<HomePage> {

  ViewHome(HomePage prop) : super(prop);

  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(prop.judul),
          ),
          body: FlatButton(onPressed: () {
            // refresh method is equal with setState
            prop.refresh( () {
              prop.mencoba();
            });
          }
          , child: Text('OKE'))
      );
  }
}