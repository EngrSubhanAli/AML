class ForensicAnalysisDataModel {
  String? id;
  String? screeningToken, tag, status, created, company;
  ForensicAnalysisDataModel(
      {this.company,
      this.created,
      this.tag,
      this.id,
      this.screeningToken,
      this.status});
}

class ScreeningDataModel {
  String? name;
  String? screeningToken,
      externalId,
      DocumentNumber,
      Nationality,
      status,
      Tag,
      CompletedBy,
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
      this.Tag,
      this.CompletedBy,
      this.status});
}

class InvitationSentModel {
  String? name;
  String? screeningToken,
      Email,
      Completed,
      UpdateRequested,
      LinkOpened,
      created,
      company;
  InvitationSentModel(
      {this.Completed,
      this.UpdateRequested,
      this.company,
      this.created,
      this.Email,
      this.name,
      this.screeningToken,
      this.LinkOpened});
}

class CredentiaManagmentModel {
  String? clientId;
  String? secret, btnText;

  CredentiaManagmentModel({
    this.clientId,
    this.secret,
    this.btnText,
  });
}

class WebHookManagmentModel {
  String? WebHookUrl;
  String? WebHookSecret, btnText;

  WebHookManagmentModel({
    this.WebHookUrl,
    this.WebHookSecret,
    this.btnText,
  });
}

class AddCommentModel {
  String? comment;

  AddCommentModel({
    this.comment,
  });
}
