.class public Lcom/amazonaws/services/dynamodb/model/transform/ListTablesRequestMarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/Request;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Invalid argument passed to marshall(...)"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Lcom/amazonaws/DefaultRequest;

    const-string v0, "AmazonDynamoDB"

    invoke-direct {v3, p1, v0}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v0, "DynamoDB_20111205.ListTables"

    const-string v1, "X-Amz-Target"

    invoke-interface {v3, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-amz-json-1.0"

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v3, v0}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v0, ""

    const-string v1, "//"

    const-string v4, "/"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[;&]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    aget-object v6, v7, v2

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-interface {v3, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v3, v0}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/amazonaws/util/json/JSONWriter;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "ExclusiveStartTableName"

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "Limit"

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_4
    invoke-virtual {v1}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, v0}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    const-string v0, "Content-Length"

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to marshall request to JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
