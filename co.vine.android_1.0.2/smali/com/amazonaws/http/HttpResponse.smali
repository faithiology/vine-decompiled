.class public Lcom/amazonaws/http/HttpResponse;
.super Ljava/lang/Object;


# instance fields
.field private content:Ljava/io/InputStream;

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

.field private final httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final request:Lcom/amazonaws/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private statusCode:I

.field private statusText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/Request;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse;->request:Lcom/amazonaws/Request;

    iput-object p2, p0, Lcom/amazonaws/http/HttpResponse;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

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

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public getRequest()Lcom/amazonaws/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazonaws/Request",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->request:Lcom/amazonaws/Request;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse;->content:Ljava/io/InputStream;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/amazonaws/http/HttpResponse;->statusCode:I

    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/http/HttpResponse;->statusText:Ljava/lang/String;

    return-void
.end method
