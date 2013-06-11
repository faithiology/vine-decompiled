.class public Lco/vine/android/network/HttpOperation;
.super Ljava/lang/Object;
.source "HttpOperation.java"


# static fields
.field private static final DEFAULT_AUTH_RETRIES:I = 0x1

.field private static final DEFAULT_READER:Lco/vine/android/network/HttpOperationReader; = null

.field public static final DEFAULT_RETRIES:I = 0x0

.field private static final EMPTY_RESULTS:[Lco/vine/android/network/HttpResult; = null

.field public static final FORM_URLENCODED_HEADER:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HIGH_PRIORITY_RETRIES:I = 0x1

.field public static final HTTP_MULTIPLE_REDIRECT:I = 0x12c

.field public static final HTTP_OK:I = 0xc8

#the value of this static final field might be set in the static constructor
.field private static final LOGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "HttpOperation"

.field private static final X_RATELIMIT_LIMIT:Ljava/lang/String; = "X-RateLimit-Limit"

.field private static final X_RATELIMIT_REMAINING:Ljava/lang/String; = "X-RateLimit-Remaining"

.field private static final X_RATELIMIT_RESET:Ljava/lang/String; = "X-RateLimit-Reset"

.field public static final sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public exception:Ljava/lang/Exception;

.field private final mHttpClient:Lorg/apache/http/client/HttpClient;

.field private final mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final mReader:Lco/vine/android/network/HttpOperationReader;

.field private mResults:[Lco/vine/android/network/HttpResult;

.field public statusCode:I

.field public statusPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "HttpOperation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Lco/vine/android/network/HttpResult;

    sput-object v0, Lco/vine/android/network/HttpOperation;->EMPTY_RESULTS:[Lco/vine/android/network/HttpResult;

    .line 81
    new-instance v0, Lco/vine/android/network/DefaultHttpOperationReader;

    invoke-direct {v0}, Lco/vine/android/network/DefaultHttpOperationReader;-><init>()V

    sput-object v0, Lco/vine/android/network/HttpOperation;->DEFAULT_READER:Lco/vine/android/network/HttpOperationReader;

    return-void
.end method

.method public constructor <init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
    .locals 2
    .parameter "client"
    .parameter "httpReq"
    .parameter "reader"
    .parameter "api"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz p4, :cond_0

    .line 106
    invoke-virtual {p4, p2}, Lco/vine/android/client/VineAPI;->addClientHeaders(Lorg/apache/http/HttpRequest;)V

    .line 109
    :cond_0
    invoke-virtual {p1}, Lco/vine/android/network/HttpOperationClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 110
    iput-object p2, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 111
    if-nez p3, :cond_1

    .line 112
    sget-object v0, Lco/vine/android/network/HttpOperation;->DEFAULT_READER:Lco/vine/android/network/HttpOperationReader;

    iput-object v0, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_1
    iput-object p3, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    goto :goto_0
.end method

.method public static createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter "reader"
    .parameter "key"

    .prologue
    .line 455
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 456
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, delete:Lorg/apache/http/client/methods/HttpDelete;
    new-instance v1, Lco/vine/android/network/HttpOperation;

    invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 458
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v1, p4}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V

    .line 459
    return-object v1
.end method

.method public static createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter "reader"
    .parameter "key"

    .prologue
    .line 370
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 371
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lco/vine/android/network/HttpOperation;

    invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 373
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v1, p4}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V

    .line 374
    return-object v1
.end method

.method public static createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
    .locals 5
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter
    .parameter "reader"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/network/HttpOperationClient;",
            "Ljava/lang/StringBuilder;",
            "Lco/vine/android/client/VineAPI;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Lco/vine/android/network/HttpOperationReader;",
            "Ljava/lang/String;",
            ")",
            "Lco/vine/android/network/HttpOperation;"
        }
    .end annotation

    .prologue
    .line 423
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 424
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 427
    .local v3, put:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p3, :cond_0

    .line 429
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v1, p3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 430
    .local v1, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v1           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    new-instance v2, Lco/vine/android/network/HttpOperation;

    invoke-direct {v2, p0, v3, p4, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 437
    .local v2, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v2, p5}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V

    .line 438
    return-object v2

    .line 431
    .end local v2           #op:Lco/vine/android/network/HttpOperation;
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
    .locals 5
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter
    .parameter "reader"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/network/HttpOperationClient;",
            "Ljava/lang/StringBuilder;",
            "Lco/vine/android/client/VineAPI;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Lco/vine/android/network/HttpOperationReader;",
            "Ljava/lang/String;",
            ")",
            "Lco/vine/android/network/HttpOperation;"
        }
    .end annotation

    .prologue
    .line 391
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 392
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 395
    .local v3, put:Lorg/apache/http/client/methods/HttpPut;
    if-eqz p3, :cond_0

    .line 397
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v1, p3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 398
    .local v1, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    new-instance v2, Lco/vine/android/network/HttpOperation;

    invoke-direct {v2, p0, v3, p4, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 405
    .local v2, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v2, p5}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V

    .line 406
    return-object v2

    .line 399
    .end local v2           #op:Lco/vine/android/network/HttpOperation;
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "reader"
    .parameter "api"

    .prologue
    .line 473
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lco/vine/android/network/HttpOperation;

    invoke-direct {v1, p0, v0, p2, p3}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 475
    .local v1, op:Lco/vine/android/network/HttpOperation;
    return-object v1
