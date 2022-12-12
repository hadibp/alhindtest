
class ResponseModel {
  String? token;
  Journy? journy;
  String? errors;
  String? tripMode;
  String? message;
  String? currency;

  ResponseModel(
      {this.token,
      this.journy,
      this.errors,
      this.tripMode,
      this.message,
      this.currency});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['Token'];
    journy = json['Journy'] != null ? Journy.fromJson(json['Journy']) : null;
    errors = json['Errors'];
    tripMode = json['TripMode'];
    message = json['Message'] ?? 'j';
    currency = json['Currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Token'] = this.token;
    if (this.journy != null) {
      data['Journy'] = this.journy!.toJson();
    }
    data['Errors'] = this.errors;
    data['TripMode'] = this.tripMode;
    data['Message'] = this.message;
    data['Currency'] = this.currency;
    return data;
  }
}

class Journy {
  List<FlightOptions>? flightOptions;
  String? flightOption;
  String? hostTokens;
  String? errors;

  Journy({this.flightOptions, this.flightOption, this.hostTokens, this.errors});

  Journy.fromJson(Map<String, dynamic> json) {
    if (json['FlightOptions'] != null) {
      flightOptions = <FlightOptions>[];
      json['FlightOptions'].forEach((v) {
        flightOptions!.add(FlightOptions.fromJson(v));
      });
    }
    flightOption = json['FlightOption'];
    hostTokens = json['HostTokens'];
    errors = json['Errors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flightOptions != null) {
      data['FlightOptions'] =
          this.flightOptions!.map((v) => v.toJson()).toList();
    }
    data['FlightOption'] = this.flightOption;
    data['HostTokens'] = this.hostTokens;
    data['Errors'] = this.errors;
    return data;
  }
}

class FlightOptions {
  String? key;
  String? ticketingCarrier;
  String? apiType;
  Null? crsPnr;
  String? providerCode;
  int? availableSeat;
  List<FlightFares>? flightFares;
  List<FlightLegs>? flightLegs;
  bool? seatEnabled;
  bool? reprice;
  bool? fFNoEnabled;

  FlightOptions(
      {this.key,
      this.ticketingCarrier,
      this.apiType,
      this.crsPnr,
      this.providerCode,
      this.availableSeat,
      this.flightFares,
      this.flightLegs,
      this.seatEnabled,
      this.reprice,
      this.fFNoEnabled});

  FlightOptions.fromJson(Map<String, dynamic> json) {
    key = json['Key'];
    ticketingCarrier = json['TicketingCarrier'];
    apiType = json['ApiType'];
    crsPnr = json['CrsPnr'];
    providerCode = json['ProviderCode'];
    availableSeat = json['AvailableSeat'];
    if (json['FlightFares'] != null) {
      flightFares = <FlightFares>[];
      json['FlightFares'].forEach((v) {
        flightFares!.add(new FlightFares.fromJson(v));
      });
    }
    if (json['FlightLegs'] != null) {
      flightLegs = <FlightLegs>[];
      json['FlightLegs'].forEach((v) {
        flightLegs!.add(new FlightLegs.fromJson(v));
      });
    }
    seatEnabled = json['SeatEnabled'];
    reprice = json['Reprice'];
    fFNoEnabled = json['FFNoEnabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Key'] = this.key;
    data['TicketingCarrier'] = this.ticketingCarrier;
    data['ApiType'] = this.apiType;
    data['CrsPnr'] = this.crsPnr;
    data['ProviderCode'] = this.providerCode;
    data['AvailableSeat'] = this.availableSeat;
    if (this.flightFares != null) {
      data['FlightFares'] = this.flightFares!.map((v) => v.toJson()).toList();
    }
    if (this.flightLegs != null) {
      data['FlightLegs'] = this.flightLegs!.map((v) => v.toJson()).toList();
    }
    data['SeatEnabled'] = this.seatEnabled;
    data['Reprice'] = this.reprice;
    data['FFNoEnabled'] = this.fFNoEnabled;
    return data;
  }
}

class FlightFares {
  List<Fares>? fares;
  String? fID;
  String? refundableInfo;
  String? fareKey;
  double? aprxTotalBaseFare;
  double? aprxTotalTax;
  double? totalDiscount;
  Null? extrafare;
  double? aprxTotalAmount;
  Null? currency;
  Null? fareType;
  String? fareName;
  double? totalAmount;

  FlightFares(
      {this.fares,
      this.fID,
      this.refundableInfo,
      this.fareKey,
      this.aprxTotalBaseFare,
      this.aprxTotalTax,
      this.totalDiscount,
      this.extrafare,
      this.aprxTotalAmount,
      this.currency,
      this.fareType,
      this.fareName,
      this.totalAmount});

  FlightFares.fromJson(Map<String, dynamic> json) {
    if (json['Fares'] != null) {
      fares = <Fares>[];
      json['Fares'].forEach((v) {
        fares!.add(new Fares.fromJson(v));
      });
    }
    fID = json['FID'];
    refundableInfo = json['RefundableInfo'];
    fareKey = json['FareKey'];
    aprxTotalBaseFare = json['AprxTotalBaseFare'];
    aprxTotalTax = json['AprxTotalTax'];
    totalDiscount = json['TotalDiscount'];
    extrafare = json['Extrafare'];
    aprxTotalAmount = json['AprxTotalAmount'];
    currency = json['Currency'];
    fareType = json['FareType'];
    fareName = json['FareName'];
    totalAmount = json['TotalAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fares != null) {
      data['Fares'] = this.fares!.map((v) => v.toJson()).toList();
    }
    data['FID'] = this.fID;
    data['RefundableInfo'] = this.refundableInfo;
    data['FareKey'] = this.fareKey;
    data['AprxTotalBaseFare'] = this.aprxTotalBaseFare;
    data['AprxTotalTax'] = this.aprxTotalTax;
    data['TotalDiscount'] = this.totalDiscount;
    data['Extrafare'] = this.extrafare;
    data['AprxTotalAmount'] = this.aprxTotalAmount;
    data['Currency'] = this.currency;
    data['FareType'] = this.fareType;
    data['FareName'] = this.fareName;
    data['TotalAmount'] = this.totalAmount;
    return data;
  }
}

