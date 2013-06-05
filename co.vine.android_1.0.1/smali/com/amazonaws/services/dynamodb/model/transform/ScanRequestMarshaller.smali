.class public Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;
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
        "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
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
.method public marshall(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/Request;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
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

    const-string v0, "DynamoDB_20111205.Scan"

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
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Lcom/amazonaws/util/json/JSONWriter;

    invoke-direct {v5, v4}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "TableName"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "AttributesToGet"

    invoke-virtual {v5, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

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

    :cond_5
    :try_start_1
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "Limit"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "Count"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "ScanFilter"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodb/model/Condition;

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/Condition;->getAttributeValueList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_18

    const-string v2, "AttributeValueList"

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    if-eqz v1, :cond_a

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v2, "S"

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_b
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v2, "N"

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_c
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v2, "B"

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_d
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_10

    const-string v8, "SS"

    invoke-virtual {v5, v8}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_5

    :cond_f
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_10
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_13

    const-string v8, "NS"

    invoke-virtual {v5, v8}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_6

    :cond_12
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_13
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    const-string v2, "BS"

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_14

    invoke-virtual {v5, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    :cond_15
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_16
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/dynamodb/model/Condition;

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/Condition;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string v1, "ComparisonOperator"

    invoke-virtual {v5, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/Condition;

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Condition;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_19
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    :cond_1b
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_36

    const-string v0, "ExclusiveStartKey"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string v0, "HashKeyElement"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "S"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_1c
    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v0, "N"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_1d
    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v0, "B"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_1e
    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_21

    const-string v6, "SS"

    invoke-virtual {v5, v6}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_8

    :cond_20
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_21
    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_24

    const-string v6, "NS"

    invoke-virtual {v5, v6}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_22
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_22

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_9

    :cond_23
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_24
    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_27

    const-string v2, "BS"

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_25

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_a

    :cond_26
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_27
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    :cond_28
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_35

    const-string v0, "RangeKeyElement"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v0, "S"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_29
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v0, "N"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_2a
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v0, "B"

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    :cond_2b
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2e

    const-string v2, "SS"

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_b

    :cond_2d
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_2e
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31

    const-string v2, "NS"

    invoke-virtual {v5, v2}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_c

    :cond_30
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_31
    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    const-string v1, "BS"

    invoke-virtual {v5, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_32
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_32

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_d

    :cond_33
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    :cond_34
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    :cond_35
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    :cond_36
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

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
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/dynamodb/model/ScanRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
