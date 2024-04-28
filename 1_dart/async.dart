class DataService {
  Future<String> _fetchDataFromCloud() async {
    await Future.delayed(Duration(seconds: 4));
    print('data fetched from cloud');
    return 'fake data';
  }

  Future<String> _parseDataFromCloud(
      {required String stringDataFromCloud}) async {
    await Future.delayed(Duration(seconds: 2));
    print('data parsed');
    return 'fake parsed data';
  }

  Future fetchData() async {
    final String stringDataFromCloud = await this._fetchDataFromCloud();
    final String parsedData = await this
        ._parseDataFromCloud(stringDataFromCloud: (stringDataFromCloud));

    // dart also supports chaining e.g. .then()
    // but await preferred really
    // final String parsedData =
    //     await this._fetchDataFromCloud().then((stringDataFromCloud) async {
    //   return await this
    //       ._parseDataFromCloud(stringDataFromCloud: stringDataFromCloud);
    // });

    return parsedData;
  }
}

void main() async {
  DataService dataService = DataService();

  print('Fetching data using data service');
  final String data = await dataService.fetchData();

  print('data from cloud is: $data');
}
