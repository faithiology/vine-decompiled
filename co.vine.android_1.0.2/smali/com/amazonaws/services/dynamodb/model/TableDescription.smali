.class public Lcom/amazonaws/services/dynamodb/model/TableDescription;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private creationDateTime:Ljava/util/Date;

.field private itemCount:Ljava/lang/Long;

.field private keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

.field private tableName:Ljava/lang/String;

.field private tableSizeBytes:Ljava/lang/Long;

.field private tableStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    instance-of v0, p1, Lcom/amazonaws/services/dynamodb/model/TableDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/dynamodb/model/TableDescription;

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v3

    if-nez v3, :cond_12

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_16

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    move v2, v1

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v3, v2

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto/16 :goto_3

    :cond_c
    move v3, v2

    goto/16 :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_5

    :cond_e
    move v3, v2

    goto/16 :goto_6

    :cond_f
    move v0, v2

    goto/16 :goto_7

    :cond_10
    move v3, v2

    goto/16 :goto_8

    :cond_11
    move v0, v2

    goto/16 :goto_9

    :cond_12
    move v3, v2

    goto :goto_a

    :cond_13
    move v0, v2

    goto :goto_b

    :cond_14
    move v3, v2

    goto :goto_c

    :cond_15
    move v0, v2

    goto :goto_d

    :cond_16
    move v3, v2

    goto :goto_e
.end method

.method public getCreationDateTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->creationDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getItemCount()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->itemCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableSizeBytes()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public setCreationDateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->creationDateTime:Ljava/util/Date;

    return-void
.end method

.method public setItemCount(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->itemCount:Ljava/lang/Long;

    return-void
.end method

.method public setKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setTableSizeBytes(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    return-void
.end method

.method public setTableStatus(Lcom/amazonaws/services/dynamodb/model/TableStatus;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-void
.end method

.method public setTableStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/TableDescription;->getItemCount()Ljava/lang/Long;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCreationDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->creationDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public withItemCount(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->itemCount:Ljava/lang/Long;

    return-object p0
.end method

.method public withKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableName:Ljava/lang/String;

    return-object p0
.end method

.method public withTableSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    return-object p0
.end method

.method public withTableStatus(Lcom/amazonaws/services/dynamodb/model/TableStatus;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/TableStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withTableStatus(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/TableDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-object p0
.end method
