.class public Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeNameCount:Ljava/lang/Integer;

.field private attributeNamesSizeBytes:Ljava/lang/Long;

.field private attributeValueCount:Ljava/lang/Integer;

.field private attributeValuesSizeBytes:Ljava/lang/Long;

.field private itemCount:Ljava/lang/Integer;

.field private itemNamesSizeBytes:Ljava/lang/Long;

.field private timestamp:Ljava/lang/Integer;


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

    instance-of v0, p1, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_12

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_16

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

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

.method public getAttributeNameCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNameCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAttributeNamesSizeBytes()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNamesSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getAttributeValueCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValueCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAttributeValuesSizeBytes()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValuesSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getItemCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemNamesSizeBytes()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemNamesSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->timestamp:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public setAttributeNameCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNameCount:Ljava/lang/Integer;

    return-void
.end method

.method public setAttributeNamesSizeBytes(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNamesSizeBytes:Ljava/lang/Long;

    return-void
.end method

.method public setAttributeValueCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValueCount:Ljava/lang/Integer;

    return-void
.end method

.method public setAttributeValuesSizeBytes(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValuesSizeBytes:Ljava/lang/Long;

    return-void
.end method

.method public setItemCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemCount:Ljava/lang/Integer;

    return-void
.end method

.method public setItemNamesSizeBytes(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemNamesSizeBytes:Ljava/lang/Long;

    return-void
.end method

.method public setTimestamp(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->timestamp:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemCount()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemNamesSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getItemNamesSizeBytes()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeNameCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNameCount()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeNamesSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeNamesSizeBytes()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeValueCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValueCount()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeValuesSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getAttributeValuesSizeBytes()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->getTimestamp()Ljava/lang/Integer;

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

.method public withAttributeNameCount(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNameCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withAttributeNamesSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeNamesSizeBytes:Ljava/lang/Long;

    return-object p0
.end method

.method public withAttributeValueCount(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValueCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withAttributeValuesSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->attributeValuesSizeBytes:Ljava/lang/Long;

    return-object p0
.end method

.method public withItemCount(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withItemNamesSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->itemNamesSizeBytes:Ljava/lang/Long;

    return-object p0
.end method

.method public withTimestamp(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;->timestamp:Ljava/lang/Integer;

    return-object p0
.end method
