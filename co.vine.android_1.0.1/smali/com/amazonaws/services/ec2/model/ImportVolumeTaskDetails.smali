.class public Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private bytesConverted:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

.field private volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/DiskImageDescription;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->equals(Ljava/lang/Object;)Z

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

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesConverted()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->bytesConverted:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    return-object v0
.end method

.method public getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImageDescription;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->availabilityZone:Ljava/lang/String;

    return-void
.end method

.method public setBytesConverted(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->bytesConverted:Ljava/lang/Long;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->description:Ljava/lang/String;

    return-void
.end method

.method public setImage(Lcom/amazonaws/services/ec2/model/DiskImageDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    return-void
.end method

.method public setVolume(Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BytesConverted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getBytesConverted()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getAvailabilityZone()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

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

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->availabilityZone:Ljava/lang/String;

    return-object p0
.end method

.method public withBytesConverted(Ljava/lang/Long;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->bytesConverted:Ljava/lang/Long;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withImage(Lcom/amazonaws/services/ec2/model/DiskImageDescription;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    return-object p0
.end method

.method public withVolume(Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;)Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportVolumeTaskDetails;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    return-object p0
.end method
