.class public Lcom/amazonaws/services/ec2/model/Instance;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amiLaunchIndex:Ljava/lang/Integer;

.field private architecture:Ljava/lang/String;

.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private clientToken:Ljava/lang/String;

.field private ebsOptimized:Ljava/lang/Boolean;

.field private hypervisor:Ljava/lang/String;

.field private iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

.field private imageId:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private instanceLifecycle:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private keyName:Ljava/lang/String;

.field private launchTime:Ljava/util/Date;

.field private license:Lcom/amazonaws/services/ec2/model/InstanceLicense;

.field private monitoring:Lcom/amazonaws/services/ec2/model/Monitoring;

.field private networkInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private placement:Lcom/amazonaws/services/ec2/model/Placement;

.field private platform:Ljava/lang/String;

.field private privateDnsName:Ljava/lang/String;

.field private privateIpAddress:Ljava/lang/String;

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

.field private publicDnsName:Ljava/lang/String;

.field private publicIpAddress:Ljava/lang/String;

.field private ramdiskId:Ljava/lang/String;

.field private rootDeviceName:Ljava/lang/String;

.field private rootDeviceType:Ljava/lang/String;

.field private securityGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private sourceDestCheck:Ljava/lang/Boolean;

.field private spotInstanceRequestId:Ljava/lang/String;

.field private state:Lcom/amazonaws/services/ec2/model/InstanceState;

.field private stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

.field private stateTransitionReason:Ljava/lang/String;

.field private subnetId:Ljava/lang/String;

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

