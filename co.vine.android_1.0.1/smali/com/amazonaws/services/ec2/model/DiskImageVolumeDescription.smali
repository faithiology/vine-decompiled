.class public Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private size:Ljava/lang/Long;


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_4
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->id:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->size:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getSize()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->getId()Ljava/lang/String;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->id:Ljava/lang/String;

    return-object p0
.end method

.method public withSize(Ljava/lang/Long;)Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->size:Ljava/lang/Long;

    return-object p0
.end method
