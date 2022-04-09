class DetailsModel {
  String _id;
  String _image;
  String _name;
  CareGuide _careGuide;
  Characteristics _characteristics;
  Conditions _conditions;
  String _description;
  String _diseases;
  String _gardenUse;
  String _species;
  List<String> _known;
  List<String> _gallery;
  String _botanical;

  DetailsModel({
    String id,
    String image,
    String name,
    CareGuide careGuide,
    Characteristics characteristics,
    Conditions conditions,
    String description,
    String diseases,
    String gardenUse,
    String species,
    List<String> known,
    List<String> gallery,
    String botanical,

  }) {
    if (id != null) {
      _id = id;
    }
    if (image != null) {
      _image = image;
    }
    if (name != null) {
      _name = name;
    }
    if (careGuide != null) {
      _careGuide = careGuide;
    }
    if (characteristics != null) {
      _characteristics = characteristics;
    }
    if (conditions != null) {
      _conditions = conditions;
    }
    if (description != null) {
      _description = description;
    }
    if (diseases != null) {
      _diseases = diseases;
    }
    if (gardenUse != null) {
      _gardenUse = gardenUse;
    }
    if (species != null) {
      _species = species;
    }
    if (known != null) {
      _known = known;
    }if (known != null) {
      _gallery = gallery;
    }
    if (botanical != null) {
      _botanical = botanical;
    }
  }

  String get id => _id;

  set id(String id) => _id = id;

  String get image => _image;

  set image(String image) => _image = image;

  String get name => _name;

  set name(String name) => _name = name;

  CareGuide get careGuide => _careGuide;

  set careGuide(CareGuide careGuide) => _careGuide = careGuide;

  Characteristics get characteristics => _characteristics;

  set characteristics(Characteristics characteristics) =>
      _characteristics = characteristics;

  Conditions get conditions => _conditions;

  set conditions(Conditions conditions) => _conditions = conditions;

  String get description => _description;

  set description(String description) => _description = description;

  String get diseases => _diseases;

  set diseases(String diseases) => _diseases = diseases;

  String get gardenUse => _gardenUse;

  set gardenUse(String gardenUse) => _gardenUse = gardenUse;

  String get species => _species;

  set species(String species) => _species = species;

  List<String> get known => _known;

  set known(List<String> known) => _known = known;

  List<String> get gallery => _gallery;

  set gallery(List<String> gallery) => _gallery = gallery;

  String get botanical => _botanical;

  set botanical(String botanical) => _botanical = botanical;

  DetailsModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _image = json['image'];
    _name = json['name'];
    _careGuide = json['careGuide'] != null
        ? CareGuide.fromJson(json['careGuide'])
        : null;
    _characteristics = json['characteristics'] != null
        ? Characteristics.fromJson(json['characteristics'])
        : null;
    _conditions = json['conditions'] != null
        ? Conditions.fromJson(json['conditions'])
        : null;
    _description = json['description'];
    _diseases = json['diseases'];
    _gardenUse = json['gardenUse'];
    _species = json['species'];
    _known = json['known'].cast<String>();
    _gallery = json['gallery'].cast<String>();
    _botanical = json['botanical'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = _id;
    data['image'] = _image;
    data['name'] = _name;
    if (_careGuide != null) {
      data['careGuide'] = _careGuide.toJson();
    }
    if (_characteristics != null) {
      data['characteristics'] = _characteristics.toJson();
    }
    if (_conditions != null) {
      data['conditions'] = _conditions.toJson();
    }
    data['description'] = _description;
    data['diseases'] = _diseases;
    data['gardenUse'] = _gardenUse;
    data['species'] = _species;
    data['known'] = _known;
    data['gallery'] = _gallery;
    data['botanical'] = _botanical;
    return data;
  }
}

class CareGuide {
  String _water;
  String _fertilization;
  String _pruning;
  String _plantingTime;
  String _propagation;
  String _pottingSuggestions;
  String _harvestTime;

  CareGuide({
    String water,
    String fertilization,
    String pruning,
    String plantingTime,
    String propagation,
    String pottingSuggestions,
    String harvestTime,
  }) {
    if (water != null) {
      _water = water;
    }
    if (harvestTime != null) {
      _harvestTime = harvestTime;
    }
    if (fertilization != null) {
      _fertilization = fertilization;
    }
    if (pruning != null) {
      _pruning = pruning;
    }
    if (plantingTime != null) {
      _plantingTime = plantingTime;
    }
    if (propagation != null) {
      _propagation = propagation;
    }
    if (pottingSuggestions != null) {
      _pottingSuggestions = pottingSuggestions;
    }
  }

  String get water => _water;

  set water(String water) => _water = water;

  String get harvestTime => _harvestTime;

  set harvestTime(String harvestTime) => _harvestTime = harvestTime;

  String get fertilization => _fertilization;

  set fertilization(String fertilization) => _fertilization = fertilization;

  String get pruning => _pruning;

  set pruning(String pruning) => _pruning = pruning;

  String get plantingTime => _plantingTime;

  set plantingTime(String plantingTime) => _plantingTime = plantingTime;

  String get propagation => _propagation;

  set propagation(String propagation) => _propagation = propagation;

  String get pottingSuggestions => _pottingSuggestions;

  set pottingSuggestions(String pottingSuggestions) =>
      _pottingSuggestions = pottingSuggestions;