.end method

.method public static createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
    .locals 4
    .parameter "client"
    .parameter "url"
    .parameter
    .parameter "reader"
    .parameter "api"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/network/HttpOperationClient;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Lco/vine/android/network/HttpOperationReader;",
            "Lco/vine/android/client/VineAPI;",
            ")",
            "Lco/vine/android/network/HttpOperation;"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 492
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 494
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v1, p2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 495
    .local v1, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v1           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    new-instance v3, Lco/vine/android/network/HttpOperation;

    invoke-direct {v3, p0, v2, p3, p4}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    return-object v3

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createSignedPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter
    .parameter "reader"
    .parameter "api"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/network/HttpOperationClient;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Lco/vine/android/network/HttpOperationReader;",
            "Lco/vine/android/client/VineAPI;",
            "Ljava/lang/String;",
            ")",
            "Lco/vine/android/network/HttpOperation;"
        }
    .end annotation

    .prologue
    .line 520
    .local p2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p4, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 521
    invoke-static {p0, p1, p2, p3, p4}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v0

    .line 522
    .local v0, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p4, v0, p5}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V

    .line 523
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 124
    return-void
.end method

.method public execute()Lco/vine/android/network/HttpOperation;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/network/HttpOperation;->execute(I)Lco/vine/android/network/HttpOperation;

    move-result-object v0

    return-object v0
.end method

