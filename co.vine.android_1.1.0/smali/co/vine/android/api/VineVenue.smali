.class public Lco/vine/android/api/VineVenue;
.super Ljava/lang/Object;
.source "VineVenue.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final FOURSQUARE_CATEGORY:Ljava/util/regex/Pattern; = null

.field public static final TYPE_ARTS_ENTERTAINMENT:I = 0xb

.field public static final TYPE_BIG_HUMAN:I = 0x2

.field public static final TYPE_EBAY:I = 0x3

.field public static final TYPE_EDUCATION:I = 0x12

.field public static final TYPE_FACEBOOK:I = 0x5

.field public static final TYPE_GILT:I = 0x4

.field public static final TYPE_GOOGLE:I = 0x6

.field public static final TYPE_JETSETTER:I = 0x13

.field public static final TYPE_NATURE:I = 0xe

.field public static final TYPE_NIGHTLIFE:I = 0xd

.field public static final TYPE_OFFICE:I = 0xf

.field public static final TYPE_OTHER:I = 0x14

.field public static final TYPE_RESIDENTIAL:I = 0xa

.field public static final TYPE_RESTAURANT:I = 0xc

.field public static final TYPE_SHOPS:I = 0x10

.field public static final TYPE_SQUARE:I = 0x8

.field public static final TYPE_SQUARESPACE:I = 0x7

.field public static final TYPE_TRAVEL:I = 0x11

.field public static final TYPE_TWITTER:I = 0x9

.field public static final TYPE_VINE:I = 0x1

.field public static final iconMap:Landroid/util/SparseIntArray; = null

.field private static final serialVersionUID:J = 0x50674330882cfd0L

.field private static final venueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public categoryIconUrl:Ljava/lang/String;

.field public categoryId:Ljava/lang/String;

.field public categoryName:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public displayType:I

.field public state:Ljava/lang/String;

.field public venueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 22
    const-string v0, "/([^/]+?)/([^/]+?)_\\d*?.png"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/vine/android/api/VineVenue;->FOURSQUARE_CATEGORY:Ljava/util/regex/Pattern;

    .line 48
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Lco/vine/android/util/FlexibleStringHashMap;

    invoke-direct {v0}, Lco/vine/android/util/FlexibleStringHashMap;-><init>()V

    sput-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f020096

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f020084

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f020085

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f020088

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f020087

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f020089

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f020092

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f020091

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f020094

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f02008e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f020086

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x7f02008f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const v1, 0x7f02008c

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f02008b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, 0x7f02008d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, 0x7f020090

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const v2, 0x7f020093

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const v2, 0x7f020095

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    const v2, 0x7f02008a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    const v2, 0x7f020099

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "vine hq"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "verse hq"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "twitter nyc"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "twitter, inc"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "square, inc"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "squarespace hq"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "jetsetter"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "gilt city"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "gilt groupe"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "facebook"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "ebay"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "big human"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "arts_entertainment"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "education"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "event"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "food"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "home"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "nightlife"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "parks_outdoors"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "travel"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "shops"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "nightlife"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    const-string v1, "tech startup"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "categoryIconUrl"
    .parameter "categoryName"
    .parameter "categoryId"
    .parameter "city"
    .parameter "countryCode"
    .parameter "venueName"
    .parameter "state"
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-eqz p6, :cond_7

    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, venueNameLower:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, categoryNameLower:Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    .line 132
    iput-object p7, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    .line 133
    iput-object p8, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    .line 135
    sget-object v6, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 136
    .local v1, display:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_4

    .line 137
    :cond_1
    sget-object v6, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #display:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 138
    .restart local v1       #display:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_4

    .line 139
    :cond_2
    if-eqz p1, :cond_4

    .line 140
    sget-object v6, Lco/vine/android/api/VineVenue;->FOURSQUARE_CATEGORY:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 141
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, urlCategoryName:Ljava/lang/String;
    sget-object v6, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #display:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 144
    .restart local v1       #display:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_4

    .line 145
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, urlParentName:Ljava/lang/String;
    sget-object v6, Lco/vine/android/api/VineVenue;->venueMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #display:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 153
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #urlCategoryName:Ljava/lang/String;
    .end local v4           #urlParentName:Ljava/lang/String;
    .restart local v1       #display:Ljava/lang/Integer;
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_6

    .line 154
    :cond_5
    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 156
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lco/vine/android/api/VineVenue;->displayType:I

    .line 157
    return-void

    .end local v0           #categoryNameLower:Ljava/lang/String;
    .end local v1           #display:Ljava/lang/Integer;
    .end local v5           #venueNameLower:Ljava/lang/String;
    :cond_7
    move-object v5, v0

    .line 122
    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    if-ne p0, p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 190
    check-cast v0, Lco/vine/android/api/VineVenue;

    .line 192
    .local v0, vineVenue:Lco/vine/android/api/VineVenue;
    iget v3, p0, Lco/vine/android/api/VineVenue;->displayType:I

    iget v4, v0, Lco/vine/android/api/VineVenue;->displayType:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 193
    :cond_4
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 194
    goto :goto_0

    .line 193
    :cond_6
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 195
    :cond_7
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    .line 197
    goto :goto_0

    .line 195
    :cond_9
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 198
    :cond_a
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 200
    goto :goto_0

    .line 198
    :cond_c
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 201
    :cond_d
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    move v1, v2

    .line 203
    goto :goto_0

    .line 201
    :cond_f
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 204
    :cond_10
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_11
    move v1, v2

    goto :goto_0

    :cond_12
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    if-nez v3, :cond_11

    .line 205
    :cond_13
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_14
    move v1, v2

    .line 207
    goto/16 :goto_0

    .line 205
    :cond_15
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 208
    :cond_16
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_17
    move v1, v2

    goto/16 :goto_0

    :cond_18
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 209
    :cond_19
    iget-object v3, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    iget-object v4, v0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 211
    goto/16 :goto_0

    .line 209
    :cond_1a
    iget-object v3, v0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 219
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 220
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 221
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 222
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 223
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 224
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 225
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 226
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lco/vine/android/api/VineVenue;->displayType:I

    add-int v0, v1, v2

    .line 227
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 218
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 219
    goto :goto_1

    :cond_3
    move v2, v1

    .line 220
    goto :goto_2

    :cond_4
    move v2, v1

    .line 221
    goto :goto_3

    :cond_5
    move v2, v1

    .line 222
    goto :goto_4

    :cond_6
    move v2, v1

    .line 223
    goto :goto_5

    :cond_7
    move v2, v1

    .line 224
    goto :goto_6
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "objectInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    .line 162
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    .line 163
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    .line 164
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    .line 165
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    .line 166
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    .line 167
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    .line 168
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    .line 169
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lco/vine/android/api/VineVenue;->displayType:I

    .line 170
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "objectOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lco/vine/android/api/VineVenue;->categoryIconUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lco/vine/android/api/VineVenue;->categoryName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lco/vine/android/api/VineVenue;->categoryId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lco/vine/android/api/VineVenue;->city:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lco/vine/android/api/VineVenue;->countryCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lco/vine/android/api/VineVenue;->state:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lco/vine/android/api/VineVenue;->address:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 182
    iget v0, p0, Lco/vine/android/api/VineVenue;->displayType:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 183
    return-void
.end method
