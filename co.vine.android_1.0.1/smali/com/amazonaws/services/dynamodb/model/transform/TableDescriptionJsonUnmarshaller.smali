.class public Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/TableDescription;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/TableDescription;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    iget-object v0, p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;->currentToken:Lorg/codehaus/jackson/JsonToken;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object v1

    :cond_1
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_2

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_a

    :cond_2
    const-string v0, "TableName"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->setTableName(Ljava/lang/String;)V

    :cond_3
    const-string v0, "KeySchema"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/KeySchemaJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/KeySchemaJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/KeySchemaJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->setKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)V

    :cond_4
    const-string v0, "TableStatus"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->setTableStatus(Ljava/lang/String;)V

    :cond_5
    const-string v0, "CreationDateTime"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->setCreationDateTime(Ljava/util/Date;)V

    :cond_6
    const-string v0, "ProvisionedThroughput"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/ProvisionedThroughputDescriptionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/ProvisionedThroughputDescriptionJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ProvisionedThroughputDescriptionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->setProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;)V

    :cond_7
    const-string v0, "TableSizeBytes"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->setTableSizeBytes(Ljava/lang/Long;)V

    :cond_8
    const-string v0, "ItemCount"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->setItemCount(Ljava/lang/Long;)V

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_b

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_9

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    if-gt v0, v2, :cond_9

    goto/16 :goto_1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/TableDescription;

    move-result-object v0

    return-object v0
.end method
