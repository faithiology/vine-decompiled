.class public Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private architecture:Ljava/lang/String;

.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private imageLocation:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ramdiskId:Ljava/lang/String;

.field private rootDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->imageLocation:Ljava/lang/String;

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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_19

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    move v2, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    move v3, v2

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_3

    :cond_d
    move v3, v2

    goto/16 :goto_4

    :cond_e
    move v0, v2

    goto/16 :goto_5

    :cond_f
    move v3, v2

    goto/16 :goto_6

    :cond_10
    move v0, v2

    goto/16 :goto_7

    :cond_11
    move v3, v2

    goto/16 :goto_8

    :cond_12
    move v0, v2

    goto/16 :goto_9

    :cond_13
    move v3, v2

    goto/16 :goto_a

    :cond_14
    move v0, v2

    goto/16 :goto_b

    :cond_15
    move v3, v2

    goto/16 :goto_c

    :cond_16
    move v0, v2

    goto :goto_d

    :cond_17
    move v3, v2

    goto :goto_e

    :cond_18
    move v0, v2

    goto :goto_f

    :cond_19
    move v3, v2

    goto :goto_10
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->imageLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->rootDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    :goto_7
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->architecture:Ljava/lang/String;

    return-void
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setImageLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->imageLocation:Ljava/lang/String;

    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->kernelId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->ramdiskId:Ljava/lang/String;

    return-void
.end method

.method public setRootDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->rootDeviceName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withArchitecture(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->architecture:Ljava/lang/String;

    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->setBlockDeviceMappings(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withImageLocation(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->imageLocation:Ljava/lang/String;

    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->kernelId:Ljava/lang/String;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->ramdiskId:Ljava/lang/String;

    return-object p0
.end method

.method public withRootDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->rootDeviceName:Ljava/lang/String;

    return-object p0
.end method
