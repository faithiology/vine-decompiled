.class public Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoScalingGroupName:Ljava/lang/String;

.field private availabilityZone:Ljava/lang/String;

.field private healthStatus:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private launchConfigurationName:Ljava/lang/String;

.field private lifecycleState:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    move v2, v1

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v3, v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_3

    :cond_b
    move v3, v2

    goto/16 :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_5

    :cond_d
    move v3, v2

    goto/16 :goto_6

    :cond_e
    move v0, v2

    goto :goto_7

    :cond_f
    move v3, v2

    goto :goto_8

    :cond_10
    move v0, v2

    goto :goto_9

    :cond_11
    move v3, v2

    goto :goto_a

    :cond_12
    move v0, v2

    goto :goto_b

    :cond_13
    move v3, v2

    goto :goto_c
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->healthStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->lifecycleState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->autoScalingGroupName:Ljava/lang/String;

    return-void
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->availabilityZone:Ljava/lang/String;

    return-void
.end method

.method public setHealthStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->healthStatus:Ljava/lang/String;

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->launchConfigurationName:Ljava/lang/String;

    return-void
.end method

.method public setLifecycleState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->lifecycleState:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getInstanceId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAutoScalingGroupName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getAvailabilityZone()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifecycleState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLifecycleState()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getHealthStatus()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->getLaunchConfigurationName()Ljava/lang/String;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->autoScalingGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->availabilityZone:Ljava/lang/String;

    return-object p0
.end method

.method public withHealthStatus(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->healthStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->launchConfigurationName:Ljava/lang/String;

    return-object p0
.end method

.method public withLifecycleState(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/AutoScalingInstanceDetails;->lifecycleState:Ljava/lang/String;

    return-object p0
.end method
