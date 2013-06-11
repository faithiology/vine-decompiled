.class public Lcom/amazonaws/services/dynamodb/model/QueryRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributesToGet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consistentRead:Ljava/lang/Boolean;

.field private count:Ljava/lang/Boolean;

.field private exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

.field private hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

.field private limit:Ljava/lang/Integer;

.field private rangeKeyCondition:Lcom/amazonaws/services/dynamodb/model/Condition;

.field private scanIndexForward:Ljava/lang/Boolean;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->tableName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

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

    instance-of v0, p1, Lcom/amazonaws/services/dynamodb/model/QueryRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/dynamodb/model/QueryRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_12

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v3

    if-nez v3, :cond_16

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/dynamodb/model/Condition;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1a

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/dynamodb/model/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    move v2, v1

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :cond_c
    move v3, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v3, v2

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_5

    :cond_10
    move v3, v2

    goto/16 :goto_6

    :cond_11
    move v0, v2

    goto/16 :goto_7

    :cond_12
    move v3, v2

    goto/16 :goto_8

    :cond_13
    move v0, v2

    goto/16 :goto_9

    :cond_14
    move v3, v2

    goto/16 :goto_a

    :cond_15
    move v0, v2

    goto/16 :goto_b

    :cond_16
    move v3, v2

    goto/16 :goto_c

    :cond_17
    move v0, v2

    goto/16 :goto_d

    :cond_18
    move v3, v2

    goto/16 :goto_e

    :cond_19
    move v0, v2

    goto :goto_f

    :cond_1a
    move v3, v2

    goto :goto_10

    :cond_1b
    move v0, v2

    goto :goto_11

    :cond_1c
    move v3, v2

    goto :goto_12
.end method

.method public getAttributesToGet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCount()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->count:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object v0
.end method

.method public getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->rangeKeyCondition:Lcom/amazonaws/services/dynamodb/model/Condition;

    return-object v0
.end method

.method public getScanIndexForward()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_8
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/Condition;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/dynamodb/model/Key;->hashCode()I

    move-result v1

    goto :goto_8
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isCount()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->count:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isScanIndexForward()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttributesToGet(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-void
.end method

.method public setCount(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->count:Ljava/lang/Boolean;

    return-void
.end method

.method public setExclusiveStartKey(Lcom/amazonaws/services/dynamodb/model/Key;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    return-void
.end method

.method public setHashKeyValue(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setRangeKeyCondition(Lcom/amazonaws/services/dynamodb/model/Condition;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->rangeKeyCondition:Lcom/amazonaws/services/dynamodb/model/Condition;

    return-void
.end method

.method public setScanIndexForward(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HashKeyValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeKeyCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanIndexForward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExclusiveStartKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/QueryRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->setAttributesToGet(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->consistentRead:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withCount(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->count:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withExclusiveStartKey(Lcom/amazonaws/services/dynamodb/model/Key;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->exclusiveStartKey:Lcom/amazonaws/services/dynamodb/model/Key;

    return-object p0
.end method

.method public withHashKeyValue(Lcom/amazonaws/services/dynamodb/model/AttributeValue;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->hashKeyValue:Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withRangeKeyCondition(Lcom/amazonaws/services/dynamodb/model/Condition;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->rangeKeyCondition:Lcom/amazonaws/services/dynamodb/model/Condition;

    return-object p0
.end method

.method public withScanIndexForward(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->scanIndexForward:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
