// To parse this JSON data, do
//
//     final AmazonProducts = AmazonProductsFromJson(jsonString);

import 'dart:convert';

AmazonProducts AmazonProductsFromJson(String str) => AmazonProducts.fromJson(json.decode(str));

String AmazonProductsToJson(AmazonProducts data) => json.encode(data.toJson());

class AmazonProducts {
    String status;
    String requestId;
    Parameters parameters;
    Data data;

    AmazonProducts({
        required this.status,
        required this.requestId,
        required this.parameters,
        required this.data,
    });

    factory AmazonProducts.fromJson(Map<String, dynamic> json) => AmazonProducts(
        status: json["status"],
        requestId: json["request_id"],
        parameters: Parameters.fromJson(json["parameters"]),
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "request_id": requestId,
        "parameters": parameters.toJson(),
        "data": data.toJson(),
    };
}

class Data {
    String asin;
    String productTitle;
    String productPrice;
    String productOriginalPrice;
    dynamic minimumOrderQuantity;
    String currency;
    String country;
    String productByline;
    String productBylineLink;
    List<String> productBylineLinks;
    String productStarRating;
    int productNumRatings;
    String productUrl;
    String productSlug;
    String productPhoto;
    int productNumOffers;
    String productAvailability;
    bool isBestSeller;
    bool isAmazonChoice;
    bool isPrime;
    bool climatePledgeFriendly;
    String salesVolume;
    List<String> aboutProduct;
    String productDescription;
    ProductInformation productInformation;
    List<String> productPhotos;
    List<dynamic> productVideos;
    List<dynamic> userUploadedVideos;
    bool hasVideo;
    ProductDetails productDetails;
    List<dynamic> topReviews;
    List<dynamic> topReviewsGlobal;
    String delivery;
    String primaryDeliveryTime;
    Category category;
    List<CategoryPath> categoryPath;
    List<String> productVariationsDimensions;
    ProductVariations productVariations;
    Map<String, AllProductVariation> allProductVariations;
    bool hasAplus;
    bool hasBrandstory;

