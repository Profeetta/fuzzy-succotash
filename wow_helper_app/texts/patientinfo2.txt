/*class Patient {
  final String label;
  final int index;
  final String variableId;
  final String dataType;
  final String dataNumType;
  final bool include;
  final String riskClass;
  final String transformation;
  final String imputeMissing;
  final String sparse;
  final int priority;
  final int min;
  final int max;
  final int resolution;
  final String classes;
  final List<int> bins;
  final String binningMethod;
  final String format;
  final String description;
  final String mapping;
  final String rMapping;

  Patient(
    this.label,
    this.index,
    this.variableId,
    this.dataType,
    this.dataNumType,
    this.include,
    this.riskClass,
    this.transformation,
    this.imputeMissing,
    this.sparse,
    this.priority,
    this.min,
    this.max,
    this.resolution,
    this.classes,
    this.bins,
    this.binningMethod,
    this.format,
    this.description,
    this.mapping,
    this.rMapping,
  );

  Patient.fromJson(Map<String, dynamic> json)
      : label = json["label"],
        index = json["index"],
        variableId = json["variable_id"],
        dataType = json["dtype"],
        dataNumType = json["dtype_numpy"],
        include = json["included"],
        riskClass = json["risk_class"],
        transformation = json["transformation"],
        imputeMissing = json["impute_missing"],
        sparse = json["sparse"],
        priority = json["priority"],
        min = json["min"],
        max = json["max"],
        resolution = json["resolution"],
        classes = json["classes"],
        bins = json["bins"],
        binningMethod = json["binning_method"],
        format = json["format"],
        description = json["description"],
        mapping = json["mapping"],
        rMapping = json["rmapping"];

  Map<String, dynamic> toJson() => {
        "label": label,
        "index": index,
        "variable_id": variableId,
        "dtype": dataType,
        "dtype_numpy": dataNumType,
        "included": include,
        "risk_class": riskClass,
        "transformation": transformation,
        "impute_missing": imputeMissing,
        "sparse": sparse,
        "priority": priority,
        "min": min,
        "max": max,
        "resolution": resolution,
        "classes": classes,
        "bins": bins,
        "binning_method": binningMethod,
        "format": format,
        "description": description,
        "mapping": mapping,
        "rmapping": rMapping,
      };
}*/
