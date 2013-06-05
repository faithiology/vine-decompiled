.class public Lco/vine/android/client/VineAPI;
.super Ljava/lang/Object;
.source "VineAPI.java"


# static fields
.field private static final ENCODER:Lcom/google/gdata/util/common/base/PercentEscaper; = null

.field public static final GLOBAL_SIZE:I = 0x14

.field public static final PATH_SEPARATOR:C = '/'

.field public static final RESOURCE_CLIENT_PROFILE:Ljava/lang/String; = "clientprofiles"

.field public static final RESOURCE_COMMENTS:Ljava/lang/String; = "comments"

.field public static final RESOURCE_COMPLAINTS:Ljava/lang/String; = "complaints"

.field public static final RESOURCE_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final RESOURCE_EDITORS_PICK:Ljava/lang/String; = "promoted"

.field public static final RESOURCE_FOLLOWERS:Ljava/lang/String; = "followers"

.field public static final RESOURCE_FOLLOWING:Ljava/lang/String; = "following"

.field public static final RESOURCE_GRAPH:Ljava/lang/String; = "graph"

.field public static final RESOURCE_LIKES:Ljava/lang/String; = "likes"

.field public static final RESOURCE_ME:Ljava/lang/String; = "me"

.field public static final RESOURCE_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field public static final RESOURCE_POPULAR_NOW:Ljava/lang/String; = "popular"

.field public static final RESOURCE_POSTS:Ljava/lang/String; = "posts"

.field public static final RESOURCE_PROFILES:Ljava/lang/String; = "profiles"

.field public static final RESOURCE_SHARED:Ljava/lang/String; = "s"

.field public static final RESOURCE_SUGGESTED:Ljava/lang/String; = "suggested"

.field public static final RESOURCE_TAGS:Ljava/lang/String; = "tags"

.field public static final RESOURCE_TIMELINES:Ljava/lang/String; = "timelines"

.field public static final RESOURCE_TWITTER:Ljava/lang/String; = "twitter"

.field public static final RESOURCE_USERS:Ljava/lang/String; = "users"

.field private static mApi:Lco/vine/android/client/VineAPI;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private final mAmazonUrl:Ljava/lang/String;

.field private final mBaseUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mLocale:Ljava/lang/String;

.field private mSession:Lco/vine/android/client/Session;

.field private final mTwitterUrl:Ljava/lang/String;

.field private mXVineClientHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/google/gdata/util/common/base/PercentEscaper;

    const-string v1, "-._~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/base/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lco/vine/android/client/VineAPI;->ENCODER:Lcom/google/gdata/util/common/base/PercentEscaper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lco/vine/android/client/VineAPI;->mContext:Landroid/content/Context;

    .line 65
    const v3, 0x7f080002

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/client/VineAPI;->mBaseUrl:Ljava/lang/String;

    .line 66
    const v3, 0x7f080003

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/client/VineAPI;->mAmazonUrl:Ljava/lang/String;

    .line 67
    const v3, 0x7f080005

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/client/VineAPI;->mTwitterUrl:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, locale:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    iput-object v2, p0, Lco/vine/android/client/VineAPI;->mLocale:Ljava/lang/String;

    .line 78
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 80
    .local v0, clientHeader:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0           #clientHeader:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 74
    :cond_1
    iput-object v6, p0, Lco/vine/android/client/VineAPI;->mLocale:Ljava/lang/String;

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v6, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;

    goto :goto_1
.end method

.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;[JII)I
    .locals 4
    .parameter "sb"
    .parameter "name"
    .parameter "values"
    .parameter "start"
    .parameter "max"

    .prologue
    .line 215
    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge p3, v2, :cond_2

    if-lez p4, :cond_2

    .line 216
    invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int v2, p3, p4

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    .local v0, end:I
    move v1, p3

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 219
    aget-wide v2, p2, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 221
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_1
    sub-int v2, v0, p3

    .line 226
    .end local v0           #end:I
    .end local v1           #i:I
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;D)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 199
    invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 200
    return-void
.end method

.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 177
    invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    return-void
.end method

.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 188
    invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    return-void
.end method

.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 210
    invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lco/vine/android/client/VineAPI;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    return-void
.end method

.method public static addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .parameter "sb"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 166
    invoke-static {p0, p1}, Lco/vine/android/client/VineAPI;->prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    return-void
.end method

.method public static varargs buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 6
    .parameter "baseUrl"
    .parameter "paths"

    .prologue
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 150
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 151
    .local v3, path:Ljava/lang/Object;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #path:Ljava/lang/Object;
    :cond_0
    return-object v4
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 241
    if-nez p0, :cond_0

    .line 242
    const-string v0, ""

    .line 244
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lco/vine/android/client/VineAPI;->ENCODER:Lcom/google/gdata/util/common/base/PercentEscaper;

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    sget-object v0, Lco/vine/android/client/VineAPI;->mApi:Lco/vine/android/client/VineAPI;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lco/vine/android/client/VineAPI;

    invoke-direct {v0, p0}, Lco/vine/android/client/VineAPI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/client/VineAPI;->mApi:Lco/vine/android/client/VineAPI;

    .line 92
    :cond_0
    sget-object v0, Lco/vine/android/client/VineAPI;->mApi:Lco/vine/android/client/VineAPI;

    return-object v0
.end method

.method private static prefixParam(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "sb"
    .parameter "name"

    .prologue
    .line 231
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 232
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addClientHeaders(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 108
    iget-object v0, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "X-Vine-Client"

    iget-object v1, p0, Lco/vine/android/client/VineAPI;->mXVineClientHeader:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addLocale(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 120
    iget-object v0, p0, Lco/vine/android/client/VineAPI;->mLocale:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "locale"

    iget-object v1, p0, Lco/vine/android/client/VineAPI;->mLocale:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V
    .locals 2
    .parameter "op"
    .parameter "key"

    .prologue
    .line 115
    invoke-virtual {p1}, Lco/vine/android/network/HttpOperation;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    .line 116
    .local v0, req:Lorg/apache/http/HttpRequest;
    const-string v1, "vine-session-id"

    invoke-interface {v0, v1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public varargs buildUrl([Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "paths"

    .prologue
    .line 134
    iget-object v0, p0, Lco/vine/android/client/VineAPI;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getAmazonUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lco/vine/android/client/VineAPI;->mAmazonUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lco/vine/android/client/VineAPI;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lco/vine/android/client/VineAPI;->mTwitterUrl:Ljava/lang/String;

    return-object v0
.end method
