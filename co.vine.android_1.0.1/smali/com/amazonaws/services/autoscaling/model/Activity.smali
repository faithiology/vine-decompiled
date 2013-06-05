.class public Lcom/amazonaws/services/autoscaling/model/Activity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private activityId:Ljava/lang/String;

.field private autoScalingGroupName:Ljava/lang/String;

.field private cause:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private details:Ljava/lang/String;

.field private endTime:Ljava/util/Date;

.field private progress:Ljava/lang/Integer;

.field private startTime:Ljava/util/Date;

.field private statusCode:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/autoscaling/model/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/autoscaling/model/Activity;

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_17

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1c

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1d

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    move v2, v1

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :cond_d
    move v3, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto/16 :goto_3

    :cond_f
    move v3, v2

    goto/16 :goto_4

    :cond_10
    move v0, v2

    goto/16 :goto_5

    :cond_11
    move v3, v2

    goto/16 :goto_6

    :cond_12
    move v0, v2

    goto/16 :goto_7

    :cond_13
    move v3, v2

    goto/16 :goto_8

    :cond_14
    move v0, v2

    goto/16 :goto_9

    :cond_15
    move v3, v2

    goto/16 :goto_a

    :cond_16
    move v0, v2

    goto/16 :goto_b

    :cond_17
    move v3, v2

    goto/16 :goto_c

    :cond_18
    move v0, v2

    goto/16 :goto_d

    :cond_19
    move v3, v2

    goto/16 :goto_e

    :cond_1a
    move v0, v2

    goto/16 :goto_f

    :cond_1b
    move v3, v2

    goto/16 :goto_10

    :cond_1c
    move v0, v2

    goto :goto_11

    :cond_1d
    move v3, v2

    goto :goto_12

    :cond_1e
    move v0, v2

    goto :goto_13

    :cond_1f
    move v3, v2

    goto :goto_14
.end method

.method public getActivityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->activityId:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoScalingGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->autoScalingGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getCause()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->cause:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getProgress()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->progress:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    :goto_9
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9
.end method

.method public setActivityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->activityId:Ljava/lang/String;

    return-void
.end method

.method public setAutoScalingGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->autoScalingGroupName:Ljava/lang/String;

    return-void
.end method

.method public setCause(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->cause:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->description:Ljava/lang/String;

    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->details:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->endTime:Ljava/util/Date;

    return-void
.end method

.method public setProgress(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->progress:Ljava/lang/Integer;

    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->startTime:Ljava/util/Date;

    return-void
.end method

.method public setStatusCode(Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getActivityId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoScalingGroupName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getAutoScalingGroupName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getCause()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStartTime()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getEndTime()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusCode()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getStatusMessage()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getProgress()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Activity;->getDetails()Ljava/lang/String;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withActivityId(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->activityId:Ljava/lang/String;

    return-object p0
.end method

.method public withAutoScalingGroupName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->autoScalingGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public withCause(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->cause:Ljava/lang/String;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withDetails(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->details:Ljava/lang/String;

    return-object p0
.end method

.method public withEndTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->endTime:Ljava/util/Date;

    return-object p0
.end method

.method public withProgress(Ljava/lang/Integer;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->progress:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->startTime:Ljava/util/Date;

    return-object p0
.end method

.method public withStatusCode(Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/ScalingActivityStatusCode;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    return-object p0
.end method

.method public withStatusCode(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusCode:Ljava/lang/String;

    return-object p0
.end method

.method public withStatusMessage(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Activity;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Activity;->statusMessage:Ljava/lang/String;

    return-object p0
.end method
