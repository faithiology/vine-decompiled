.class public Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private expected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field private key:Lcom/amazonaws/services/dynamodb/model/Key;

.field private returnValues:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/dynamodb/model/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    move v2, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v3, v2

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v3, v2

    goto :goto_6

    :cond_c
    move v0, v2

    goto :goto_7

    :cond_d
    move v3, v2

    goto :goto_8
.end method

.method public getExpected()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->expected:Ljava/util/Map;

    return-object v0
.end method

.method public getKey()Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object v0
.end method

.method public getReturnValues()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Key;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public setExpected(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->expected:Ljava/util/Map;

    return-void
.end method

.method public setKey(Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    return-void
.end method

.method public setReturnValues(Lcom/amazonaws/services/dynamodb/model/ReturnValue;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-void
.end method

.method public setReturnValues(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExpected(Ljava/util/Map;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->setExpected(Ljava/util/Map;)V

    return-object p0
.end method

.method public withKey(Lcom/amazonaws/services/dynamodb/model/Key;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->key:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object p0
.end method

.method public withReturnValues(Lcom/amazonaws/services/dynamodb/model/ReturnValue;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ReturnValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-object p0
.end method

.method public withReturnValues(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->returnValues:Ljava/lang/String;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
