.class public Lcom/amazonaws/services/ec2/model/ExportTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private exportTaskId:Ljava/lang/String;

.field private exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3Task;

.field private instanceExportDetails:Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

.field private state:Ljava/lang/String;

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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/ExportTask;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/ExportTask;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/InstanceExportDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/ExportToS3Task;->equals(Ljava/lang/Object;)Z

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

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExportTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    return-object v0
.end method

.method public getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->instanceExportDetails:Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceExportDetails;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3Task;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->description:Ljava/lang/String;

    return-void
.end method

.method public setExportTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportTaskId:Ljava/lang/String;

    return-void
.end method

.method public setExportToS3Task(Lcom/amazonaws/services/ec2/model/ExportToS3Task;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    return-void
.end method

.method public setInstanceExportDetails(Lcom/amazonaws/services/ec2/model/InstanceExportDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->instanceExportDetails:Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->state:Ljava/lang/String;

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExportTaskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceExportDetails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExportToS3Task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withExportTaskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportTaskId:Ljava/lang/String;

    return-object p0
.end method

.method public withExportToS3Task(Lcom/amazonaws/services/ec2/model/ExportToS3Task;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    return-object p0
.end method

.method public withInstanceExportDetails(Lcom/amazonaws/services/ec2/model/InstanceExportDetails;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->instanceExportDetails:Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->state:Ljava/lang/String;

    return-object p0
.end method

.method public withStatusMessage(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->statusMessage:Ljava/lang/String;

    return-object p0
.end method
