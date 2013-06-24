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

.field public uploadKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "HttpOperation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Lco/vine/android/network/HttpResult;

    sput-object v0, Lco/vine/android/network/HttpOperation;->EMPTY_RESULTS:[Lco/vine/android/network/HttpResult;

    .line 82
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
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz p4, :cond_0

    .line 108
    invoke-virtual {p4, p2}, Lco/vine/android/client/VineAPI;->addClientHeaders(Lorg/apache/http/HttpRequest;)V

    .line 111
    :cond_0
    invoke-virtual {p1}, Lco/vine/android/network/HttpOperationClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 112
    iput-object p2, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 113
    if-nez p3, :cond_1

    .line 114
    sget-object v0, Lco/vine/android/network/HttpOperation;->DEFAULT_READER:Lco/vine/android/network/HttpOperationReader;

    iput-object v0, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_1
    iput-object p3, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    goto :goto_0
.end method

.method public static createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter "reader"

    .prologue
    .line 474
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 475
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, delete:Lorg/apache/http/client/methods/HttpDelete;
    new-instance v1, Lco/vine/android/network/HttpOperation;

    invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 477
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v1}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V

    .line 478
    return-object v1
.end method

.method public static createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter "reader"

    .prologue
    .line 381
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 382
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lco/vine/android/network/HttpOperation;

    invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 384
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v1}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V

    .line 385
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
    .line 391
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 392
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lco/vine/android/network/HttpOperation;

    invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 394
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v1, p4}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V

    .line 395
    return-object v1
.end method

