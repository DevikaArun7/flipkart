// To parse this JSON data, do
//
//     final movieList = movieListFromJson(jsonString);

import 'dart:convert';

MovieList movieListFromJson(String str) => MovieList.fromJson(json.decode(str));

String movieListToJson(MovieList data) => json.encode(data.toJson());

class MovieList {
    int rows;
    int numFound;
    List<Result> results;
    String nextCursorMark;

    MovieList({
        required this.rows,
        required this.numFound,
        required this.results,
        required this.nextCursorMark,
    });

    factory MovieList.fromJson(Map<String, dynamic> json) => MovieList(
        rows: json["rows"],
        numFound: json["numFound"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        nextCursorMark: json["nextCursorMark"],
    );

    Map<String, dynamic> toJson() => {
        "rows": rows,
        "numFound": numFound,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "nextCursorMark": nextCursorMark,
    };
}

class Result {
    String id;
    String url;
    String primaryTitle;
    String originalTitle;
    Type type;
    String? description;
    String? primaryImage;
    List<Thumbnail> thumbnails;
    String? trailer;
    String? contentRating;
    bool isAdult;
    DateTime? releaseDate;
    int? startYear;
    dynamic endYear;
    int? runtimeMinutes;
    List<String> genres;
    List<String> interests;
    List<String> countriesOfOrigin;
    List<String>? externalLinks;
    List<String>? spokenLanguages;
    List<String>? filmingLocations;
    List<ProductionCompany> productionCompanies;
    int? budget;
    int? grossWorldwide;
    double? averageRating;
    int? numVotes;
    int? metascore;

    Result({
        required this.id,
        required this.url,
        required this.primaryTitle,
        required this.originalTitle,
        required this.type,
        required this.description,
        required this.primaryImage,
        required this.thumbnails,
        required this.trailer,
        required this.contentRating,
        required this.isAdult,
        required this.releaseDate,
        required this.startYear,
        required this.endYear,
        required this.runtimeMinutes,
        required this.genres,
        required this.interests,
        required this.countriesOfOrigin,
        required this.externalLinks,
        required this.spokenLanguages,
        required this.filmingLocations,
        required this.productionCompanies,
        required this.budget,
        required this.grossWorldwide,
        required this.averageRating,
        required this.numVotes,
        required this.metascore,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        url: json["url"],
        primaryTitle: json["primaryTitle"],
        originalTitle: json["originalTitle"],
        type: typeValues.map[json["type"]]!,
        description: json["description"],
        primaryImage: json["primaryImage"],
        thumbnails: List<Thumbnail>.from(json["thumbnails"].map((x) => Thumbnail.fromJson(x))),
        trailer: json["trailer"],
        contentRating: json["contentRating"],
        isAdult: json["isAdult"],
        releaseDate: json["releaseDate"] == null ? null : DateTime.parse(json["releaseDate"]),
        startYear: json["startYear"],
        endYear: json["endYear"],
        runtimeMinutes: json["runtimeMinutes"],
        genres: List<String>.from(json["genres"].map((x) => x)),
        interests: List<String>.from(json["interests"].map((x) => x)),
        countriesOfOrigin: List<String>.from(json["countriesOfOrigin"].map((x) => x)),
        externalLinks: json["externalLinks"] == null ? [] : List<String>.from(json["externalLinks"]!.map((x) => x)),
        spokenLanguages: json["spokenLanguages"] == null ? [] : List<String>.from(json["spokenLanguages"]!.map((x) => x)),
        filmingLocations: json["filmingLocations"] == null ? [] : List<String>.from(json["filmingLocations"]!.map((x) => x)),
        productionCompanies: List<ProductionCompany>.from(json["productionCompanies"].map((x) => ProductionCompany.fromJson(x))),
        budget: json["budget"],
        grossWorldwide: json["grossWorldwide"],
        averageRating: json["averageRating"]?.toDouble(),
        numVotes: json["numVotes"],
        metascore: json["metascore"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "primaryTitle": primaryTitle,
        "originalTitle": originalTitle,
        "type": typeValues.reverse[type],
        "description": description,
        "primaryImage": primaryImage,
        "thumbnails": List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        "trailer": trailer,
        "contentRating": contentRating,
        "isAdult": isAdult,
        "releaseDate": "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "startYear": startYear,
        "endYear": endYear,
        "runtimeMinutes": runtimeMinutes,
        "genres": List<dynamic>.from(genres.map((x) => x)),
        "interests": List<dynamic>.from(interests.map((x) => x)),
        "countriesOfOrigin": List<dynamic>.from(countriesOfOrigin.map((x) => x)),
        "externalLinks": externalLinks == null ? [] : List<dynamic>.from(externalLinks!.map((x) => x)),
        "spokenLanguages": spokenLanguages == null ? [] : List<dynamic>.from(spokenLanguages!.map((x) => x)),
        "filmingLocations": filmingLocations == null ? [] : List<dynamic>.from(filmingLocations!.map((x) => x)),
        "productionCompanies": List<dynamic>.from(productionCompanies.map((x) => x.toJson())),
        "budget": budget,
        "grossWorldwide": grossWorldwide,
        "averageRating": averageRating,
        "numVotes": numVotes,
        "metascore": metascore,
    };
}

class ProductionCompany {
    String id;
    String name;

    ProductionCompany({
        required this.id,
        required this.name,
    });

    factory ProductionCompany.fromJson(Map<String, dynamic> json) => ProductionCompany(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class Thumbnail {
    String url;
    int width;
    int height;

    Thumbnail({
        required this.url,
        required this.width,
        required this.height,
    });

    factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        url: json["url"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
    };
}

enum Type {
    MOVIE
}

final typeValues = EnumValues({
    "movie": Type.MOVIE
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
