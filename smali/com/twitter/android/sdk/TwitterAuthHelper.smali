.class public Lcom/twitter/android/sdk/TwitterAuthHelper;
.super Ljava/lang/Object;
.source "TwitterAuthHelper.java"


# static fields
.field private static final FORM_URLENCODED_HEADER:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final OAUTH_SIGNATURE_METHOD:Ljava/lang/String; = "HMAC-SHA1"

.field private static final OAUTH_VERSION:Ljava/lang/String; = "1.0"

.field private static final RAND:Ljava/security/SecureRandom; = null

.field private static final REALM:Ljava/lang/String; = "https://api.twitter.com/"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/twitter/android/sdk/TwitterAuthHelper;->RAND:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static attachHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)V
    .locals 10
    .parameter "conn"
    .parameter "token"
    .parameter "tokenSecret"
    .parameter "consumerKey"
    .parameter "consumerSecret"
    .parameter "timestampMillis"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/twitter/android/sdk/TwitterAuthHelper;->makeAuthorizationHeaderValue(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, authHeader:Ljava/lang/String;
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static attachHeader(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)V
    .locals 10
    .parameter "httpReq"
    .parameter "token"
    .parameter "tokenSecret"
    .parameter "consumerKey"
    .parameter "consumerSecret"
    .parameter "timestampMillis"
    .parameter "entity"

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/twitter/android/sdk/TwitterAuthHelper;->makeAuthorizationHeaderValue(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, authHeader:Ljava/lang/String;
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, v9}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const-string v0, ""

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "signature"
    .parameter "consumerKey"
    .parameter "nonce"
    .parameter "timestamp"
    .parameter "token"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    if-nez p4, :cond_0

    .line 132
    const-string v0, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""

    .line 133
    .local v0, fmt:Ljava/lang/String;
    const-string v1, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "https://api.twitter.com/"

    aput-object v3, v2, v4

    const-string v3, "1.0"

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    aput-object p0, v2, v8

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    const-string v4, "HMAC-SHA1"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 137
    .end local v0           #fmt:Ljava/lang/String;
    :cond_0
    const-string v0, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_token=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""

    .line 138
    .restart local v0       #fmt:Ljava/lang/String;
    const-string v1, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_token=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "https://api.twitter.com/"

    aput-object v3, v2, v4

    const-string v3, "1.0"

    aput-object v3, v2, v5

    aput-object p4, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v8

    const/4 v3, 0x5

    aput-object p0, v2, v3

    const/4 v3, 0x6

    aput-object p1, v2, v3

    const/4 v3, 0x7

    const-string v4, "HMAC-SHA1"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static makeAuthorizationHeaderValue(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 12
    .parameter "uri"
    .parameter "httpMethod"
    .parameter "token"
    .parameter "tokenSecret"
    .parameter "consumerKey"
    .parameter "consumerSecret"
    .parameter "timestampMillis"
    .parameter "entity"

    .prologue
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/sdk/TwitterAuthHelper;->RAND:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, nonce:Ljava/lang/String;
    const-wide/16 v1, 0x3e8

    div-long v9, p6, v1

    .line 201
    .local v9, secondsFromEpoch:J
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .local v5, timestamp:Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p8

    .line 202
    invoke-static/range {v1 .. v7}, Lcom/twitter/android/sdk/TwitterAuthHelper;->makeSignatureBase(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 204
    .local v8, sbs:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-static {v8, v0, p3}, Lcom/twitter/android/sdk/TwitterAuthHelper;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 205
    .local v11, signature:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v11, v0, v4, v5, p2}, Lcom/twitter/android/sdk/TwitterAuthHelper;->makeAuthorizationHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeSignatureBase(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 14
    .parameter "u"
    .parameter "httpMethod"
    .parameter "token"
    .parameter "nonce"
    .parameter "timestamp"
    .parameter "consumerKey"
    .parameter "entity"

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, encodedQueryString:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v10, sb:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    if-eqz p6, :cond_2

    .line 89
    invoke-interface/range {p6 .. p6}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    .line 90
    .local v2, contentType:Lorg/apache/http/Header;
    if-eqz v2, :cond_2

    const-string v12, "application/x-www-form-urlencoded"

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 93
    :try_start_0
    invoke-static/range {p6 .. p6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, entityVal:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 95
    const-string v12, "&"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2           #contentType:Lorg/apache/http/Header;
    .end local v5           #entityVal:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/twitter/android/sdk/TwitterAuthHelper;->parseForm(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v9

    .line 104
    .local v9, params:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "oauth_consumer_key"

    move-object/from16 v0, p5

    invoke-virtual {v9, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v12, "oauth_nonce"

    move-object/from16 v0, p3

    invoke-virtual {v9, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v12, "oauth_signature_method"

    const-string v13, "HMAC-SHA1"

    invoke-virtual {v9, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v12, "oauth_timestamp"

    move-object/from16 v0, p4

    invoke-virtual {v9, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v12, "oauth_version"

    const-string v13, "1.0"

    invoke-virtual {v9, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    if-eqz p2, :cond_3

    .line 110
    const-string v12, "oauth_token"

    move-object/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, b:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urlFromRequest(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, url:Ljava/lang/String;
    const-string v12, "&"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v8

    .line 117
    .local v8, numParams:I
    const/4 v3, 0x0

    .line 118
    .local v3, current:I
    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 119
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%3D"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/twitter/android/sdk/TwitterAuthHelper;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    if-ge v3, v8, :cond_4

    .line 123
    const-string v12, "%26"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 98
    .end local v1           #b:Ljava/lang/StringBuilder;
    .end local v3           #current:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #numParams:I
    .end local v9           #params:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #url:Ljava/lang/String;
    .restart local v2       #contentType:Lorg/apache/http/Header;
    :catch_0
    move-exception v12

    goto/16 :goto_0
.end method

.method public static parseForm(Ljava/lang/String;Z)Ljava/util/TreeMap;
    .locals 11
    .parameter "form"
    .parameter "decode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 170
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 171
    .local v3, m:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    .line 172
    const-string v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 173
    .local v5, nvps:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, nvp:[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 175
    if-eqz p1, :cond_1

    .line 176
    aget-object v6, v4, v9

    const-string v7, "UTF8"

    invoke-static {v6, v7}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urldecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v4, v10

    const-string v8, "UTF8"

    invoke-static {v7, v8}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urldecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    aget-object v6, v4, v9

    aget-object v7, v4, v10

    invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 181
    :cond_2
    aget-object v6, v4, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 182
    if-eqz p1, :cond_3

    .line 183
    aget-object v6, v4, v9

    const-string v7, "UTF8"

    invoke-static {v6, v7}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urldecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 185
    :cond_3
    aget-object v6, v4, v9

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #nvp:[Ljava/lang/String;
    .end local v5           #nvps:Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "base"
    .parameter "consumerSecret"
    .parameter "tokenSecret"

    .prologue
    .line 146
    if-nez p2, :cond_0

    .line 147
    :try_start_0
    const-string p2, ""

    .line 149
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UTF8"

    invoke-static {p1, v9}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urlencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF8"

    invoke-static {p2, v9}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urlencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, key:Ljava/lang/String;
    const-string v8, "UTF8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 151
    .local v3, keyBytes:[B
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "HmacSHA1"

    invoke-direct {v7, v3, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 152
    .local v7, skey:Ljavax/crypto/SecretKey;
    const-string v8, "HmacSHA1"

    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 153
    .local v4, m:Ljavax/crypto/Mac;
    invoke-virtual {v4, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 155
    const-string v8, "UTF8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 156
    .local v0, baseBytes:[B
    invoke-virtual {v4, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v5

    .line 157
    .local v5, sigBytes:[B
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    const-string v9, "UTF8"

    invoke-direct {v6, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 159
    .local v6, signature:Ljava/lang/String;
    const-string v8, "UTF8"

    invoke-static {v6, v8}, Lcom/twitter/android/sdk/TwitterAuthHelper;->urlencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 165
    .end local v0           #baseBytes:[B
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyBytes:[B
    .end local v4           #m:Ljavax/crypto/Mac;
    .end local v5           #sigBytes:[B
    .end local v6           #signature:Ljava/lang/String;
    .end local v7           #skey:Ljavax/crypto/SecretKey;
    :goto_0
    return-object v8

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v8, ""

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v8, ""

    goto :goto_0

    .line 164
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 165
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, ""

    goto :goto_0
.end method

.method public static urlFromRequest(Ljava/net/URI;)Ljava/lang/String;
    .locals 2
    .parameter "u"

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urldecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "encoding"

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 222
    :try_start_0
    const-string v1, ""

    .line 224
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, unlikely:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static urlencode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "encoding"

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    :try_start_0
    const-string v1, ""

    .line 213
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, unlikely:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
