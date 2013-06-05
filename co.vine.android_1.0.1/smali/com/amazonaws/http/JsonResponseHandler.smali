.class public Lcom/amazonaws/http/JsonResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler",
        "<",
        "Lcom/amazonaws/AmazonWebServiceResponse",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static jsonFactory:Lorg/codehaus/jackson/JsonFactory;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field public needsConnectionLeftOpen:Z

.field private responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/http/JsonResponseHandler;->jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    iget-object v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/VoidJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/VoidJsonUnmarshaller;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Parsing service response JSON"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-crc32"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_1

    new-instance v2, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Lcom/amazonaws/http/JsonResponseHandler;->jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    :goto_0
    :try_start_0
    new-instance v3, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v3}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    new-instance v4, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-direct {v4, v1, p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lorg/codehaus/jackson/JsonParser;Lcom/amazonaws/http/HttpResponse;)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/http/JsonResponseHandler;->registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/JsonUnmarshallerContext;)V

    iget-object v5, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v5, v4}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->getCRC32Checksum()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amazonaws/internal/CRC32MismatchException;

    const-string v2, "Client calculated crc32 checksum didn\'t match that calculated by server side"

    invoke-direct {v0, v2}, Lcom/amazonaws/internal/CRC32MismatchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-boolean v2, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    throw v0

    :cond_1
    sget-object v1, Lcom/amazonaws/http/JsonResponseHandler;->jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v3, v5}, Lcom/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v2, "AWS_REQUEST_ID"

    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "x-amzn-RequestId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/amazonaws/ResponseMetadata;

    invoke-direct {v2, v0}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v2}, Lcom/amazonaws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/amazonaws/ResponseMetadata;)V

    sget-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Done parsing service response"

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v0, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_2
    return-object v3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/JsonUnmarshallerContext;)V
    .locals 0

    return-void
.end method
