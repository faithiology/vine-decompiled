.class public Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actionsEnabled:Ljava/lang/Boolean;

.field private alarmActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alarmArn:Ljava/lang/String;

.field private alarmConfigurationUpdatedTimestamp:Ljava/util/Date;

.field private alarmDescription:Ljava/lang/String;

.field private alarmName:Ljava/lang/String;

.field private comparisonOperator:Ljava/lang/String;

.field private dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;"
        }
    .end annotation
.end field

.field private evaluationPeriods:Ljava/lang/Integer;

.field private insufficientDataActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metricName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private oKActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private period:Ljava/lang/Integer;

.field private stateReason:Ljava/lang/String;

.field private stateReasonData:Ljava/lang/String;

.field private stateUpdatedTimestamp:Ljava/util/Date;

.field private stateValue:Ljava/lang/String;

.field private statistic:Ljava/lang/String;

.field private threshold:Ljava/lang/Double;

.field private unit:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1a

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1e

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_21

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_22

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_23

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_24

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_25

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_26

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    move v3, v1

    :goto_16
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_2e

    move v3, v1

    :goto_18
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_30

    move v3, v1

    :goto_1a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    move v0, v1

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    move v3, v1

    :goto_1c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    move v0, v1

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    move v3, v1

    :goto_1e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_35

    move v0, v1

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_36

    move v3, v1

    :goto_20
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_37

    move v0, v1

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_38

    move v3, v1

    :goto_22
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    move v3, v1

    :goto_24
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_13
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3b

    move v0, v1

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3c

    move v3, v1

    :goto_26
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_14
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_3d

    move v0, v1

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_3e

    move v3, v1

    :goto_28
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    move v0, v1

    :goto_29
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_40

    move v3, v1

    :goto_2a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

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

.method public getActionsEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->actionsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAlarmActions()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    return-object v0
.end method

.method public getAlarmArn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmArn:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmConfigurationUpdatedTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getAlarmDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparisonOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getEvaluationPeriods()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->evaluationPeriods:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInsufficientDataActions()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getOKActions()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->period:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStateReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStateReasonData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReasonData:Ljava/lang/String;

    return-object v0
.end method

.method public getStateUpdatedTimestamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateUpdatedTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getStateValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStatistic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->threshold:Ljava/lang/Double;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    :goto_14
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_e

    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_f

    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_10

    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_12

    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_14
.end method

.method public isActionsEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->actionsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActionsEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->actionsEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setAlarmActions(Ljava/util/Collection;)V
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

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setAlarmArn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmArn:Ljava/lang/String;

    return-void
.end method

.method public setAlarmConfigurationUpdatedTimestamp(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmConfigurationUpdatedTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setAlarmDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmDescription:Ljava/lang/String;

    return-void
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmName:Ljava/lang/String;

    return-void
.end method

.method public setComparisonOperator(Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    return-void
.end method

.method public setComparisonOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    return-void
.end method

.method public setDimensions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public setEvaluationPeriods(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->evaluationPeriods:Ljava/lang/Integer;

    return-void
.end method

.method public setInsufficientDataActions(Ljava/util/Collection;)V
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

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->metricName:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->namespace:Ljava/lang/String;

    return-void
.end method

.method public setOKActions(Ljava/util/Collection;)V
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

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setPeriod(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->period:Ljava/lang/Integer;

    return-void
.end method

.method public setStateReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReason:Ljava/lang/String;

    return-void
.end method

.method public setStateReasonData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReasonData:Ljava/lang/String;

    return-void
.end method

.method public setStateUpdatedTimestamp(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateUpdatedTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    return-void
.end method

.method public setStateValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    return-void
.end method

.method public setStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    return-void
.end method

.method public setStatistic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    return-void
.end method

.method public setThreshold(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->threshold:Ljava/lang/Double;

    return-void
.end method

.method public setUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmConfigurationUpdatedTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OKActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsufficientDataActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReasonData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateUpdatedTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statistic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EvaluationPeriods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComparisonOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

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

.method public withActionsEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->actionsEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withAlarmActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAlarmActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->setAlarmActions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withAlarmArn(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmArn:Ljava/lang/String;

    return-object p0
.end method

.method public withAlarmConfigurationUpdatedTimestamp(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmConfigurationUpdatedTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public withAlarmDescription(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmDescription:Ljava/lang/String;

    return-object p0
.end method

.method public withAlarmName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmName:Ljava/lang/String;

    return-object p0
.end method

.method public withComparisonOperator(Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withComparisonOperator(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withDimensions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDimensions([Lcom/amazonaws/services/cloudwatch/model/Dimension;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->setDimensions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withEvaluationPeriods(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->evaluationPeriods:Ljava/lang/Integer;

    return-object p0
.end method

.method public withInsufficientDataActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInsufficientDataActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->setInsufficientDataActions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->metricName:Ljava/lang/String;

    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public withOKActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withOKActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->setOKActions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withPeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->period:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStateReason(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReason:Ljava/lang/String;

    return-object p0
.end method

.method public withStateReasonData(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReasonData:Ljava/lang/String;

    return-object p0
.end method

.method public withStateUpdatedTimestamp(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateUpdatedTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public withStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    return-object p0
.end method

.method public withStateValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    return-object p0
.end method

.method public withStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    return-object p0
.end method

.method public withStatistic(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    return-object p0
.end method

.method public withThreshold(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->threshold:Ljava/lang/Double;

    return-object p0
.end method

.method public withUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    return-object p0
.end method

.method public withUnit(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    return-object p0
.end method