.method public static createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
    .locals 5
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter
    .parameter "reader"
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
            ")",
            "Lco/vine/android/network/HttpOperation;"
        }
    .end annotation

    .prologue
    .line 444
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 445
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 448
    .local v3, put:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p3, :cond_0

    .line 450
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v1, p3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 451
    .local v1, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    new-instance v2, Lco/vine/android/network/HttpOperation;

    invoke-direct {v2, p0, v3, p4, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 458
    .local v2, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v2}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V

    .line 459
    return-object v2

    .line 452
    .end local v2           #op:Lco/vine/android/network/HttpOperation;
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
    .locals 5
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter
    .parameter "reader"
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
            ")",
            "Lco/vine/android/network/HttpOperation;"
        }
    .end annotation

    .prologue
    .line 412
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 413
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 416
    .local v3, put:Lorg/apache/http/client/methods/HttpPut;
    if-eqz p3, :cond_0

    .line 418
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v1, p3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 419
    .local v1, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v1           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    new-instance v2, Lco/vine/android/network/HttpOperation;

    invoke-direct {v2, p0, v3, p4, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 426
    .local v2, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p2, v2}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V

    .line 427
    return-object v2

    .line 420
    .end local v2           #op:Lco/vine/android/network/HttpOperation;
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
    .locals 2
    .parameter "client"
    .parameter "url"
    .parameter "reader"
    .parameter "api"

    .prologue
    .line 492
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    if-eqz p3, :cond_0

    .line 494
    invoke-virtual {p3, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 496
    :cond_0
    new-instance v1, Lco/vine/android/network/HttpOperation;

    invoke-direct {v1, p0, v0, p2, p3}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    return-object v1
.end method

.method public static createMediaPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lorg/apache/http/HttpEntity;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
    .locals 3
    .parameter "client"
    .parameter "url"
    .parameter "reader"
    .parameter "entity"
    .parameter "api"

    .prologue
    .line 513
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 514
    .local v1, put:Lorg/apache/http/client/methods/HttpPut;
    if-eqz p3, :cond_0

    .line 515
    invoke-virtual {v1, p3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 517
    :cond_0
    invoke-virtual {p4, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 518
    new-instance v0, Lco/vine/android/network/HttpOperation;

    invoke-direct {v0, p0, v1, p2, p4}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 519
    .local v0, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p4, v0}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V

    .line 520
    return-object v0
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
    .line 534
    .local p2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 537
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    if-eqz p2, :cond_0

    .line 539
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v1, p2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 540
    .local v1, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v1           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    new-instance v3, Lco/vine/android/network/HttpOperation;

    invoke-direct {v3, p0, v2, p3, p4}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    return-object v3

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createResourceGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
    .locals 4
    .parameter "client"
    .parameter "url"
    .parameter "api"
    .parameter "reader"

    .prologue
    .line 501
    invoke-virtual {p2, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 502
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v1, Lco/vine/android/network/HttpOperation;

    invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V

    .line 504
    .local v1, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {p2, v1}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V

    .line 507
    :cond_0
    return-object v1
.end method

.method public static createSignedPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
    .locals 1
    .parameter "client"
    .parameter "url"
    .parameter
    .parameter "reader"
    .parameter "api"
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
            ")",
            "Lco/vine/android/network/HttpOperation;"
        }
    .end annotation

    .prologue
    .line 563
    .local p2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p4, p1}, Lco/vine/android/client/VineAPI;->addLocale(Ljava/lang/StringBuilder;)V

    .line 564
    invoke-static {p0, p1, p2, p3, p4}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;

    move-result-object v0

    .line 565
    .local v0, op:Lco/vine/android/network/HttpOperation;
    invoke-virtual {p4, v0}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V

    .line 566
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 126
    return-void
.end method

.method public execute()Lco/vine/android/network/HttpOperation;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/network/HttpOperation;->execute(I)Lco/vine/android/network/HttpOperation;

    move-result-object v0

    return-object v0
.end method

.method public final execute(I)Lco/vine/android/network/HttpOperation;
    .locals 44
    .parameter "retries"

    .prologue
    .line 148
    const/4 v3, 0x1

    .line 151
    .local v3, authRetry:I
    const/16 v17, 0x0

    .line 152
    .local v17, e:Ljava/lang/Exception;
    const/16 v40, 0x0

    .line 158
    .local v40, uploadKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v22, v0

    .line 159
    .local v22, httpReq:Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v35, Ljava/util/ArrayList;

    const/16 v41, 0x0

    move/from16 v0, p1

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v41

    add-int/lit8 v41, v41, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v35, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/network/HttpResult;>;"
    :cond_0
    const-wide/16 v30, 0x0

    .line 164
    .local v30, readTime:J
    const-wide/16 v28, 0x0

    .line 165
    .local v28, openTime:J
    const-wide/16 v6, 0x0

    .line 166
    .local v6, closeTime:J
    sget-object v41, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    .line 169
    .local v11, currentTimeOffset:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lco/vine/android/network/HttpOperation;->prepareRequest(J)V

    .line 171
    sget-boolean v41, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    if-eqz v41, :cond_1

    .line 172
    const-string v41, "HttpOperation"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 180
    .local v4, before:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v33

    .line 181
    .local v33, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v33 .. v33}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v37

    .line 182
    .local v37, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v37 .. v37}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v36

    .line 183
    .local v36, statusCode:I
    invoke-interface/range {v37 .. v37}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v32

    .line 185
    .local v32, reasonPhrase:Ljava/lang/String;
    sget-boolean v41, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    if-eqz v41, :cond_2

    .line 186
    const-string v41, "HttpOperation"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ["

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "]"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    sparse-switch v36, :sswitch_data_0

    .line 224
    const/16 p1, 0x0

    .line 228
    :cond_3
    :goto_0
    :sswitch_0
    invoke-interface/range {v33 .. v33}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    .line 229
    .local v18, entity:Lorg/apache/http/HttpEntity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v41

    sub-long v28, v41, v4

    .line 230
    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v41

    if-eqz v41, :cond_6

    .line 232
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v41

    if-eqz v41, :cond_9

    .line 233
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, contentEncoding:Ljava/lang/String;
    :goto_1
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v19

    .line 239
    .local v19, entityContentType:Lorg/apache/http/Header;
    if-eqz v19, :cond_a

    .line 240
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, contentType:Ljava/lang/String;
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v41

    move-wide/from16 v0, v41

    long-to-int v9, v0

    .line 245
    .local v9, contentLength:I
    sget-boolean v41, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    if-eqz v41, :cond_4

    .line 246
    const-string v41, "HttpOperation"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "read: Encoding: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", type: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", length: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_4
    const/16 v23, 0x0

    .line 251
    .local v23, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v25, Lco/vine/android/util/MeasureInputStream;

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v41

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lco/vine/android/util/MeasureInputStream;-><init>(Ljava/io/InputStream;)V

    .line 253
    .local v25, measuredIn:Lco/vine/android/util/MeasureInputStream;
    move-object/from16 v23, v25

    .line 254
    if-nez v10, :cond_b

    .line 279
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v9, v2}, Lco/vine/android/network/HttpOperationReader;->readInput(IILjava/io/InputStream;)V

    .line 280
    invoke-virtual/range {v25 .. v25}, Lco/vine/android/util/MeasureInputStream;->getReadTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v30

    .line 282
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 283
    .local v26, now:J
    invoke-static/range {v23 .. v23}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v41

    sub-long v6, v41, v26

    .line 297
    .end local v8           #contentEncoding:Ljava/lang/String;
    .end local v9           #contentLength:I
    .end local v10           #contentType:Ljava/lang/String;
    .end local v19           #entityContentType:Lorg/apache/http/Header;
    .end local v23           #in:Ljava/io/InputStream;
    .end local v25           #measuredIn:Lco/vine/android/util/MeasureInputStream;
    .end local v26           #now:J
    :cond_6
    add-long v41, v28, v30

    add-long v15, v41, v6

    .line 301
    .local v15, durationMs:J
    new-instance v34, Lco/vine/android/network/HttpResult;

    move-object/from16 v0, v34

    move/from16 v1, v36

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lco/vine/android/network/HttpResult;-><init>(ILjava/lang/String;)V

    .line 302
    .local v34, result:Lco/vine/android/network/HttpResult;
    move-object/from16 v0, v17

    move-object/from16 v1, v34

    iput-object v0, v1, Lco/vine/android/network/HttpResult;->exception:Ljava/lang/Exception;

    .line 303
    move-object/from16 v0, v34

    iput-wide v15, v0, Lco/vine/android/network/HttpResult;->durationMs:J

    .line 304
    move-object/from16 v0, v40

    move-object/from16 v1, v34

    iput-object v0, v1, Lco/vine/android/network/HttpResult;->uploadKey:Ljava/lang/String;

    .line 305
    const/16 v41, 0xc8

    move/from16 v0, v36

    move/from16 v1, v41

    if-eq v0, v1, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lco/vine/android/network/HttpOperationReader;->onHandleError(Lco/vine/android/network/HttpResult;)V

    .line 308
    :cond_7
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 p1, p1, -0x1

    .line 311
    if-gez p1, :cond_0

    .line 313
    .end local v18           #entity:Lorg/apache/http/HttpEntity;
    .end local v33           #resp:Lorg/apache/http/HttpResponse;
    .end local v34           #result:Lco/vine/android/network/HttpResult;
    .end local v37           #statusLine:Lorg/apache/http/StatusLine;
    :goto_4
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/network/HttpOperation;->statusCode:I

    .line 314
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/network/HttpOperation;->statusPhrase:Ljava/lang/String;

    .line 315
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/network/HttpOperation;->exception:Ljava/lang/Exception;

    .line 316
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/network/HttpOperation;->uploadKey:Ljava/lang/String;

    .line 318
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    new-array v0, v0, [Lco/vine/android/network/HttpResult;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;

    move-object/from16 v41, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 321
    return-object p0

    .line 193
    .end local v15           #durationMs:J
    .restart local v33       #resp:Lorg/apache/http/HttpResponse;
    .restart local v37       #statusLine:Lorg/apache/http/StatusLine;
    :sswitch_1
    :try_start_3
    const-string v41, "X-Upload-Key"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v21

    .line 194
    .local v21, headers:[Lorg/apache/http/Header;
    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v41, v0

    if-lez v41, :cond_3

    .line 195
    const/16 v41, 0x0

    aget-object v41, v21, v41

    invoke-interface/range {v41 .. v41}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_0

    .line 200
    .end local v21           #headers:[Lorg/apache/http/Header;
    :sswitch_2
    const-string v41, "Date"

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v14

    .line 201
    .local v14, dateHeader:Lorg/apache/http/Header;
    if-eqz v14, :cond_8

    .line 202
    sget-object v41, Lco/vine/android/util/Util;->DATE_TIME_RFC1123:Ljava/text/SimpleDateFormat;

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 203
    .local v13, d:Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v38

    .line 204
    .local v38, ts:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 205
    .restart local v26       #now:J
    sget-object v41, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v42, v38, v26

    invoke-virtual/range {v41 .. v43}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 207
    .end local v13           #d:Ljava/util/Date;
    .end local v26           #now:J
    .end local v38           #ts:J
    :cond_8
    if-lez v3, :cond_3

    .line 208
    add-int/lit8 v3, v3, -0x1

    .line 209
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 235
    .end local v14           #dateHeader:Lorg/apache/http/Header;
    .restart local v18       #entity:Lorg/apache/http/HttpEntity;
    :cond_9
    const/4 v8, 0x0

    .restart local v8       #contentEncoding:Ljava/lang/String;
    goto/16 :goto_1

    .line 242
    .restart local v19       #entityContentType:Lorg/apache/http/Header;
    :cond_a
    const/4 v10, 0x0

    .restart local v10       #contentType:Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    .restart local v9       #contentLength:I
    .restart local v23       #in:Ljava/io/InputStream;
    .restart local v25       #measuredIn:Lco/vine/android/util/MeasureInputStream;
    :cond_b
    :try_start_4
    const-string v41, "application/octet-stream"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_5

    const-string v41, "video/mp4"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_5

    const-string v41, "binary/octet-stream"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_5

    .line 261
    const-string v41, "application/json"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 262
    if-eqz v8, :cond_5

    const-string v41, "gzip"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 263
    new-instance v24, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 264
    .end local v23           #in:Ljava/io/InputStream;
    .local v24, in:Ljava/io/InputStream;
    const/4 v9, -0x1

    move-object/from16 v23, v24

    .end local v24           #in:Ljava/io/InputStream;
    .restart local v23       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 266
    :cond_c
    const-string v41, "text/html"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_d

    const-string v41, "text/plain"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_d

    const-string v41, "text/xml"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_d

    const-string v41, "application/xml"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_d

    const-string v41, "image/"

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 272
    :cond_d
    if-eqz v8, :cond_5

    const-string v41, "gzip"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 273
    new-instance v24, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 274
    .end local v23           #in:Ljava/io/InputStream;
    .restart local v24       #in:Ljava/io/InputStream;
    const/4 v9, -0x1

    move-object/from16 v23, v24

    .end local v24           #in:Ljava/io/InputStream;
    .restart local v23       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 277
    :cond_e
    new-instance v41, Ljava/io/IOException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unsupported content type: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v41
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    .end local v25           #measuredIn:Lco/vine/android/util/MeasureInputStream;
    :catchall_0
    move-exception v41

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 283
    .restart local v26       #now:J
    invoke-static/range {v23 .. v23}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    sub-long v6, v42, v26

    .line 285
    throw v41
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 287
    .end local v8           #contentEncoding:Ljava/lang/String;
    .end local v9           #contentLength:I
    .end local v10           #contentType:Ljava/lang/String;
    .end local v18           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #entityContentType:Lorg/apache/http/Header;
    .end local v23           #in:Ljava/io/InputStream;
    .end local v26           #now:J
    .end local v32           #reasonPhrase:Ljava/lang/String;
    .end local v33           #resp:Lorg/apache/http/HttpResponse;
    .end local v36           #statusCode:I
    .end local v37           #statusLine:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v20

    .line 288
    .local v20, ex:Ljava/lang/Exception;
    :try_start_6
    sget-boolean v41, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z

    if-eqz v41, :cond_f

    .line 289
    const-string v41, "HttpOperation"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "["

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "]"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    :cond_f
    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 292
    const/16 v36, 0x0

    .line 293
    .restart local v36       #statusCode:I
    const/16 v32, 0x0

    .line 294
    .restart local v32       #reasonPhrase:Ljava/lang/String;
    move-object/from16 v17, v20

    .line 297
    add-long v41, v28, v30

    add-long v15, v41, v6

    .restart local v15       #durationMs:J
    goto/16 :goto_4

    .end local v15           #durationMs:J
    .end local v20           #ex:Ljava/lang/Exception;
    .end local v32           #reasonPhrase:Ljava/lang/String;
    .end local v36           #statusCode:I
    :catchall_1
    move-exception v41

    add-long v42, v28, v30

    add-long v15, v42, v6

    .restart local v15       #durationMs:J
    throw v41

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x191 -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1f6 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public getReader()Lco/vine/android/network/HttpOperationReader;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;

    return-object v0
.end method

.method public getResults()[Lco/vine/android/network/HttpResult;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;

    if-nez v0, :cond_0

    .line 359
    sget-object v0, Lco/vine/android/network/HttpOperation;->EMPTY_RESULTS:[Lco/vine/android/network/HttpResult;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;

    goto :goto_0
.end method

.method public isOK()Z
    .locals 2

    .prologue
    .line 340
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
    .line 349
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
    .line 332
    return-void
.end method