class Fares {
  String? pTC;
  double? baseFare;
  double? tax;
  double? discount;
  List<Splitup>? splitup;

  Fares({this.pTC, this.baseFare, this.tax, this.discount, this.splitup});

  Fares.fromJson(Map<String, dynamic> json) {
    pTC = json['PTC'];
    baseFare = json['BaseFare'];
    tax = json['Tax'];
    discount = json['Discount'];
    if (json['Splitup'] != null) {
      splitup = <Splitup>[];
      json['Splitup'].forEach((v) {
        splitup!.add(new Splitup.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PTC'] = this.pTC;
    data['BaseFare'] = this.baseFare;
    data['Tax'] = this.tax;
    data['Discount'] = this.discount;
    if (this.splitup != null) {
      data['Splitup'] = this.splitup!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Splitup {
  String? category;
  double? amount;

  Splitup({this.category, this.amount});

  Splitup.fromJson(Map<String, dynamic> json) {
    category = json['Category'];
    amount = json['Amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Category'] = this.category;
    data['Amount'] = this.amount;
    return data;
  }
}

class FlightLegs {
  String? type;
  Null? airlinePNR;
  String? key;
  String? origin;
  String? destination;
  String? departureTime;
  String? arrivalTime;
  String? arrivalTerminal;
  String? departureTerminal;
  String? flightNo;
  String? airlineCode;
  Null? carrier;
  double? distance;
  Null? optionalServiceIndicators;
  Null? segmentRefKey;
  Null? mealKey;
  Null? baggageKey;
  List<FreeBaggages>? freeBaggages;
  String? codeShare;
  String? rBD;

  FlightLegs(
      {this.type,
      this.airlinePNR,
      this.key,
      this.origin,
      this.destination,
      this.departureTime,
      this.arrivalTime,
      this.arrivalTerminal,
      this.departureTerminal,
      this.flightNo,
      this.airlineCode,
      this.carrier,
      this.distance,
      this.optionalServiceIndicators,
      this.segmentRefKey,
      this.mealKey,
      this.baggageKey,
      this.freeBaggages,
      this.codeShare,
      this.rBD});

  FlightLegs.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    airlinePNR = json['AirlinePNR'];
    key = json['Key'];
    origin = json['Origin'];
    destination = json['Destination'];
    departureTime = json['DepartureTime'];
    arrivalTime = json['ArrivalTime'];
    arrivalTerminal = json['ArrivalTerminal'];
    departureTerminal = json['DepartureTerminal'];
    flightNo = json['FlightNo'];
    airlineCode = json['AirlineCode'];
    carrier = json['Carrier'];
    distance = json['Distance'];
    optionalServiceIndicators = json['OptionalServiceIndicators'];
    segmentRefKey = json['SegmentRefKey'];
    mealKey = json['MealKey'];
    baggageKey = json['BaggageKey'];
    if (json['FreeBaggages'] != null) {
      freeBaggages = <FreeBaggages>[];
      json['FreeBaggages'].forEach((v) {
        freeBaggages!.add(new FreeBaggages.fromJson(v));
      });
    }
    codeShare = json['CodeShare'];
    rBD = json['RBD'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = this.type;
    data['AirlinePNR'] = this.airlinePNR;
    data['Key'] = this.key;
    data['Origin'] = this.origin;
    data['Destination'] = this.destination;
    data['DepartureTime'] = this.departureTime;
    data['ArrivalTime'] = this.arrivalTime;
    data['ArrivalTerminal'] = this.arrivalTerminal;
    data['DepartureTerminal'] = this.departureTerminal;
    data['FlightNo'] = this.flightNo;
    data['AirlineCode'] = this.airlineCode;
    data['Carrier'] = this.carrier;
    data['Distance'] = this.distance;
    data['OptionalServiceIndicators'] = this.optionalServiceIndicators;
    data['SegmentRefKey'] = this.segmentRefKey;
    data['MealKey'] = this.mealKey;
    data['BaggageKey'] = this.baggageKey;
    if (this.freeBaggages != null) {
      data['FreeBaggages'] = this.freeBaggages!.map((v) => v.toJson()).toList();
    }
    data['CodeShare'] = this.codeShare;
    data['RBD'] = this.rBD;
    return data;
  }
}

class FreeBaggages {
  String? fID;
  String? adtBaggage;
  String? chdBaggage;
  String? infBaggage;

  FreeBaggages({this.fID, this.adtBaggage, this.chdBaggage, this.infBaggage});

  FreeBaggages.fromJson(Map<String, dynamic> json) {
    fID = json['FID'];
    adtBaggage = json['Adt_Baggage'];
    chdBaggage = json['Chd_Baggage'];
    infBaggage = json['Inf_Baggage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FID'] = this.fID;
    data['Adt_Baggage'] = this.adtBaggage;
    data['Chd_Baggage'] = this.chdBaggage;
    data['Inf_Baggage'] = this.infBaggage;
    return data;
  }
}
