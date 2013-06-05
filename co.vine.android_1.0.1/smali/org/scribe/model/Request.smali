.class Lorg/scribe/model/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private bodyParams:Lorg/scribe/model/ParameterList;

.field private bytePayload:[B

.field private charset:Ljava/lang/String;

.field private connectTimeout:Ljava/lang/Long;

.field private connection:Ljava/net/HttpURLConnection;

.field private connectionKeepAlive:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payload:Ljava/lang/String;

.field private querystringParams:Lorg/scribe/model/ParameterList;

.field private readTimeout:Ljava/lang/Long;

.field private url:Ljava/lang/String;

.field private verb:Lorg/scribe/model/Verb;


# direct methods
.method public constructor <init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V
    .locals 2
    .parameter "verb"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lorg/scribe/model/Request;->bytePayload:[B

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/scribe/model/Request;->connectionKeepAlive:Z

    .line 32
    iput-object v1, p0, Lorg/scribe/model/Request;->connectTimeout:Ljava/lang/Long;

    .line 33
    iput-object v1, p0, Lorg/scribe/model/Request;->readTimeout:Ljava/lang/Long;

    .line 43
    iput-object p1, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    .line 44
    iput-object p2, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    .line 45
    new-instance v0, Lorg/scribe/model/ParameterList;

    invoke-direct {v0}, Lorg/scribe/model/ParameterList;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->querystringParams:Lorg/scribe/model/ParameterList;

    .line 46
    new-instance v0, Lorg/scribe/model/ParameterList;

    invoke-direct {v0}, Lorg/scribe/model/ParameterList;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Lorg/scribe/model/ParameterList;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private createConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCompleteUrl()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, completeUrl:Ljava/lang/String;
    iget-object v1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 79
    const-string v2, "http.keepAlive"

    iget-boolean v1, p0, Lorg/scribe/model/Request;->connectionKeepAlive:Z

    if-eqz v1, :cond_1

    const-string v1, "true"

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    .line 82
    :cond_0
    return-void

    .line 79
    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method


# virtual methods
.method addBody(Ljava/net/HttpURLConnection;[B)V
    .locals 2
    .parameter "conn"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "Content-Length"

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 129
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 130
    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 151
    iget-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Lorg/scribe/model/ParameterList;

    invoke-virtual {v0, p1, p2}, Lorg/scribe/model/ParameterList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method addHeaders(Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter "conn"

    .prologue
    .line 115
    iget-object v2, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addPayload(Ljava/lang/String;)V
    .locals 0
    .parameter "payload"

    .prologue
    .line 177
    iput-object p1, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public addPayload([B)V
    .locals 0
    .parameter "payload"

    .prologue
    .line 187
    iput-object p1, p0, Lorg/scribe/model/Request;->bytePayload:[B

    .line 188
    return-void
.end method

.method public addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 162
    iget-object v0, p0, Lorg/scribe/model/Request;->querystringParams:Lorg/scribe/model/ParameterList;

    invoke-virtual {v0, p1, p2}, Lorg/scribe/model/ParameterList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method doSend()Lorg/scribe/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    invoke-virtual {v1}, Lorg/scribe/model/Verb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/scribe/model/Request;->connectTimeout:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/scribe/model/Request;->connectTimeout:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->readTimeout:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/scribe/model/Request;->readTimeout:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lorg/scribe/model/Request;->addHeaders(Ljava/net/HttpURLConnection;)V

    .line 106
    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    sget-object v1, Lorg/scribe/model/Verb;->PUT:Lorg/scribe/model/Verb;

    invoke-virtual {v0, v1}, Lorg/scribe/model/Verb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    sget-object v1, Lorg/scribe/model/Verb;->POST:Lorg/scribe/model/Verb;

    invoke-virtual {v0, v1}, Lorg/scribe/model/Verb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    :cond_2
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getByteBodyContents()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/scribe/model/Request;->addBody(Ljava/net/HttpURLConnection;[B)V

    .line 110
    :cond_3
    new-instance v0, Lorg/scribe/model/Response;

    iget-object v1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lorg/scribe/model/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public getBodyContents()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getByteBodyContents()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/scribe/model/Request;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getBodyParams()Lorg/scribe/model/ParameterList;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Lorg/scribe/model/ParameterList;

    return-object v0
.end method

.method getByteBodyContents()[B
    .locals 5

    .prologue
    .line 262
    iget-object v2, p0, Lorg/scribe/model/Request;->bytePayload:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/scribe/model/Request;->bytePayload:[B

    .line 266
    :goto_0
    return-object v2

    .line 263
    :cond_0
    iget-object v2, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    .line 266
    .local v0, body:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 263
    .end local v0           #body:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/scribe/model/Request;->bodyParams:Lorg/scribe/model/ParameterList;

    invoke-virtual {v2}, Lorg/scribe/model/ParameterList;->asFormUrlEncodedString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 268
    .restart local v0       #body:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 270
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/scribe/exceptions/OAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Charset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/scribe/model/Request;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->charset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCompleteUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/scribe/model/Request;->querystringParams:Lorg/scribe/model/ParameterList;

    iget-object v1, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/scribe/model/ParameterList;->appendTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryStringParams()Lorg/scribe/model/ParameterList;
    .locals 5

    .prologue
    .line 200
    :try_start_0
    new-instance v2, Lorg/scribe/model/ParameterList;

    invoke-direct {v2}, Lorg/scribe/model/ParameterList;-><init>()V

    .line 201
    .local v2, result:Lorg/scribe/model/ParameterList;
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, queryString:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/scribe/model/ParameterList;->addQuerystring(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lorg/scribe/model/Request;->querystringParams:Lorg/scribe/model/ParameterList;

    invoke-virtual {v2, v3}, Lorg/scribe/model/ParameterList;->addAll(Lorg/scribe/model/ParameterList;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    return-object v2

    .line 206
    .end local v1           #queryString:Ljava/lang/String;
    .end local v2           #result:Lorg/scribe/model/ParameterList;
    :catch_0
    move-exception v0

    .line 208
    .local v0, mue:Ljava/net/MalformedURLException;
    new-instance v3, Lorg/scribe/exceptions/OAuthException;

    const-string v4, "Malformed URL"

    invoke-direct {v3, v4, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getSanitizedUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    const-string v1, "\\?.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\:\\d{4}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVerb()Lorg/scribe/model/Verb;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    return-object v0
.end method

.method public send()Lorg/scribe/model/Response;
    .locals 4

    .prologue
    .line 61
    :try_start_0
    invoke-direct {p0}, Lorg/scribe/model/Request;->createConnection()V

    .line 62
    invoke-virtual {p0}, Lorg/scribe/model/Request;->doSend()Lorg/scribe/model/Response;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, uhe:Ljava/net/UnknownHostException;
    new-instance v2, Lorg/scribe/exceptions/OAuthException;

    const-string v3, "Could not reach the desired host. Check your network connection."

    invoke-direct {v2, v3, v1}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 68
    .end local v1           #uhe:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Lorg/scribe/exceptions/OAuthException;

    const-string v3, "Problems while creating connection."

    invoke-direct {v2, v3, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "charsetName"

    .prologue
    .line 335
    iput-object p1, p0, Lorg/scribe/model/Request;->charset:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setConnectTimeout(ILjava/util/concurrent/TimeUnit;)V
    .locals 2
    .parameter "duration"
    .parameter "unit"

    .prologue
    .line 313
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/model/Request;->connectTimeout:Ljava/lang/Long;

    .line 314
    return-void
.end method

.method setConnection(Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 354
    iput-object p1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    .line 355
    return-void
.end method

.method public setConnectionKeepAlive(Z)V
    .locals 0
    .parameter "connectionKeepAlive"

    .prologue
    .line 346
    iput-boolean p1, p0, Lorg/scribe/model/Request;->connectionKeepAlive:Z

    .line 347
    return-void
.end method

.method public setReadTimeout(ILjava/util/concurrent/TimeUnit;)V
    .locals 2
    .parameter "duration"
    .parameter "unit"

    .prologue
    .line 325
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/model/Request;->readTimeout:Ljava/lang/Long;

    .line 326
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    const-string v0, "@Request(%s %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getVerb()Lorg/scribe/model/Verb;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
