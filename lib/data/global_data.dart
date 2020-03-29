class GlobalData {
  final int id;
  final String countryRegion;
  final int lastUpdate;
  final int lat;
  final int long;
  final int confirmed;
  final int death;
  final int recovered;
  final int active;

  GlobalData(
      {this.id,
      this.countryRegion,
      this.lastUpdate,
      this.lat,
      this.long,
      this.confirmed,
      this.death,
      this.recovered,
      this.active});

  GlobalData.fromJson(Map<String, dynamic> json)
      : id = json["OBJECTID"],
        countryRegion = json["Country_Region"],
        lastUpdate = json["Last_Update"],
        lat = json["Lat"],
        long = json["Long_"],
        confirmed = json["Confirmed"],
        death = json["Deaths"],
        recovered = json["Recovered"],
        active = json["Active"];
}
