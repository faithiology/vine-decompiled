.class public Lcom/amazonaws/services/ec2/model/Image;
.super Ljava/lang/Object;

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

.field private hypervisor:Ljava/lang/String;

.field private imageId:Ljava/lang/String;

.field private imageLocation:Ljava/lang/String;

.field private imageOwnerAlias:Ljava/lang/String;

.field private imageType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ownerId:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private productCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation
.end field

.field private publicValue:Ljava/lang/Boolean;

.field private ramdiskId:Ljava/lang/String;

.field private rootDeviceName:Ljava/lang/String;

.field private rootDeviceType:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

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

.field private virtualizationType:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/Image;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/Image;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_21

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_22

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_26

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    move v3, v1

    :goto_16
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v3

    if-nez v3, :cond_2e

    move v3, v1

    :goto_18
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/StateReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_30

    move v3, v1

    :goto_1a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    move v0, v1

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    move v3, v1

    :goto_1c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    move v0, v1

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    move v3, v1

    :goto_1e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    move v0, v1

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_36

    move v3, v1

    :goto_20
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    move v0, v1

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38

    move v3, v1

    :goto_22
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3a

    move v3, v1

    :goto_24
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_13
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    move v0, v1

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3c

    move v3, v1

    :goto_26
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_14
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3d

    move v0, v1

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3e

    move v3, v1

    :goto_28
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    move v0, v1

    :goto_29
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_40

    move v3, v1

    :goto_2a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_16
    move v2, v1

    goto/16 :goto_0

    :cond_17
    move v0, v2

    goto/16 :goto_1

    :cond_18
    move v3, v2

    goto/16 :goto_2

    :cond_19
    move v0, v2

    goto/16 :goto_3

    :cond_1a
    move v3, v2

    goto/16 :goto_4

    :cond_1b
    move v0, v2

    goto/16 :goto_5

    :cond_1c
    move v3, v2

    goto/16 :goto_6

    :cond_1d
    move v0, v2

    goto/16 :goto_7

    :cond_1e
    move v3, v2

    goto/16 :goto_8

    :cond_1f
    move v0, v2

    goto/16 :goto_9

    :cond_20
    move v3, v2

    goto/16 :goto_a

    :cond_21
    move v0, v2

    goto/16 :goto_b

    :cond_22
    move v3, v2

    goto/16 :goto_c

    :cond_23
    move v0, v2

    goto/16 :goto_d

    :cond_24
    move v3, v2

    goto/16 :goto_e

    :cond_25
    move v0, v2

    goto/16 :goto_f

    :cond_26
    move v3, v2

    goto/16 :goto_10

    :cond_27
    move v0, v2

    goto/16 :goto_11

    :cond_28
    move v3, v2

    goto/16 :goto_12

    :cond_29
    move v0, v2

    goto/16 :goto_13

    :cond_2a
    move v3, v2

    goto/16 :goto_14

    :cond_2b
    move v0, v2

    goto/16 :goto_15

    :cond_2c
    move v3, v2

    goto/16 :goto_16

    :cond_2d
    move v0, v2

    goto/16 :goto_17

    :cond_2e
    move v3, v2

    goto/16 :goto_18

    :cond_2f
    move v0, v2

    goto/16 :goto_19

    :cond_30
    move v3, v2

    goto/16 :goto_1a

    :cond_31
    move v0, v2

    goto/16 :goto_1b

    :cond_32
    move v3, v2

    goto/16 :goto_1c

    :cond_33
    move v0, v2

    goto/16 :goto_1d

    :cond_34
    move v3, v2

    goto/16 :goto_1e

    :cond_35
    move v0, v2

    goto/16 :goto_1f

    :cond_36
    move v3, v2

    goto/16 :goto_20

    :cond_37
    move v0, v2

    goto/16 :goto_21

    :cond_38
    move v3, v2

    goto/16 :goto_22

    :cond_39
    move v0, v2

    goto/16 :goto_23

    :cond_3a
    move v3, v2

    goto/16 :goto_24

    :cond_3b
    move v0, v2

    goto/16 :goto_25

    :cond_3c
    move v3, v2

    goto/16 :goto_26

    :cond_3d
    move v0, v2

    goto/16 :goto_27

    :cond_3e
    move v3, v2

    goto/16 :goto_28

    :cond_3f
    move v0, v2

    goto/16 :goto_29

    :cond_40
    move v3, v2

    goto/16 :goto_2a
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->architecture:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHypervisor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->imageLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getImageOwnerAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->imageOwnerAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getImageType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->imageType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getPublic()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->publicValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVirtualizationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    :goto_14
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/StateReason;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_e

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_f

    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_10

    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_12

    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_14
.end method

.method public isPublic()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->publicValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->architecture:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->description:Ljava/lang/String;

    return-void
.end method

.method public setHypervisor(Lcom/amazonaws/services/ec2/model/HypervisorType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/HypervisorType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    return-void
.end method

.method public setHypervisor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageId:Ljava/lang/String;

    return-void
.end method

.method public setImageLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageLocation:Ljava/lang/String;

    return-void
.end method

.method public setImageOwnerAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageOwnerAlias:Ljava/lang/String;

    return-void
.end method

.method public setImageType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageType:Ljava/lang/String;

    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->kernelId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->ownerId:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->platform:Ljava/lang/String;

    return-void
.end method

.method public setProductCodes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setPublic(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->publicValue:Ljava/lang/Boolean;

    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->ramdiskId:Ljava/lang/String;

    return-void
.end method

.method public setRootDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setRootDeviceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/amazonaws/services/ec2/model/ImageState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImageState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    return-void
.end method

.method public setStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVirtualizationType(Lcom/amazonaws/services/ec2/model/VirtualizationType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VirtualizationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    return-void
.end method

.method public setVirtualizationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageLocation()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getState()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getOwnerId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Public: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->isPublic()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getArchitecture()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageOwnerAlias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getImageOwnerAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualizationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getVirtualizationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hypervisor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getHypervisor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withArchitecture(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->architecture:Ljava/lang/String;

    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Image;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/Image;->setBlockDeviceMappings(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withHypervisor(Lcom/amazonaws/services/ec2/model/HypervisorType;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/HypervisorType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    return-object p0
.end method

.method public withHypervisor(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->hypervisor:Ljava/lang/String;

    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageId:Ljava/lang/String;

    return-object p0
.end method

.method public withImageLocation(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageLocation:Ljava/lang/String;

    return-object p0
.end method

.method public withImageOwnerAlias(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageOwnerAlias:Ljava/lang/String;

    return-object p0
.end method

.method public withImageType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->imageType:Ljava/lang/String;

    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->kernelId:Ljava/lang/String;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->ownerId:Ljava/lang/String;

    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Image;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Lcom/amazonaws/services/ec2/model/ProductCode;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/Image;->setProductCodes(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getProductCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withPublic(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->publicValue:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->ramdiskId:Ljava/lang/String;

    return-object p0
.end method

.method public withRootDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public withRootDeviceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->rootDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public withState(Lcom/amazonaws/services/ec2/model/ImageState;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImageState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->state:Ljava/lang/String;

    return-object p0
.end method

.method public withStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Image;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/Image;->setTags(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Image;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withVirtualizationType(Lcom/amazonaws/services/ec2/model/VirtualizationType;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VirtualizationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    return-object p0
.end method

.method public withVirtualizationType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Image;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Image;->virtualizationType:Ljava/lang/String;

    return-object p0
.end method
