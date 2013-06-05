.class public Lcom/amazonaws/services/ec2/model/ConversionTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversionTaskId:Ljava/lang/String;

.field private expirationTime:Ljava/lang/String;

.field private importInstance:Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

.field private importVolume:Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

.field private state:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation
.end field


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/ConversionTask;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/ConversionTask;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_16

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getConversionTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->conversionTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->expirationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importInstance:Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    return-object v0
.end method

.method public getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importVolume:Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public setConversionTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->conversionTaskId:Ljava/lang/String;

    return-void
.end method

.method public setExpirationTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->expirationTime:Ljava/lang/String;

    return-void
.end method

.method public setImportInstance(Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importInstance:Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    return-void
.end method

.method public setImportVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importVolume:Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->state:Ljava/lang/String;

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConversionTaskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getConversionTaskId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpirationTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getExpirationTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportInstance()Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImportVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getImportVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

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

.method public withConversionTaskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->conversionTaskId:Ljava/lang/String;

    return-object p0
.end method

.method public withExpirationTime(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->expirationTime:Ljava/lang/String;

    return-object p0
.end method

.method public withImportInstance(Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importInstance:Lcom/amazonaws/services/ec2/model/ImportInstanceTaskDetails;

    return-object p0
.end method

.method public withImportVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->importVolume:Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->state:Ljava/lang/String;

    return-object p0
.end method

.method public withStatusMessage(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->statusMessage:Ljava/lang/String;

    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ConversionTask;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ConversionTask;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/ConversionTask;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->setTags(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ConversionTask;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
