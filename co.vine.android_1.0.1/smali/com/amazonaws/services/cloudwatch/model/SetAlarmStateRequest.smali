.class public Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alarmName:Ljava/lang/String;

.field private stateReason:Ljava/lang/String;

.field private stateReasonData:Ljava/lang/String;

.field private stateValue:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    move v2, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v3, v2

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v3, v2

    goto :goto_6

    :cond_c
    move v0, v2

    goto :goto_7

    :cond_d
    move v3, v2

    goto :goto_8
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getStateReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStateReasonData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReasonData:Ljava/lang/String;

    return-object v0
.end method

.method public getStateValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->alarmName:Ljava/lang/String;

    return-void
.end method

.method public setStateReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReason:Ljava/lang/String;

    return-void
.end method

.method public setStateReasonData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReasonData:Ljava/lang/String;

    return-void
.end method

.method public setStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    return-void
.end method

.method public setStateValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReasonData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlarmName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->alarmName:Ljava/lang/String;

    return-object p0
.end method

.method public withStateReason(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReason:Ljava/lang/String;

    return-object p0
.end method

.method public withStateReasonData(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReasonData:Ljava/lang/String;

    return-object p0
.end method

.method public withStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    return-object p0
.end method

.method public withStateValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    return-object p0
.end method
