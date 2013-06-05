.class public Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attachTime:Ljava/util/Date;

.field private attachmentId:Ljava/lang/String;

.field private deleteOnTermination:Ljava/lang/Boolean;

.field private deviceIndex:Ljava/lang/Integer;

.field private status:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

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

.method public getAttachTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachTime:Ljava/util/Date;

    return-object v0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDeviceIndex()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deviceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public isDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttachTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachTime:Ljava/util/Date;

    return-void
.end method

.method public setAttachmentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachmentId:Ljava/lang/String;

    return-void
.end method

.method public setDeleteOnTermination(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    return-void
.end method

.method public setDeviceIndex(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deviceIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttachmentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachmentId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getDeviceIndex()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getStatus()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttachTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->getAttachTime()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteOnTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

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

.method public withAttachTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachTime:Ljava/util/Date;

    return-object p0
.end method

.method public withAttachmentId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->attachmentId:Ljava/lang/String;

    return-object p0
.end method

.method public withDeleteOnTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withDeviceIndex(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->deviceIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceAttachment;->status:Ljava/lang/String;

    return-object p0
.end method
