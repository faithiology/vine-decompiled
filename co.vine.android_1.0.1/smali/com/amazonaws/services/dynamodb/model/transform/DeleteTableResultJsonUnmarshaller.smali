.class public Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;

    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;-><init>()V

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

    if-ne v0, v4, :cond_4

    :cond_2
    const-string v0, "TableDescription"

    invoke-virtual {p1, v0, v3}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-static {}, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/TableDescriptionJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/TableDescription;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;->setTableDescription(Lcom/amazonaws/services/dynamodb/model/TableDescription;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_5

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_3

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getCurrentDepth()I

    move-result v0

    if-gt v0, v2, :cond_3

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

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;

    move-result-object v0

    return-object v0
.end method