.field private vpcId:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/Instance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/Instance;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v3

    if-nez v3, :cond_2c

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/InstanceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2e

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_30

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_35

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_36

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_37

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_38

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3b

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_3c

    move v3, v1

    :goto_16
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-nez v0, :cond_3d

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v3

    if-nez v3, :cond_3e

    move v3, v1

    :goto_18
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/Placement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_40

    move v3, v1

    :goto_1a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_41

    move v0, v1

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_42

    move v3, v1

    :goto_1c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    move v0, v1

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_44

    move v3, v1

    :goto_1e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v0

    if-nez v0, :cond_45

    move v0, v1

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v3

    if-nez v3, :cond_46

    move v3, v1

    :goto_20
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/Monitoring;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    move v0, v1

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_48

    move v3, v1

    :goto_22
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_49

    move v0, v1

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4a

    move v3, v1

    :goto_24
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_13
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    move v0, v1

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4c

    move v3, v1

    :goto_26
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_14
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4d

    move v0, v1

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4e

    move v3, v1

    :goto_28
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    if-nez v0, :cond_4f

    move v0, v1

    :goto_29
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v3

    if-nez v3, :cond_50

    move v3, v1

    :goto_2a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/StateReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_51

    move v0, v1

    :goto_2b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_52

    move v3, v1

    :goto_2c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_17
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    move v0, v1

    :goto_2d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_54

    move v3, v1

    :goto_2e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_18
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_55

    move v0, v1

    :goto_2f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_56

    move v3, v1

    :goto_30
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_57

    move v0, v1

    :goto_31
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_58

    move v3, v1

    :goto_32
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_59

    move v0, v1

    :goto_33
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5a

    move v3, v1

    :goto_34
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1b
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5b

    move v0, v1

    :goto_35
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5c

    move v3, v1

    :goto_36
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1c
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5d

    move v0, v1

    :goto_37
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5e

    move v3, v1

    :goto_38
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v0

    if-nez v0, :cond_5f

    move v0, v1

    :goto_39
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v3

    if-nez v3, :cond_60

    move v3, v1

    :goto_3a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/InstanceLicense;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_61

    move v0, v1

    :goto_3b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_62

    move v3, v1

    :goto_3c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1f
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_63

    move v0, v1

    :goto_3d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_64

    move v3, v1

    :goto_3e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_20
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_65

    move v0, v1

    :goto_3f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_66

    move v3, v1

    :goto_40
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_67

    move v0, v1

    :goto_41
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_68

    move v3, v1

    :goto_42
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_69

    move v0, v1

    :goto_43
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6a

    move v3, v1

    :goto_44
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_23
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6b

    move v0, v1

    :goto_45
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6c

    move v3, v1

    :goto_46
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_24
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v0

    if-nez v0, :cond_6d

    move v0, v1

    :goto_47
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v3

    if-nez v3, :cond_6e

    move v3, v1

    :goto_48
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/IamInstanceProfile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_6f

    move v0, v1

    :goto_49
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_70

    move v3, v1

    :goto_4a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_26
    move v2, v1

    goto/16 :goto_0

    :cond_27
    move v0, v2

    goto/16 :goto_1

    :cond_28
    move v3, v2

    goto/16 :goto_2

    :cond_29
    move v0, v2

    goto/16 :goto_3

    :cond_2a
    move v3, v2

    goto/16 :goto_4

    :cond_2b
    move v0, v2

    goto/16 :goto_5

    :cond_2c
    move v3, v2

    goto/16 :goto_6

    :cond_2d
    move v0, v2

    goto/16 :goto_7

    :cond_2e
    move v3, v2

    goto/16 :goto_8

    :cond_2f
    move v0, v2

    goto/16 :goto_9

    :cond_30
    move v3, v2

    goto/16 :goto_a

    :cond_31
    move v0, v2

    goto/16 :goto_b

    :cond_32
    move v3, v2

    goto/16 :goto_c

    :cond_33
    move v0, v2

    goto/16 :goto_d

    :cond_34
    move v3, v2

    goto/16 :goto_e

    :cond_35
    move v0, v2

    goto/16 :goto_f

    :cond_36
    move v3, v2

    goto/16 :goto_10

    :cond_37
    move v0, v2

    goto/16 :goto_11

    :cond_38
    move v3, v2

    goto/16 :goto_12

    :cond_39
    move v0, v2

    goto/16 :goto_13

    :cond_3a
    move v3, v2

    goto/16 :goto_14

    :cond_3b
    move v0, v2

    goto/16 :goto_15

    :cond_3c
    move v3, v2

    goto/16 :goto_16

    :cond_3d
    move v0, v2

    goto/16 :goto_17

    :cond_3e
    move v3, v2

    goto/16 :goto_18

    :cond_3f
    move v0, v2

    goto/16 :goto_19

    :cond_40
    move v3, v2

    goto/16 :goto_1a

    :cond_41
    move v0, v2

    goto/16 :goto_1b

    :cond_42
    move v3, v2

    goto/16 :goto_1c

    :cond_43
    move v0, v2

    goto/16 :goto_1d

    :cond_44
    move v3, v2

    goto/16 :goto_1e

    :cond_45
    move v0, v2

    goto/16 :goto_1f

    :cond_46
    move v3, v2

    goto/16 :goto_20

    :cond_47
    move v0, v2

    goto/16 :goto_21

    :cond_48
    move v3, v2

    goto/16 :goto_22

    :cond_49
    move v0, v2

    goto/16 :goto_23

    :cond_4a
    move v3, v2

    goto/16 :goto_24

    :cond_4b
    move v0, v2

    goto/16 :goto_25

    :cond_4c
    move v3, v2

    goto/16 :goto_26

    :cond_4d
    move v0, v2

    goto/16 :goto_27

    :cond_4e
    move v3, v2

    goto/16 :goto_28

    :cond_4f
    move v0, v2

    goto/16 :goto_29

    :cond_50
    move v3, v2

    goto/16 :goto_2a

    :cond_51
    move v0, v2

    goto/16 :goto_2b

    :cond_52
    move v3, v2

    goto/16 :goto_2c

    :cond_53
    move v0, v2

    goto/16 :goto_2d

    :cond_54
    move v3, v2

    goto/16 :goto_2e

    :cond_55
    move v0, v2

    goto/16 :goto_2f

    :cond_56
    move v3, v2

    goto/16 :goto_30

    :cond_57
    move v0, v2

    goto/16 :goto_31

    :cond_58
    move v3, v2

    goto/16 :goto_32

    :cond_59
    move v0, v2

    goto/16 :goto_33

    :cond_5a
    move v3, v2

    goto/16 :goto_34

    :cond_5b
    move v0, v2

    goto/16 :goto_35

    :cond_5c
    move v3, v2

    goto/16 :goto_36

    :cond_5d
    move v0, v2

    goto/16 :goto_37

    :cond_5e
    move v3, v2

    goto/16 :goto_38

    :cond_5f
    move v0, v2

    goto/16 :goto_39

    :cond_60
    move v3, v2

    goto/16 :goto_3a

    :cond_61
    move v0, v2

    goto/16 :goto_3b

    :cond_62
    move v3, v2

    goto/16 :goto_3c

    :cond_63
    move v0, v2

    goto/16 :goto_3d

    :cond_64
    move v3, v2

    goto/16 :goto_3e

    :cond_65
    move v0, v2

    goto/16 :goto_3f

    :cond_66
    move v3, v2

    goto/16 :goto_40

    :cond_67
    move v0, v2

    goto/16 :goto_41

    :cond_68
    move v3, v2

    goto/16 :goto_42

    :cond_69
    move v0, v2

    goto/16 :goto_43

    :cond_6a
    move v3, v2

    goto/16 :goto_44

    :cond_6b
    move v0, v2

    goto/16 :goto_45

    :cond_6c
    move v3, v2

    goto/16 :goto_46

    :cond_6d
    move v0, v2

    goto/16 :goto_47

    :cond_6e
    move v3, v2

    goto/16 :goto_48

    :cond_6f
    move v0, v2

    goto/16 :goto_49

    :cond_70
    move v3, v2

    goto/16 :goto_4a
