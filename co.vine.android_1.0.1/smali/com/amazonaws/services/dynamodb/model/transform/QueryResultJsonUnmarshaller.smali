.class public Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/QueryResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/QueryResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/QueryResult;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/QueryResult;-><init>()V

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

    if-ne v0, v4, :cond_7

    :cond_2
    const-string v0, "Items"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/amazonaws/transform/ListUnmarshaller;

    new-instance v4, Lcom/amazonaws/transform/MapUnmarshaller;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v5

    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/AttributeValueJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/AttributeValueJsonUnmarshaller;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {v0, v4}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-virtual {v0, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/QueryResult;->setItems(Ljava/util/Collection;)V

    :cond_3
    const-string v0, "Count"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/QueryResult;->setCount(Ljava/lang/Integer;)V

    :cond_4
    const-string v0, "LastEvaluatedKey"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/KeyJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/KeyJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/KeyJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/QueryResult;->setLastEvaluatedKey(Lcom/amazonaws/services/dynamodb/model/Key;)V

    :cond_5
    const-string v0, "ConsumedCapacityUnits"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/QueryResult;->setConsumedCapacityUnits(Ljava/lang/Double;)V

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_8

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_6

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    if-gt v0, v2, :cond_6

    goto :goto_1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/QueryResult;

    move-result-object v0

    return-object v0
.end method
