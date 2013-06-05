.class public Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lastDecreaseDateTime:Ljava/util/Date;

.field private lastIncreaseDateTime:Ljava/util/Date;

.field private numberOfDecreasesToday:Ljava/lang/Long;

.field private readCapacityUnits:Ljava/lang/Long;

.field private writeCapacityUnits:Ljava/lang/Long;


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

    instance-of v0, p1, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    move v2, v1

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v3, v2

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move v3, v2

    goto/16 :goto_4

    :cond_b
    move v0, v2

    goto :goto_5

    :cond_c
    move v3, v2

    goto :goto_6

    :cond_d
    move v0, v2

    goto :goto_7

    :cond_e
    move v3, v2

    goto :goto_8

    :cond_f
    move v0, v2

    goto :goto_9

    :cond_10
    move v3, v2

    goto :goto_a
.end method

.method public getLastDecreaseDateTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLastIncreaseDateTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNumberOfDecreasesToday()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    return-object v0
.end method

.method public getReadCapacityUnits()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public getWriteCapacityUnits()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public setLastDecreaseDateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    return-void
.end method

.method public setLastIncreaseDateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    return-void
.end method

.method public setNumberOfDecreasesToday(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    return-void
.end method

.method public setReadCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public setWriteCapacityUnits(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastIncreaseDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastIncreaseDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastDecreaseDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getLastDecreaseDateTime()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberOfDecreasesToday: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getNumberOfDecreasesToday()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getReadCapacityUnits()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->getWriteCapacityUnits()Ljava/lang/Long;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLastDecreaseDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastDecreaseDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public withLastIncreaseDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->lastIncreaseDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public withNumberOfDecreasesToday(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->numberOfDecreasesToday:Ljava/lang/Long;

    return-object p0
.end method

.method public withReadCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->readCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method

.method public withWriteCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughputDescription;->writeCapacityUnits:Ljava/lang/Long;

    return-object p0
.end method
