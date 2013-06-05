.class public Lcom/amazonaws/services/ec2/model/BundleTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bundleId:Ljava/lang/String;

.field private bundleTaskError:Lcom/amazonaws/services/ec2/model/BundleTaskError;

.field private instanceId:Ljava/lang/String;

.field private progress:Ljava/lang/String;

.field private startTime:Ljava/util/Date;

.field private state:Ljava/lang/String;

.field private storage:Lcom/amazonaws/services/ec2/model/Storage;

.field private updateTime:Ljava/util/Date;


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/BundleTask;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/BundleTask;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/Storage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v3

    if-nez v3, :cond_19

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/BundleTaskError;->equals(Ljava/lang/Object;)Z

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

.method public getBundleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleTaskError:Lcom/amazonaws/services/ec2/model/BundleTaskError;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->progress:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage()Lcom/amazonaws/services/ec2/model/Storage;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    return-object v0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->updateTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v2

    if-nez v2, :cond_7

    :goto_7
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Storage;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/BundleTaskError;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public setBundleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleId:Ljava/lang/String;

    return-void
.end method

.method public setBundleTaskError(Lcom/amazonaws/services/ec2/model/BundleTaskError;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleTaskError:Lcom/amazonaws/services/ec2/model/BundleTaskError;

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->progress:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->startTime:Ljava/util/Date;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->state:Ljava/lang/String;

    return-void
.end method

.method public setStorage(Lcom/amazonaws/services/ec2/model/Storage;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->updateTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleTaskError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

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

.method public withBundleId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleId:Ljava/lang/String;

    return-object p0
.end method

.method public withBundleTaskError(Lcom/amazonaws/services/ec2/model/BundleTaskError;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleTaskError:Lcom/amazonaws/services/ec2/model/BundleTaskError;

    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public withProgress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->progress:Ljava/lang/String;

    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->startTime:Ljava/util/Date;

    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->state:Ljava/lang/String;

    return-object p0
.end method

.method public withStorage(Lcom/amazonaws/services/ec2/model/Storage;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    return-object p0
.end method

.method public withUpdateTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->updateTime:Ljava/util/Date;

    return-object p0
.end method
