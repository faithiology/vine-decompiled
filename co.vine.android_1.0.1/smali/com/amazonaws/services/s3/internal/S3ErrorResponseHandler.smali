.class public Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V
    .locals 2

    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getRequest()Lcom/amazonaws/Request;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/Request;->getHttpMethod()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-request-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-amz-id-2"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->documentFrom(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "Error/Message"

    invoke-static {v1, v0}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error/Code"

    invoke-static {v2, v0}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error/RequestId"

    invoke-static {v3, v0}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error/HostId"

    invoke-static {v4, v0}, Lcom/amazonaws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->fillInErrorType(Lcom/amazonaws/AmazonServiceException;Lcom/amazonaws/http/HttpResponse;)V

    goto :goto_0
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
