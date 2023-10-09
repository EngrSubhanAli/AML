class ScreeningDataModel {
  String? name;
  String? screeningToken,
      externalId,
      DocumentNumber,
      Nationality,
      status,
      created,
      company;
  ScreeningDataModel(
      {this.DocumentNumber,
      this.Nationality,
      this.company,
      this.created,
      this.externalId,
      this.name,
      this.screeningToken,
      this.status});
}