  CareGuide.fromJson(Map<String, dynamic> json) {
    _water = json['water'];
    _water = json['harvestTime'];
    _fertilization = json['fertilization'];
    _pruning = json['pruning'];
    _plantingTime = json['plantingTime'];
    _propagation = json['propagation'];
    _pottingSuggestions = json['pottingSuggestions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['water'] = _water;
    data['harvestTime'] = harvestTime;
    data['fertilization'] = _fertilization;
    data['pruning'] = _pruning;
    data['plantingTime'] = _plantingTime;
    data['propagation'] = _propagation;
    data['pottingSuggestions'] = _pottingSuggestions;
    return data;
  }
}

class Characteristics {
  String _plantType;
  String _lifespan;
  String _bloomTime;
  String _plantHeight;
  String _spread;
  String _size;
  String _habitat;
  String _flower;
  String _leaf;
  String _fruit;
  String _stem;

  Characteristics({
    String plantType,
    String lifespan,
    String bloomTime,
    String plantHeight,
    String spread,
    String size,
    String habitat,
    String flower,
    String leaf,
    String fruit,
    String stem,
  }) {
    if (plantType != null) {
      _plantType = plantType;
    }
    if (lifespan != null) {
      _lifespan = lifespan;
    }
    if (bloomTime != null) {
      _bloomTime = bloomTime;
    }
    if (plantHeight != null) {
      _plantHeight = plantHeight;
    }
    if (spread != null) {
      _spread = spread;
    }
    if (size != null) {
      _size = size;
    }
    if (habitat != null) {
      _habitat = habitat;
    }
    if (flower != null) {
      _flower = flower;
    }
    if (leaf != null) {
      _leaf = leaf;
    }
    if (fruit != null) {
      _fruit = fruit;
    }
    if (stem != null) {
      _stem = stem;
    }
  }

  String get plantType => _plantType;

  set plantType(String plantType) => _plantType = plantType;

  String get lifespan => _lifespan;

  set lifespan(String lifespan) => _lifespan = lifespan;

  String get bloomTime => _bloomTime;

  set bloomTime(String bloomTime) => _bloomTime = bloomTime;

  String get plantHeight => _plantHeight;

  set plantHeight(String plantHeight) => _plantHeight = plantHeight;

  String get spread => _spread;

  set spread(String spread) => _spread = spread;

  String get size => _size;

  set size(String size) => _size = size;

  String get habitat => _habitat;

  set habitat(String habitat) => _habitat = habitat;

  String get flower => _flower;

  set flower(String flower) => _flower = flower;

  String get leaf => _leaf;

  set leaf(String leaf) => _leaf = leaf;

  String get fruit => _fruit;

  set fruit(String fruit) => _fruit = fruit;

  String get stem => _stem;

  set stem(String stem) => _stem = stem;

  Characteristics.fromJson(Map<String, dynamic> json) {
    _plantType = json['plantType'];
    _lifespan = json['lifespan'];
    _bloomTime = json['bloomTime'];
    _plantHeight = json['plantHeight'];
    _spread = json['spread'];
    _size = json['size'];
    _habitat = json['habitat'];
    _flower = json['flower'];
    _leaf = json['leaf '];
    _fruit = json['fruit'];
    _stem = json['stem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['plantType'] = _plantType;
    data['lifespan'] = _lifespan;
    data['bloomTime'] = _bloomTime;
    data['plantHeight'] = _plantHeight;
    data['spread'] = _spread;
    data['size'] = _size;
    data['habitat'] = _habitat;
    data['flower'] = _flower;
    data['leaf '] = _leaf;
    data['fruit'] = _fruit;
    data['stem'] = _stem;
    return data;
  }
}

class Conditions {
  String _difficulty;
  String _sunlight;
  String _hardiness;
  String _hardinessZones;
  String _soil;

  Conditions({
    String difficulty,
    String sunlight,
    String hardiness,
    String hardinessZones,
    String soil,
  }) {
    if (difficulty != null) {
      _difficulty = difficulty;
    }
    if (sunlight != null) {
      _sunlight = sunlight;
    }
    if (hardiness != null) {
      _hardiness = hardiness;
    }
    if (hardinessZones != null) {
      _hardinessZones = hardinessZones;
    }
    if (soil != null) {
      _soil = soil;
    }
  }

  String get difficulty => _difficulty;

  set difficulty(String difficulty) => _difficulty = difficulty;

  String get sunlight => _sunlight;

  set sunlight(String sunlight) => _sunlight = sunlight;

  String get hardiness => _hardiness;

  set hardiness(String hardiness) => _hardiness = hardiness;

  String get hardinessZones => _hardinessZones;

  set hardinessZones(String hardinessZones) =>
      _hardinessZones = hardinessZones;

  String get soil => _soil;

  set soil(String soil) => _soil = soil;

  Conditions.fromJson(Map<String, dynamic> json) {
    _difficulty = json['difficulty'];
    _sunlight = json['sunlight'];
    _hardiness = json['hardiness'];
    _hardinessZones = json['hardinessZones'];
    _soil = json['soil'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['difficulty'] = _difficulty;
    data['sunlight'] = _sunlight;
    data['hardiness'] = _hardiness;
    data['hardinessZones'] = _hardinessZones;
    data['soil'] = _soil;
    return data;
  }
}