.end method

.method public getAmiLaunchIndex()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->amiLaunchIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHypervisor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    return-object v0
.end method

.method public getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceLifecycle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceLifecycle:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->launchTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->license:Lcom/amazonaws/services/ec2/model/InstanceLicense;

    return-object v0
.end method

.method public getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->monitoring:Lcom/amazonaws/services/ec2/model/Monitoring;

    return-object v0
.end method

.method public getNetworkInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    return-object v0
.end method

.method public getPlacement()Lcom/amazonaws/services/ec2/model/Placement;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateDnsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateDnsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateIpAddress:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getPublicDnsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicDnsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSourceDestCheck()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->sourceDestCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSpotInstanceRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->spotInstanceRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/amazonaws/services/ec2/model/InstanceState;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->state:Lcom/amazonaws/services/ec2/model/InstanceState;

    return-object v0
.end method

.method public getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    return-object v0
.end method

.method public getStateTransitionReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateTransitionReason:Ljava/lang/String;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->subnetId:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVirtualizationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    return-object v0
.end method

.method public getVpcId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->vpcId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    move v0, v1

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v0

    if-nez v0, :cond_1c

    move v0, v1

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v1

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    move v0, v1

    :goto_21
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_22

    move v0, v1

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v0

    if-nez v0, :cond_23

    move v0, v1

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_24

    :goto_24
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceState;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_e

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Monitoring;->hashCode()I

    move-result v0

    goto/16 :goto_f

    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_10

    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_12

    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/StateReason;->hashCode()I

    move-result v0

    goto/16 :goto_14

    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_15

    :cond_16
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_16

    :cond_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_17

    :cond_18
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_18

    :cond_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_19

    :cond_1a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1a

    :cond_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1b

    :cond_1c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceLicense;->hashCode()I

    move-result v0

    goto/16 :goto_1c

    :cond_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1d

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_1e

    :cond_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_1f

    :cond_20
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_20

    :cond_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_21

    :cond_22
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_22

    :cond_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IamInstanceProfile;->hashCode()I

    move-result v0

    goto/16 :goto_23

    :cond_24
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto/16 :goto_24
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSourceDestCheck()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->sourceDestCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAmiLaunchIndex(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->amiLaunchIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->architecture:Ljava/lang/String;

    return-void
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->clientToken:Ljava/lang/String;

    return-void
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->ebsOptimized:Ljava/lang/Boolean;

    return-void
.end method

.method public setHypervisor(Lcom/amazonaws/services/ec2/model/HypervisorType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/HypervisorType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    return-void
.end method

.method public setHypervisor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    return-void
.end method

.method public setIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->imageId:Ljava/lang/String;

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public setInstanceLifecycle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceLifecycle:Ljava/lang/String;

    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->kernelId:Ljava/lang/String;

    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->keyName:Ljava/lang/String;

    return-void
.end method

.method public setLaunchTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->launchTime:Ljava/util/Date;

    return-void
.end method

.method public setLicense(Lcom/amazonaws/services/ec2/model/InstanceLicense;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->license:Lcom/amazonaws/services/ec2/model/InstanceLicense;

    return-void
.end method

.method public setMonitoring(Lcom/amazonaws/services/ec2/model/Monitoring;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->monitoring:Lcom/amazonaws/services/ec2/model/Monitoring;

    return-void
.end method

.method public setNetworkInterfaces(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public setPlacement(Lcom/amazonaws/services/ec2/model/Placement;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->platform:Ljava/lang/String;

    return-void
.end method

.method public setPrivateDnsName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateDnsName:Ljava/lang/String;

    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateIpAddress:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setPublicDnsName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicDnsName:Ljava/lang/String;

    return-void
.end method

.method public setPublicIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicIpAddress:Ljava/lang/String;

    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->ramdiskId:Ljava/lang/String;

    return-void
.end method

.method public setRootDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setRootDeviceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setSecurityGroups(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSourceDestCheck(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->sourceDestCheck:Ljava/lang/Boolean;

    return-void
.end method

.method public setSpotInstanceRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->spotInstanceRequestId:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/amazonaws/services/ec2/model/InstanceState;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->state:Lcom/amazonaws/services/ec2/model/InstanceState;

    return-void
.end method

.method public setStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    return-void
.end method

.method public setStateTransitionReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateTransitionReason:Ljava/lang/String;

    return-void
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->subnetId:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVirtualizationType(Lcom/amazonaws/services/ec2/model/VirtualizationType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VirtualizationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    return-void
.end method

.method public setVirtualizationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    return-void
.end method

.method public setVpcId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->vpcId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getImageId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getState()Lcom/amazonaws/services/ec2/model/InstanceState;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateDnsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateDnsName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicDnsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicDnsName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateTransitionReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateTransitionReason()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKeyName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmiLaunchIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getAmiLaunchIndex()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLaunchTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getKernelId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRamdiskId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPlatform()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getMonitoring()Lcom/amazonaws/services/ec2/model/Monitoring;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSubnetId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpcId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVpcId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPrivateIpAddress()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublicIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getPublicIpAddress()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getStateReason()Lcom/amazonaws/services/ec2/model/StateReason;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualizationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getVirtualizationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceLifecycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getInstanceLifecycle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotInstanceRequestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSpotInstanceRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicense;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceDestCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hypervisor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getHypervisor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IamInstanceProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAmiLaunchIndex(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->amiLaunchIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public withArchitecture(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->architecture:Ljava/lang/String;

    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/Instance;->setBlockDeviceMappings(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withClientToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->clientToken:Ljava/lang/String;

    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->ebsOptimized:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withHypervisor(Lcom/amazonaws/services/ec2/model/HypervisorType;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/HypervisorType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    return-object p0
.end method

.method public withHypervisor(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->hypervisor:Ljava/lang/String;

    return-object p0
.end method

.method public withIamInstanceProfile(Lcom/amazonaws/services/ec2/model/IamInstanceProfile;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->iamInstanceProfile:Lcom/amazonaws/services/ec2/model/IamInstanceProfile;

    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->imageId:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceLifecycle(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceLifecycle:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->instanceType:Ljava/lang/String;

    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->kernelId:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->keyName:Ljava/lang/String;

    return-object p0
.end method

.method public withLaunchTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->launchTime:Ljava/util/Date;

    return-object p0
.end method

.method public withLicense(Lcom/amazonaws/services/ec2/model/InstanceLicense;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->license:Lcom/amazonaws/services/ec2/model/InstanceLicense;

    return-object p0
.end method

.method public withMonitoring(Lcom/amazonaws/services/ec2/model/Monitoring;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->monitoring:Lcom/amazonaws/services/ec2/model/Monitoring;

    return-object p0
.end method

.method public withNetworkInterfaces(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->networkInterfaces:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withNetworkInterfaces([Lcom/amazonaws/services/ec2/model/InstanceNetworkInterface;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/Instance;->setNetworkInterfaces(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withPlacement(Lcom/amazonaws/services/ec2/model/Placement;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public withPrivateDnsName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateDnsName:Ljava/lang/String;

    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->privateIpAddress:Ljava/lang/String;

    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Lcom/amazonaws/services/ec2/model/ProductCode;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/Instance;->setProductCodes(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getProductCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withPublicDnsName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicDnsName:Ljava/lang/String;

    return-object p0
.end method

.method public withPublicIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->publicIpAddress:Ljava/lang/String;

    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->ramdiskId:Ljava/lang/String;

    return-object p0
.end method

.method public withRootDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public withRootDeviceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->rootDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/GroupIdentifier;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Lcom/amazonaws/services/ec2/model/GroupIdentifier;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/Instance;->setSecurityGroups(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSourceDestCheck(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->sourceDestCheck:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withSpotInstanceRequestId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->spotInstanceRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public withState(Lcom/amazonaws/services/ec2/model/InstanceState;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->state:Lcom/amazonaws/services/ec2/model/InstanceState;

    return-object p0
.end method

.method public withStateReason(Lcom/amazonaws/services/ec2/model/StateReason;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateReason:Lcom/amazonaws/services/ec2/model/StateReason;

    return-object p0
.end method

.method public withStateTransitionReason(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->stateTransitionReason:Ljava/lang/String;

    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->subnetId:Ljava/lang/String;

    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Instance;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/Instance;->setTags(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Instance;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withVirtualizationType(Lcom/amazonaws/services/ec2/model/VirtualizationType;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VirtualizationType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    return-object p0
.end method

.method public withVirtualizationType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->virtualizationType:Ljava/lang/String;

    return-object p0
.end method

.method public withVpcId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Instance;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Instance;->vpcId:Ljava/lang/String;

    return-object p0
.end method