    Data({
        required this.asin,
        required this.productTitle,
        required this.productPrice,
        required this.productOriginalPrice,
        required this.minimumOrderQuantity,
        required this.currency,
        required this.country,
        required this.productByline,
        required this.productBylineLink,
        required this.productBylineLinks,
        required this.productStarRating,
        required this.productNumRatings,
        required this.productUrl,
        required this.productSlug,
        required this.productPhoto,
        required this.productNumOffers,
        required this.productAvailability,
        required this.isBestSeller,
        required this.isAmazonChoice,
        required this.isPrime,
        required this.climatePledgeFriendly,
        required this.salesVolume,
        required this.aboutProduct,
        required this.productDescription,
        required this.productInformation,
        required this.productPhotos,
        required this.productVideos,
        required this.userUploadedVideos,
        required this.hasVideo,
        required this.productDetails,
        required this.topReviews,
        required this.topReviewsGlobal,
        required this.delivery,
        required this.primaryDeliveryTime,
        required this.category,
        required this.categoryPath,
        required this.productVariationsDimensions,
        required this.productVariations,
        required this.allProductVariations,
        required this.hasAplus,
        required this.hasBrandstory,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        asin: json["asin"],
        productTitle: json["product_title"],
        productPrice: json["product_price"],
        productOriginalPrice: json["product_original_price"],
        minimumOrderQuantity: json["minimum_order_quantity"],
        currency: json["currency"],
        country: json["country"],
        productByline: json["product_byline"],
        productBylineLink: json["product_byline_link"],
        productBylineLinks: List<String>.from(json["product_byline_links"].map((x) => x)),
        productStarRating: json["product_star_rating"],
        productNumRatings: json["product_num_ratings"],
        productUrl: json["product_url"],
        productSlug: json["product_slug"],
        productPhoto: json["product_photo"],
        productNumOffers: json["product_num_offers"],
        productAvailability: json["product_availability"],
        isBestSeller: json["is_best_seller"],
        isAmazonChoice: json["is_amazon_choice"],
        isPrime: json["is_prime"],
        climatePledgeFriendly: json["climate_pledge_friendly"],
        salesVolume: json["sales_volume"],
        aboutProduct: List<String>.from(json["about_product"].map((x) => x)),
        productDescription: json["product_description"],
        productInformation: ProductInformation.fromJson(json["product_information"]),
        productPhotos: List<String>.from(json["product_photos"].map((x) => x)),
        productVideos: List<dynamic>.from(json["product_videos"].map((x) => x)),
        userUploadedVideos: List<dynamic>.from(json["user_uploaded_videos"].map((x) => x)),
        hasVideo: json["has_video"],
        productDetails: ProductDetails.fromJson(json["product_details"]),
        topReviews: List<dynamic>.from(json["top_reviews"].map((x) => x)),
        topReviewsGlobal: List<dynamic>.from(json["top_reviews_global"].map((x) => x)),
        delivery: json["delivery"],
        primaryDeliveryTime: json["primary_delivery_time"],
        category: Category.fromJson(json["category"]),
        categoryPath: List<CategoryPath>.from(json["category_path"].map((x) => CategoryPath.fromJson(x))),
        productVariationsDimensions: List<String>.from(json["product_variations_dimensions"].map((x) => x)),
        productVariations: ProductVariations.fromJson(json["product_variations"]),
        allProductVariations: Map.from(json["all_product_variations"]).map((k, v) => MapEntry<String, AllProductVariation>(k, AllProductVariation.fromJson(v))),
        hasAplus: json["has_aplus"],
        hasBrandstory: json["has_brandstory"],
    );

    Map<String, dynamic> toJson() => {
        "asin": asin,
        "product_title": productTitle,
        "product_price": productPrice,
        "product_original_price": productOriginalPrice,
        "minimum_order_quantity": minimumOrderQuantity,
        "currency": currency,
        "country": country,
        "product_byline": productByline,
        "product_byline_link": productBylineLink,
        "product_byline_links": List<dynamic>.from(productBylineLinks.map((x) => x)),
        "product_star_rating": productStarRating,
        "product_num_ratings": productNumRatings,
        "product_url": productUrl,
        "product_slug": productSlug,
        "product_photo": productPhoto,
        "product_num_offers": productNumOffers,
        "product_availability": productAvailability,
        "is_best_seller": isBestSeller,
        "is_amazon_choice": isAmazonChoice,
        "is_prime": isPrime,
        "climate_pledge_friendly": climatePledgeFriendly,
        "sales_volume": salesVolume,
        "about_product": List<dynamic>.from(aboutProduct.map((x) => x)),
        "product_description": productDescription,
        "product_information": productInformation.toJson(),
        "product_photos": List<dynamic>.from(productPhotos.map((x) => x)),
        "product_videos": List<dynamic>.from(productVideos.map((x) => x)),
        "user_uploaded_videos": List<dynamic>.from(userUploadedVideos.map((x) => x)),
        "has_video": hasVideo,
        "product_details": productDetails.toJson(),
        "top_reviews": List<dynamic>.from(topReviews.map((x) => x)),
        "top_reviews_global": List<dynamic>.from(topReviewsGlobal.map((x) => x)),
        "delivery": delivery,
        "primary_delivery_time": primaryDeliveryTime,
        "category": category.toJson(),
        "category_path": List<dynamic>.from(categoryPath.map((x) => x.toJson())),
        "product_variations_dimensions": List<dynamic>.from(productVariationsDimensions.map((x) => x)),
        "product_variations": productVariations.toJson(),
        "all_product_variations": Map.from(allProductVariations).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "has_aplus": hasAplus,
        "has_brandstory": hasBrandstory,
    };
}

class AllProductVariation {
    Size size;
    ColorEnum color;
    ServiceProvider serviceProvider;
    ProductGrade productGrade;

    AllProductVariation({
        required this.size,
        required this.color,
        required this.serviceProvider,
        required this.productGrade,
    });

    factory AllProductVariation.fromJson(Map<String, dynamic> json) => AllProductVariation(
        size: sizeValues.map[json["size"]]!,
        color: colorEnumValues.map[json["color"]]!,
        serviceProvider: serviceProviderValues.map[json["service_provider"]]!,
        productGrade: productGradeValues.map[json["product_grade"]]!,
    );

