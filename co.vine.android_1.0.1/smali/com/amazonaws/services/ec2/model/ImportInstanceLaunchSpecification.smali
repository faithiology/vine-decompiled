.class public Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private additionalInfo:Ljava/lang/String;

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

.field private disableApiTermination:Ljava/lang/Boolean;

.field private instanceInitiatedShutdownBehavior:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private monitoring:Ljava/lang/Boolean;

.field private placement:Lcom/amazonaws/services/ec2/model/Placement;

.field private privateIpAddress:Ljava/lang/String;

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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v3

    if-nez v3, :cond_19

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/Placement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1b

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1c

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1d

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_21

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    move v3, v1

    :goto_16
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    move v3, v1

    :goto_18
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    move v2, v1

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_1

    :cond_f
    move v3, v2

    goto/16 :goto_2

    :cond_10
    move v0, v2

    goto/16 :goto_3

    :cond_11
    move v3, v2

    goto/16 :goto_4

    :cond_12
    move v0, v2

    goto/16 :goto_5

    :cond_13
    move v3, v2

    goto/16 :goto_6

    :cond_14
    move v0, v2

    goto/16 :goto_7

    :cond_15
    move v3, v2

    goto/16 :goto_8

    :cond_16
    move v0, v2

    goto/16 :goto_9

    :cond_17
    move v3, v2

    goto/16 :goto_a

    :cond_18
    move v0, v2

    goto/16 :goto_b

    :cond_19
    move v3, v2

    goto/16 :goto_c

    :cond_1a
    move v0, v2

    goto/16 :goto_d

    :cond_1b
    move v3, v2

    goto/16 :goto_e

    :cond_1c
    move v0, v2

    goto/16 :goto_f

    :cond_1d
    move v3, v2

    goto/16 :goto_10

    :cond_1e
    move v0, v2

    goto/16 :goto_11

    :cond_1f
    move v3, v2

    goto/16 :goto_12

    :cond_20
    move v0, v2

    goto/16 :goto_13

    :cond_21
    move v3, v2

    goto/16 :goto_14

    :cond_22
    move v0, v2

    goto/16 :goto_15

    :cond_23
    move v3, v2

    goto :goto_16

    :cond_24
    move v0, v2

    goto :goto_17

    :cond_25
    move v3, v2

    goto :goto_18
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->architecture:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInstanceInitiatedShutdownBehavior()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitoring()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->monitoring:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPlacement()Lcom/amazonaws/services/ec2/model/Placement;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->privateIpAddress:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public isDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMonitoring()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->monitoring:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdditionalInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->architecture:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDisableApiTermination(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->disableApiTermination:Ljava/lang/Boolean;

    return-void
.end method

.method public setInstanceInitiatedShutdownBehavior(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    return-void
.end method

.method public setMonitoring(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->monitoring:Ljava/lang/Boolean;

    return-void
.end method

.method public setPlacement(Lcom/amazonaws/services/ec2/model/Placement;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->privateIpAddress:Ljava/lang/String;

    return-void
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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->subnetId:Ljava/lang/String;

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->userData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdditionalInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableApiTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceInitiatedShutdownBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAdditionalInfo(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->additionalInfo:Ljava/lang/String;

    return-object p0
.end method

.method public withArchitecture(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->architecture:Ljava/lang/String;

    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->setBlockDeviceMappings(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withDisableApiTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->disableApiTermination:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withInstanceInitiatedShutdownBehavior(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->instanceType:Ljava/lang/String;

    return-object p0
.end method

.method public withMonitoring(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->monitoring:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withPlacement(Lcom/amazonaws/services/ec2/model/Placement;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->placement:Lcom/amazonaws/services/ec2/model/Placement;

    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->privateIpAddress:Ljava/lang/String;

    return-object p0
.end method

.method public withSecurityGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->securityGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSecurityGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->setSecurityGroups(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->subnetId:Ljava/lang/String;

    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->userData:Ljava/lang/String;

    return-object p0
.end method
