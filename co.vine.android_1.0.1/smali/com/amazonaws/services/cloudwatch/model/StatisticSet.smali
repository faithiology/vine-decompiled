.class public Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private maximum:Ljava/lang/Double;

.field private minimum:Ljava/lang/Double;

.field private sampleCount:Ljava/lang/Double;

.field private sum:Ljava/lang/Double;


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

    instance-of v0, p1, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

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

.method public getMaximum()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->maximum:Ljava/lang/Double;

    return-object v0
.end method

.method public getMinimum()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->minimum:Ljava/lang/Double;

    return-object v0
.end method

.method public getSampleCount()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sampleCount:Ljava/lang/Double;

    return-object v0
.end method

.method public getSum()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sum:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public setMaximum(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->maximum:Ljava/lang/Double;

    return-void
.end method

.method public setMinimum(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->minimum:Ljava/lang/Double;

    return-void
.end method

.method public setSampleCount(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sampleCount:Ljava/lang/Double;

    return-void
.end method

.method public setSum(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sum:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SampleCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMaximum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->maximum:Ljava/lang/Double;

    return-object p0
.end method

.method public withMinimum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->minimum:Ljava/lang/Double;

    return-object p0
.end method

.method public withSampleCount(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sampleCount:Ljava/lang/Double;

    return-object p0
.end method

.method public withSum(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->sum:Ljava/lang/Double;

    return-object p0
.end method
