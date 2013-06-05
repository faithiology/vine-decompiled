.class public Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

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

.field private statistic:Ljava/lang/String;

.field private threshold:Ljava/lang/Double;

.field private unit:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_16

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1a

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_22

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_23

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_24

    move v3, v1

    :goto_14
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_25

    move v0, v1

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_26

    move v3, v1

    :goto_16
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    move v3, v1

    :goto_18
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2a

    move v3, v1

    :goto_1a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_2c

    move v3, v1

    :goto_1c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2e

    move v3, v1

    :goto_1e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_10
    move v2, v1

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_1

    :cond_12
    move v3, v2

    goto/16 :goto_2

    :cond_13
    move v0, v2

    goto/16 :goto_3

    :cond_14
    move v3, v2

    goto/16 :goto_4

    :cond_15
    move v0, v2

    goto/16 :goto_5

    :cond_16
    move v3, v2

    goto/16 :goto_6

    :cond_17
    move v0, v2

    goto/16 :goto_7

    :cond_18
    move v3, v2

    goto/16 :goto_8

    :cond_19
    move v0, v2

    goto/16 :goto_9

    :cond_1a
    move v3, v2

    goto/16 :goto_a

    :cond_1b
    move v0, v2

    goto/16 :goto_b

    :cond_1c
    move v3, v2

    goto/16 :goto_c

    :cond_1d
    move v0, v2

    goto/16 :goto_d

    :cond_1e
    move v3, v2

    goto/16 :goto_e

    :cond_1f
    move v0, v2

    goto/16 :goto_f

    :cond_20
    move v3, v2

    goto/16 :goto_10

    :cond_21
    move v0, v2

    goto/16 :goto_11

    :cond_22
    move v3, v2

    goto/16 :goto_12

    :cond_23
    move v0, v2

    goto/16 :goto_13

    :cond_24
    move v3, v2

    goto/16 :goto_14

    :cond_25
    move v0, v2

    goto/16 :goto_15

    :cond_26
    move v3, v2

    goto/16 :goto_16

    :cond_27
    move v0, v2

    goto/16 :goto_17

    :cond_28
    move v3, v2

    goto/16 :goto_18

    :cond_29
    move v0, v2

    goto/16 :goto_19

    :cond_2a
    move v3, v2

    goto/16 :goto_1a

    :cond_2b
    move v0, v2

    goto/16 :goto_1b

    :cond_2c
    move v3, v2

    goto/16 :goto_1c

    :cond_2d
    move v0, v2

    goto :goto_1d

    :cond_2e
    move v3, v2

    goto :goto_1e
.end method

.method public getActionsEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->actionsEnabled:Ljava/lang/Boolean;

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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    return-object v0
.end method

.method public getAlarmDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparisonOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getEvaluationPeriods()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->evaluationPeriods:Ljava/lang/Integer;

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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->namespace:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->period:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatistic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->threshold:Ljava/lang/Double;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_e
.end method

.method public isActionsEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->actionsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActionsEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->actionsEnabled:Ljava/lang/Boolean;

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

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setAlarmDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmDescription:Ljava/lang/String;

    return-void
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmName:Ljava/lang/String;

    return-void
.end method

.method public setComparisonOperator(Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

    return-void
.end method

.method public setComparisonOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public setEvaluationPeriods(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->evaluationPeriods:Ljava/lang/Integer;

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

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->metricName:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->namespace:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setPeriod(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->period:Ljava/lang/Integer;

    return-void
.end method

.method public setStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    return-void
.end method

.method public setStatistic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    return-void
.end method

.method public setThreshold(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->threshold:Ljava/lang/Double;

    return-void
.end method

.method public setUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OKActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsufficientDataActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statistic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EvaluationPeriods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComparisonOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withActionsEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->actionsEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withAlarmActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAlarmActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->setAlarmActions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withAlarmDescription(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmDescription:Ljava/lang/String;

    return-object p0
.end method

.method public withAlarmName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmName:Ljava/lang/String;

    return-object p0
.end method

.method public withComparisonOperator(Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withComparisonOperator(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

    return-object p0
.end method

.method public withDimensions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDimensions([Lcom/amazonaws/services/cloudwatch/model/Dimension;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->setDimensions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withEvaluationPeriods(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->evaluationPeriods:Ljava/lang/Integer;

    return-object p0
.end method

.method public withInsufficientDataActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInsufficientDataActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->setInsufficientDataActions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->metricName:Ljava/lang/String;

    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public withOKActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withOKActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->setOKActions(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withPeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->period:Ljava/lang/Integer;

    return-object p0
.end method

.method public withStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    return-object p0
.end method

.method public withStatistic(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    return-object p0
.end method

.method public withThreshold(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->threshold:Ljava/lang/Double;

    return-object p0
.end method

.method public withUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    return-object p0
.end method

.method public withUnit(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    return-object p0
.end method