    Map<String, dynamic> toJson() => {
        "size": sizeValues.reverse[size],
        "color": colorEnumValues.reverse[color],
        "service_provider": serviceProviderValues.reverse[serviceProvider],
        "product_grade": productGradeValues.reverse[productGrade],
    };
}

enum ColorEnum {
    BLACK,
    GREEN,
    PURPLE,
    RED,
    WHITE,
    YELLOW
}

final colorEnumValues = EnumValues({
    "Black": ColorEnum.BLACK,
    "Green": ColorEnum.GREEN,
    "Purple": ColorEnum.PURPLE,
    "Red": ColorEnum.RED,
    "White": ColorEnum.WHITE,
    "Yellow": ColorEnum.YELLOW
});

enum ProductGrade {
    RENEWED
}

final productGradeValues = EnumValues({
    "Renewed": ProductGrade.RENEWED
});

enum ServiceProvider {
    AT_T,
    GSM_CARRIERS,
    T_MOBILE,
    UNLOCKED,
    VERIZON
}

final serviceProviderValues = EnumValues({
    "AT&T": ServiceProvider.AT_T,
    "GSM Carriers": ServiceProvider.GSM_CARRIERS,
    "T-Mobile": ServiceProvider.T_MOBILE,
    "Unlocked": ServiceProvider.UNLOCKED,
    "Verizon": ServiceProvider.VERIZON
});

enum Size {
    THE_128_GB,
    THE_256_GB,
    THE_64_GB
}

final sizeValues = EnumValues({
    "128GB": Size.THE_128_GB,
    "256GB": Size.THE_256_GB,
    "64GB": Size.THE_64_GB
});

class Category {
    String id;
    String name;

