.class public Lcom/amazonaws/services/ec2/model/DetachVolumeResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attachment:Lcom/amazonaws/services/ec2/model/VolumeAttachment;


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2
.end method

.method public getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->attachment:Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setAttachment(Lcom/amazonaws/services/ec2/model/VolumeAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->attachment:Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attachment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->getAttachment()Lcom/amazonaws/services/ec2/model/VolumeAttachment;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttachment(Lcom/amazonaws/services/ec2/model/VolumeAttachment;)Lcom/amazonaws/services/ec2/model/DetachVolumeResult;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;->attachment:Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    return-object p0
.end method
