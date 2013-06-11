.class public Lorg/scribe/model/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field private static final EMPTY:Ljava/lang/String; = ""


# instance fields
.field private body:Ljava/lang/String;

.field private code:I

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

.field private stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 2
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 28
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lorg/scribe/model/Response;->code:I

    .line 29
    invoke-direct {p0, p1}, Lorg/scribe/model/Response;->parseHeaders(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/scribe/model/Response;->headers:Ljava/util/Map;

    .line 30
    invoke-virtual {p0}, Lorg/scribe/model/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/scribe/model/Response;->stream:Ljava/io/InputStream;

    .line 37
    :goto_1
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/net/UnknownHostException;
    const/16 v1, 0x194

    iput v1, p0, Lorg/scribe/model/Response;->code:I

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseBodyContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/scribe/model/Response;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/scribe/utils/StreamUtils;->getStreamContents(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;

    return-object v0
.end method

.method private parseHeaders(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 5
    .parameter "conn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/scribe/model/Response;->parseBodyContents()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/scribe/model/Response;->code:I

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 110
    iget-object v0, p0, Lorg/scribe/model/Response;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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
    .line 98
    iget-object v0, p0, Lorg/scribe/model/Response;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/scribe/model/Response;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/scribe/model/Response;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/scribe/model/Response;->getCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
