.class public Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private additionalInfo:Ljava/lang/String;

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

.field private clientToken:Ljava/lang/String;

.field private disableApiTermination:Ljava/lang/Boolean;

.field private ebsOptimized:Ljava/lang/Boolean;

.field private iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

.field private imageId:Ljava/lang/String;

.field private instanceInitiatedShutdownBehavior:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private license:Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

.field private maxCount:Ljava/lang/Integer;

.field private minCount:Ljava/lang/Integer;

.field private monitoring:Ljava/lang/Boolean;

.field private networkInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private placement:Lcom/amazonaws/services/ec2/model/Placement;

.field private privateIpAddress:Ljava/lang/String;

.field private ramdiskId:Ljava/lang/String;

.field private securityGroupIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private securityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subnetId:Ljava/lang/String;

.field private userData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->imageId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->minCount:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->maxCount:Ljava/lang/Integer;

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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1e

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_21

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_22

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_23

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_24

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_26

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v3

    if-nez v3, :cond_2a

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/Placement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2e

    move v3, v1

    :goto_16
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_30

    move v3, v1

    :goto_18
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_31

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_32

    move v3, v1

    :goto_1a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    move v0, v1

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    move v3, v1

    :goto_1c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_35

    move v0, v1

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_36

    move v3, v1

    :goto_1e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    move v0, v1

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38

    move v3, v1

    :goto_20
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v3

    if-nez v3, :cond_3a

    move v3, v1

    :goto_22
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    move v0, v1

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3c

    move v3, v1

    :goto_24
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_13
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d

    move v0, v1

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3e

    move v3, v1

    :goto_26
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_14
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    move v0, v1

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_40

    move v3, v1

    :goto_28
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_41

    move v0, v1

    :goto_29
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_42

    move v3, v1

    :goto_2a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v0

    if-nez v0, :cond_43

    move v0, v1

    :goto_2b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v3

    if-nez v3, :cond_44

    move v3, v1

    :goto_2c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_17
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_45

    move v0, v1

    :goto_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_46

    move v3, v1

    :goto_2e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_18
    move v2, v1

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto/16 :goto_1

    :cond_1a
    move v3, v2

    goto/16 :goto_2

    :cond_1b
    move v0, v2

    goto/16 :goto_3

    :cond_1c
    move v3, v2

    goto/16 :goto_4

    :cond_1d
    move v0, v2

    goto/16 :goto_5

    :cond_1e
    move v3, v2

    goto/16 :goto_6

    :cond_1f
    move v0, v2

    goto/16 :goto_7

    :cond_20
    move v3, v2

    goto/16 :goto_8

    :cond_21
    move v0, v2

    goto/16 :goto_9

    :cond_22
    move v3, v2

    goto/16 :goto_a

    :cond_23
    move v0, v2

    goto/16 :goto_b

    :cond_24
    move v3, v2

    goto/16 :goto_c

    :cond_25
    move v0, v2

    goto/16 :goto_d

    :cond_26
    move v3, v2

    goto/16 :goto_e

    :cond_27
    move v0, v2

    goto/16 :goto_f

    :cond_28
    move v3, v2

    goto/16 :goto_10

    :cond_29
    move v0, v2

    goto/16 :goto_11

    :cond_2a
    move v3, v2

    goto/16 :goto_12

    :cond_2b
    move v0, v2

    goto/16 :goto_13

    :cond_2c
    move v3, v2

    goto/16 :goto_14

    :cond_2d
    move v0, v2

    goto/16 :goto_15

    :cond_2e
    move v3, v2

    goto/16 :goto_16

    :cond_2f
    move v0, v2

    goto/16 :goto_17

    :cond_30
    move v3, v2

    goto/16 :goto_18

    :cond_31
    move v0, v2

    goto/16 :goto_19

    :cond_32
    move v3, v2

    goto/16 :goto_1a

    :cond_33
    move v0, v2

    goto/16 :goto_1b

    :cond_34
    move v3, v2

    goto/16 :goto_1c

    :cond_35
    move v0, v2

    goto/16 :goto_1d

    :cond_36
    move v3, v2

    goto/16 :goto_1e

    :cond_37
    move v0, v2

    goto/16 :goto_1f

    :cond_38
    move v3, v2

    goto/16 :goto_20

    :cond_39
    move v0, v2

    goto/16 :goto_21

    :cond_3a
    move v3, v2

    goto/16 :goto_22

    :cond_3b
    move v0, v2

    goto/16 :goto_23

    :cond_3c
    move v3, v2

    goto/16 :goto_24

    :cond_3d
    move v0, v2

    goto/16 :goto_25

    :cond_3e
    move v3, v2

    goto/16 :goto_26

    :cond_3f
    move v0, v2

    goto/16 :goto_27

    :cond_40
    move v3, v2

    goto/16 :goto_28

    :cond_41
    move v0, v2

    goto/16 :goto_29

    :cond_42
    move v3, v2

    goto/16 :goto_2a

    :cond_43
    move v0, v2

    goto/16 :goto_2b

    :cond_44
    move v3, v2

    goto/16 :goto_2c

    :cond_45
    move v0, v2

    goto/16 :goto_2d

    :cond_46
    move v3, v2

    goto/16 :goto_2e
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->additionalInfo:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceInitiatedShutdownBehavior()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->license:Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    return-object v0
.end method