    Category({
        required this.id,
        required this.name,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class CategoryPath {
    String id;
    String name;
    String link;

    CategoryPath({
        required this.id,
        required this.name,
        required this.link,
    });

    factory CategoryPath.fromJson(Map<String, dynamic> json) => CategoryPath(
        id: json["id"],
        name: json["name"],
        link: json["link"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "link": link,
    };
}

class ProductDetails {
    String brand;
    String operatingSystem;
    String ramMemoryInstalledSize;
    String cpuModel;
    String cpuSpeed;
    String memoryStorageCapacity;
    String screenSize;
    String resolution;
    String refreshRate;
    String modelName;

    ProductDetails({
        required this.brand,
        required this.operatingSystem,
        required this.ramMemoryInstalledSize,
        required this.cpuModel,
        required this.cpuSpeed,
        required this.memoryStorageCapacity,
        required this.screenSize,
        required this.resolution,
        required this.refreshRate,
        required this.modelName,
    });

    factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
        brand: json["Brand"],
        operatingSystem: json["Operating System"],
        ramMemoryInstalledSize: json["Ram Memory Installed Size"],
        cpuModel: json["CPU Model"],
        cpuSpeed: json["CPU Speed"],
        memoryStorageCapacity: json["Memory Storage Capacity"],
        screenSize: json["Screen Size"],
        resolution: json["Resolution"],
        refreshRate: json["Refresh Rate"],
        modelName: json["Model Name"],
    );

    Map<String, dynamic> toJson() => {
        "Brand": brand,
        "Operating System": operatingSystem,
        "Ram Memory Installed Size": ramMemoryInstalledSize,
        "CPU Model": cpuModel,
        "CPU Speed": cpuSpeed,
        "Memory Storage Capacity": memoryStorageCapacity,
        "Screen Size": screenSize,
        "Resolution": resolution,
        "Refresh Rate": refreshRate,
        "Model Name": modelName,
    };
}

class ProductInformation {
    String productDimensions;
    String itemWeight;
    String asin;
    String itemModelNumber;
    String batteries;
    String bestSellersRank;
    String isDiscontinuedByManufacturer;
    String os;
    String ram;
    String wirelessCommunicationTechnologies;
    String connectivityTechnologies;
    String gps;
    String specialFeatures;
    String otherDisplayFeatures;
    String humanInterfaceInput;
    String scannerResolution;
    String otherCameraFeatures;
    String formFactor;
    ColorEnum color;
    String batteryPowerRating;
    String whatsInTheBox;
    String manufacturer;
    String dateFirstAvailable;
    String memoryStorageCapacity;
    String standingScreenDisplaySize;
    String ramMemoryInstalledSize;
    String batteryCapacity;
    String weight;

    ProductInformation({
        required this.productDimensions,
        required this.itemWeight,
        required this.asin,
        required this.itemModelNumber,
        required this.batteries,
        required this.bestSellersRank,
        required this.isDiscontinuedByManufacturer,
        required this.os,
        required this.ram,
        required this.wirelessCommunicationTechnologies,
        required this.connectivityTechnologies,
        required this.gps,
        required this.specialFeatures,
        required this.otherDisplayFeatures,
        required this.humanInterfaceInput,
        required this.scannerResolution,
        required this.otherCameraFeatures,
        required this.formFactor,
        required this.color,
        required this.batteryPowerRating,
        required this.whatsInTheBox,
        required this.manufacturer,
        required this.dateFirstAvailable,
        required this.memoryStorageCapacity,
        required this.standingScreenDisplaySize,
        required this.ramMemoryInstalledSize,
        required this.batteryCapacity,
        required this.weight,
    });

    factory ProductInformation.fromJson(Map<String, dynamic> json) => ProductInformation(
        productDimensions: json["Product Dimensions"],
        itemWeight: json["Item Weight"],
        asin: json["ASIN"],
        itemModelNumber: json["Item model number"],
        batteries: json["Batteries"],
        bestSellersRank: json["Best Sellers Rank"],
        isDiscontinuedByManufacturer: json["Is Discontinued By Manufacturer"],
        os: json["OS"],
        ram: json["RAM"],
        wirelessCommunicationTechnologies: json["Wireless communication technologies"],
        connectivityTechnologies: json["Connectivity technologies"],
        gps: json["GPS"],
        specialFeatures: json["Special features"],
        otherDisplayFeatures: json["Other display features"],
        humanInterfaceInput: json["Human Interface Input"],
        scannerResolution: json["Scanner Resolution"],
        otherCameraFeatures: json["Other camera features"],
        formFactor: json["Form Factor"],
        color: colorEnumValues.map[json["Color"]]!,
        batteryPowerRating: json["Battery Power Rating"],
        whatsInTheBox: json["Whats in the box"],
        manufacturer: json["Manufacturer"],
        dateFirstAvailable: json["Date First Available"],
        memoryStorageCapacity: json["Memory Storage Capacity"],
        standingScreenDisplaySize: json["Standing screen display size"],
        ramMemoryInstalledSize: json["Ram Memory Installed Size"],
        batteryCapacity: json["Battery Capacity"],
        weight: json["Weight"],
    );

    Map<String, dynamic> toJson() => {
        "Product Dimensions": productDimensions,
        "Item Weight": itemWeight,
        "ASIN": asin,
        "Item model number": itemModelNumber,
        "Batteries": batteries,
        "Best Sellers Rank": bestSellersRank,
        "Is Discontinued By Manufacturer": isDiscontinuedByManufacturer,
        "OS": os,
        "RAM": ram,
        "Wireless communication technologies": wirelessCommunicationTechnologies,
        "Connectivity technologies": connectivityTechnologies,
        "GPS": gps,
        "Special features": specialFeatures,
        "Other display features": otherDisplayFeatures,
        "Human Interface Input": humanInterfaceInput,
        "Scanner Resolution": scannerResolution,
        "Other camera features": otherCameraFeatures,
        "Form Factor": formFactor,
        "Color": colorEnumValues.reverse[color],
        "Battery Power Rating": batteryPowerRating,
        "Whats in the box": whatsInTheBox,
        "Manufacturer": manufacturer,
        "Date First Available": dateFirstAvailable,
        "Memory Storage Capacity": memoryStorageCapacity,
        "Standing screen display size": standingScreenDisplaySize,
        "Ram Memory Installed Size": ramMemoryInstalledSize,
        "Battery Capacity": batteryCapacity,
        "Weight": weight,
    };
}

class ProductVariations {
    List<ColorElement> size;
    List<ColorElement> color;
    List<ColorElement> serviceProvider;

    ProductVariations({
        required this.size,
        required this.color,
        required this.serviceProvider,
    });

    factory ProductVariations.fromJson(Map<String, dynamic> json) => ProductVariations(
        size: List<ColorElement>.from(json["size"].map((x) => ColorElement.fromJson(x))),
        color: List<ColorElement>.from(json["color"].map((x) => ColorElement.fromJson(x))),
        serviceProvider: List<ColorElement>.from(json["service_provider"].map((x) => ColorElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "size": List<dynamic>.from(size.map((x) => x.toJson())),
        "color": List<dynamic>.from(color.map((x) => x.toJson())),
        "service_provider": List<dynamic>.from(serviceProvider.map((x) => x.toJson())),
    };
}

class ColorElement {
    String asin;
    String value;
    String? photo;
    bool isAvailable;

    ColorElement({
        required this.asin,
        required this.value,
        this.photo,
        required this.isAvailable,
    });

    factory ColorElement.fromJson(Map<String, dynamic> json) => ColorElement(
        asin: json["asin"],
        value: json["value"],
        photo: json["photo"],
        isAvailable: json["is_available"],
    );

    Map<String, dynamic> toJson() => {
        "asin": asin,
        "value": value,
        "photo": photo,
        "is_available": isAvailable,
    };
}

class Parameters {
    String asin;
    String country;
    String language;

    Parameters({
        required this.asin,
        required this.country,
        required this.language,
    });

    factory Parameters.fromJson(Map<String, dynamic> json) => Parameters(
        asin: json["asin"],
        country: json["country"],
        language: json["language"],
    );

    Map<String, dynamic> toJson() => {
        "asin": asin,
        "country": country,
        "language": language,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