.method public final execute(I)Lco/vine/android/network/HttpOperation;
    .locals 42
    .parameter "retries"

    .prologue
    .line 146
    const/4 v3, 0x1

    .line 149
    .local v3, authRetry:I
    const/16 v17, 0x0

    .line 155
    .local v17, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v21, v0

    .line 156
    .local v21, httpReq:Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v34, Ljava/util/ArrayList;

    const/16 v39, 0x0

    move/from16 v0, p1

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .local v34, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/network/HttpResult;>;"
    :cond_0
    const-wide/16 v29, 0x0

    .line 161
    .local v29, readTime:J
    const-wide/16 v27, 0x0

    .line 162
    .local v27, openTime:J
    const-wide/16 v6, 0x0

    .line 163
    .local v6, closeTime:J
    sget-object v39, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual/range {v39 .. v39}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    .line 166
    .local v11, currentTimeOffset:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lco/vine/android/network/HttpOperation;->prepareRequest(J)V

    .line 168
    sget-boolean v39, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    if-eqz v39, :cond_1

    .line 169
    const-string v39, "HttpOperation"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 177
    .local v4, before:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v32

    .line 178
    .local v32, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v36

    .line 179
    .local v36, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v35

    .line 180
    .local v35, statusCode:I
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v31

    .line 182
    .local v31, reasonPhrase:Ljava/lang/String;
    sget-boolean v39, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    if-eqz v39, :cond_2

    .line 183
    const-string v39, "HttpOperation"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " ["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "]"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    sparse-switch v35, :sswitch_data_0

    .line 214
    const/16 p1, 0x0

    .line 219
    :cond_3
    :goto_0
    :sswitch_0
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    .line 220
    .local v18, entity:Lorg/apache/http/HttpEntity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    sub-long v27, v39, v4

    .line 221
    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v39

    if-eqz v39, :cond_6

    .line 223
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v39

    if-eqz v39, :cond_9

    .line 224
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, contentEncoding:Ljava/lang/String;
    :goto_1
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v19

    .line 230
    .local v19, entityContentType:Lorg/apache/http/Header;
    if-eqz v19, :cond_a

    .line 231
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 235
    .local v10, contentType:Ljava/lang/String;
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v39

    move-wide/from16 v0, v39

    long-to-int v9, v0

    .line 236
    .local v9, contentLength:I
    sget-boolean v39, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    if-eqz v39, :cond_4

    .line 237
    const-string v39, "HttpOperation"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "read: Encoding: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", type: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", length: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_4
    const/16 v22, 0x0

    .line 242
    .local v22, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v24, Lco/vine/android/util/MeasureInputStream;

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lco/vine/android/util/MeasureInputStream;-><init>(Ljava/io/InputStream;)V

    .line 244
    .local v24, measuredIn:Lco/vine/android/util/MeasureInputStream;
    move-object/from16 v22, v24

    .line 245
    if-nez v10, :cond_b

    .line 270
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v35

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v9, v2}, Lco/vine/android/network/HttpOperationReader;->readInput(IILjava/io/InputStream;)V

    .line 271
    invoke-virtual/range {v24 .. v24}, Lco/vine/android/util/MeasureInputStream;->getReadTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v29

    .line 273
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 274
    .local v25, now:J
    invoke-static/range {v22 .. v22}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v39

    sub-long v6, v39, v25

    .line 288
    .end local v8           #contentEncoding:Ljava/lang/String;
    .end local v9           #contentLength:I
    .end local v10           #contentType:Ljava/lang/String;
    .end local v19           #entityContentType:Lorg/apache/http/Header;
    .end local v22           #in:Ljava/io/InputStream;
    .end local v24           #measuredIn:Lco/vine/android/util/MeasureInputStream;
    .end local v25           #now:J
    :cond_6
    add-long v39, v27, v29

    add-long v15, v39, v6

    .line 292
    .local v15, durationMs:J
    new-instance v33, Lco/vine/android/network/HttpResult;

    move-object/from16 v0, v33

    move/from16 v1, v35

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lco/vine/android/network/HttpResult;-><init>(ILjava/lang/String;)V

    .line 293
    .local v33, result:Lco/vine/android/network/HttpResult;
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    iput-object v0, v1, Lco/vine/android/network/HttpResult;->exception:Ljava/lang/Exception;

    .line 294
    move-object/from16 v0, v33

    iput-wide v15, v0, Lco/vine/android/network/HttpResult;->durationMs:J

    .line 295
    const/16 v39, 0xc8

    move/from16 v0, v35

    move/from16 v1, v39

    if-eq v0, v1, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lco/vine/android/network/HttpOperationReader;->onHandleError(Lco/vine/android/network/HttpResult;)V

    .line 298
    :cond_7
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 p1, p1, -0x1

    .line 301
    if-gez p1, :cond_0

    .line 303
    .end local v18           #entity:Lorg/apache/http/HttpEntity;
    .end local v32           #resp:Lorg/apache/http/HttpResponse;
    .end local v33           #result:Lco/vine/android/network/HttpResult;
    .end local v36           #statusLine:Lorg/apache/http/StatusLine;
    :goto_4
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/network/HttpOperation;->statusCode:I

    .line 304
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/network/HttpOperation;->statusPhrase:Ljava/lang/String;

    .line 305
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/network/HttpOperation;->exception:Ljava/lang/Exception;

    .line 307
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v39

    new-array v0, v0, [Lco/vine/android/network/HttpResult;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;

    move-object/from16 v39, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 310
    return-object p0

    .line 190
    .end local v15           #durationMs:J
    .restart local v32       #resp:Lorg/apache/http/HttpResponse;
    .restart local v36       #statusLine:Lorg/apache/http/StatusLine;
    :sswitch_1
    :try_start_3
    const-string v39, "Date"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v14

    .line 191
    .local v14, dateHeader:Lorg/apache/http/Header;
    if-eqz v14, :cond_8

    .line 192
    sget-object v39, Lco/vine/android/util/Util;->DATE_TIME_RFC1123:Ljava/text/SimpleDateFormat;

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 193
    .local v13, d:Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v37

    .line 194
    .local v37, ts:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 195
    .restart local v25       #now:J
    sget-object v39, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v40, v37, v25

    invoke-virtual/range {v39 .. v41}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    .end local v13           #d:Ljava/util/Date;
    .end local v25           #now:J
    .end local v37           #ts:J
    :cond_8
    if-lez v3, :cond_3

    .line 198
    add-int/lit8 v3, v3, -0x1

    .line 199
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 226
    .end local v14           #dateHeader:Lorg/apache/http/Header;
    .restart local v18       #entity:Lorg/apache/http/HttpEntity;
    :cond_9
    const/4 v8, 0x0

    .restart local v8       #contentEncoding:Ljava/lang/String;
    goto/16 :goto_1

    .line 233
    .restart local v19       #entityContentType:Lorg/apache/http/Header;
    :cond_a
    const/4 v10, 0x0

    .restart local v10       #contentType:Ljava/lang/String;
    goto/16 :goto_2

    .line 248
    .restart local v9       #contentLength:I
    .restart local v22       #in:Ljava/io/InputStream;
    .restart local v24       #measuredIn:Lco/vine/android/util/MeasureInputStream;
    :cond_b
    :try_start_4
    const-string v39, "application/octet-stream"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_5

    const-string v39, "video/mp4"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_5

    const-string v39, "binary/octet-stream"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_5

    .line 252
    const-string v39, "application/json"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_c

    .line 253
    if-eqz v8, :cond_5

    const-string v39, "gzip"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 254
    new-instance v23, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 255
    .end local v22           #in:Ljava/io/InputStream;
    .local v23, in:Ljava/io/InputStream;
    const/4 v9, -0x1

    move-object/from16 v22, v23

    .end local v23           #in:Ljava/io/InputStream;
    .restart local v22       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 257
    :cond_c
    const-string v39, "text/html"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "text/plain"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "text/xml"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "application/xml"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_d

    const-string v39, "image/"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_e

    .line 263
    :cond_d
    if-eqz v8, :cond_5

    const-string v39, "gzip"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 264
    new-instance v23, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 265
    .end local v22           #in:Ljava/io/InputStream;
    .restart local v23       #in:Ljava/io/InputStream;
    const/4 v9, -0x1

    move-object/from16 v22, v23

    .end local v23           #in:Ljava/io/InputStream;
    .restart local v22       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 268
    :cond_e
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unsupported content type: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 273
    .end local v24           #measuredIn:Lco/vine/android/util/MeasureInputStream;
    :catchall_0
    move-exception v39

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 274
    .restart local v25       #now:J
    invoke-static/range {v22 .. v22}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    sub-long v6, v40, v25

    .line 276
    throw v39
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 278
    .end local v8           #contentEncoding:Ljava/lang/String;
    .end local v9           #contentLength:I
    .end local v10           #contentType:Ljava/lang/String;
    .end local v18           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #entityContentType:Lorg/apache/http/Header;
    .end local v22           #in:Ljava/io/InputStream;
    .end local v25           #now:J
    .end local v31           #reasonPhrase:Ljava/lang/String;
    .end local v32           #resp:Lorg/apache/http/HttpResponse;
    .end local v35           #statusCode:I
    .end local v36           #statusLine:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v20

    .line 279
    .local v20, ex:Ljava/lang/Exception;
    :try_start_6
    sget-boolean v39, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    if-eqz v39, :cond_f

    .line 280
    const-string v39, "HttpOperation"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "]"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :cond_f
    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 283
    const/16 v35, 0x0

    .line 284
    .restart local v35       #statusCode:I
    const/16 v31, 0x0

    .line 285
    .restart local v31       #reasonPhrase:Ljava/lang/String;
    move-object/from16 v17, v20

    .line 288
    add-long v39, v27, v29

    add-long v15, v39, v6

    .restart local v15       #durationMs:J
    goto/16 :goto_4

    .end local v15           #durationMs:J
    .end local v20           #ex:Ljava/lang/Exception;
    .end local v31           #reasonPhrase:Ljava/lang/String;
    .end local v35           #statusCode:I
    :catchall_1
    move-exception v39

    add-long v40, v27, v29

    add-long v15, v40, v6

    .restart local v15       #durationMs:J
    throw v39

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x1f4 -> :sswitch_0
        0x1f6 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public getReader()Lco/vine/android/network/HttpOperationReader;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    return-object v0
.end method

.method public getResults()[Lco/vine/android/network/HttpResult;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lco/vine/android/network/HttpOperation;->EMPTY_RESULTS:[Lco/vine/android/network/HttpResult;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;

    goto :goto_0
.end method

.method public isOK()Z
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Lco/vine/android/network/HttpOperation;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lco/vine/android/network/HttpOperation;->statusCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lco/vine/android/network/HttpOperation;->statusCode:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareRequest(J)V
    .locals 0
    .parameter "timeOffset"

    .prologue
    .line 321
    return-void
.end method