.method public getMaxCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->maxCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->minCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMonitoring()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->monitoring:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNetworkInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    return-object v0
.end method

.method public getPlacement()Lcom/amazonaws/services/ec2/model/Placement;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityGroupIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    return-object v0
.end method

.method public getSecurityGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_16

    :goto_16
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_e

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_f

    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;->hashCode()I

    move-result v0

    goto/16 :goto_10

    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_12

    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_14

    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->hashCode()I

    move-result v0

    goto/16 :goto_15

    :cond_16
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto/16 :goto_16
.end method

.method public isDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMonitoring()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->monitoring:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdditionalInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->additionalInfo:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->clientToken:Ljava/lang/String;

    return-void
.end method

.method public setDisableApiTermination(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->disableApiTermination:Ljava/lang/Boolean;

    return-void
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-void
.end method

.method public setIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->imageId:Ljava/lang/String;

    return-void
.end method

.method public setInstanceInitiatedShutdownBehavior(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->kernelId:Ljava/lang/String;

    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->keyName:Ljava/lang/String;

    return-void
.end method

.method public setLicense(Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->license:Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    return-void
.end method

.method public setMaxCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->maxCount:Ljava/lang/Integer;

    return-void
.end method

.method public setMinCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->minCount:Ljava/lang/Integer;

    return-void
.end method

.method public setMonitoring(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->monitoring:Ljava/lang/Boolean;

    return-void
.end method

.method public setNetworkInterfaces(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public setPlacement(Lcom/amazonaws/services/ec2/model/Placement;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->privateIpAddress:Ljava/lang/String;

    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ramdiskId:Ljava/lang/String;

    return-void
.end method

.method public setSecurityGroupIds(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    goto :goto_0
.end method

.method public setSecurityGroups(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->subnetId:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->userData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroupIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableApiTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceInitiatedShutdownBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdditionalInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IamInstanceProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAdditionalInfo(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->additionalInfo:Ljava/lang/String;

    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->setBlockDeviceMappings(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withClientToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->clientToken:Ljava/lang/String;

    return-object p0
.end method

.method public withDisableApiTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->disableApiTermination:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->imageId:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceInitiatedShutdownBehavior(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->instanceType:Ljava/lang/String;

    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->kernelId:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->keyName:Ljava/lang/String;

    return-object p0
.end method

.method public withLicense(Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->license:Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    return-object p0
.end method

.method public withMaxCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->maxCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withMinCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->minCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withMonitoring(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->monitoring:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withNetworkInterfaces(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withNetworkInterfaces([Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->setNetworkInterfaces(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withPlacement(Lcom/amazonaws/services/ec2/model/Placement;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->privateIpAddress:Ljava/lang/String;

    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->ramdiskId:Ljava/lang/String;

    return-object p0
.end method

.method public withSecurityGroupIds(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroupIds:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroupIds([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->setSecurityGroupIds(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->setSecurityGroups(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->subnetId:Ljava/lang/String;

    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->userData:Ljava/lang/String;

    return-object p0
.end method
