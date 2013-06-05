.class public Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private availabilityZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCooldown:Ljava/lang/Integer;

.field private desiredCapacity:Ljava/lang/Integer;

.field private healthCheckGracePeriod:Ljava/lang/Integer;

.field private healthCheckType:Ljava/lang/String;

.field private launchConfigurationName:Ljava/lang/String;

.field private maxSize:Ljava/lang/Integer;

.field private minSize:Ljava/lang/Integer;

.field private placementGroup:Ljava/lang/String;

.field private terminationPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vPCZoneIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

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

    instance-of v0, p1, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_17

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_19

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1b

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1d

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1e

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1f

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    move v3, v1

    :goto_16
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_24

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_25

    move v3, v1

    :goto_18
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailabilityZones()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultCooldown()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDesiredCapacity()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHealthCheckGracePeriod()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHealthCheckType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlacementGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminationPolicies()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    return-object v0
.end method

.method public getVPCZoneIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    return-void
.end method

.method public setAvailabilityZones(Ljava/util/Collection;)V
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

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setDefaultCooldown(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    return-void
.end method

.method public setDesiredCapacity(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    return-void
.end method

.method public setHealthCheckGracePeriod(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    return-void
.end method

.method public setHealthCheckType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    return-void
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    return-void
.end method

.method public setMaxSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    return-void
.end method

.method public setMinSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    return-void
.end method

.method public setPlacementGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

    return-void
.end method

.method public setTerminationPolicies(Ljava/util/Collection;)V
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

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public setVPCZoneIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAutoScalingGroupName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getLaunchConfigurationName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMinSize()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getMaxSize()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesiredCapacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDesiredCapacity()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultCooldown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getDefaultCooldown()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheckType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthCheckGracePeriod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getHealthCheckGracePeriod()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlacementGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getPlacementGroup()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPCZoneIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getVPCZoneIdentifier()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TerminationPolicies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->autoScalingGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->setAvailabilityZones(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withDefaultCooldown(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->defaultCooldown:Ljava/lang/Integer;

    return-object p0
.end method

.method public withDesiredCapacity(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->desiredCapacity:Ljava/lang/Integer;

    return-object p0
.end method

.method public withHealthCheckGracePeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckGracePeriod:Ljava/lang/Integer;

    return-object p0
.end method

.method public withHealthCheckType(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->healthCheckType:Ljava/lang/String;

    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->launchConfigurationName:Ljava/lang/String;

    return-object p0
.end method

.method public withMaxSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->maxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public withMinSize(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->minSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public withPlacementGroup(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->placementGroup:Ljava/lang/String;

    return-object p0
.end method

.method public withTerminationPolicies(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->terminationPolicies:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTerminationPolicies([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->setTerminationPolicies(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->getTerminationPolicies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withVPCZoneIdentifier(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;->vPCZoneIdentifier:Ljava/lang/String;

    return-object p0
.end method
