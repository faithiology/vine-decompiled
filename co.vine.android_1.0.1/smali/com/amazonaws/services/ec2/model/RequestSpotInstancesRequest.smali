.class public Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZoneGroup:Ljava/lang/String;

.field private instanceCount:Ljava/lang/Integer;

.field private launchGroup:Ljava/lang/String;

.field private launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

.field private spotPrice:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private validFrom:Ljava/util/Date;

.field private validUntil:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->spotPrice:Ljava/lang/String;

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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_d

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_11

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_13

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v0

    if-nez v0, :cond_18

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v3

    if-nez v3, :cond_19

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->equals(Ljava/lang/Object;)Z

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

.method public getAvailabilityZoneGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->availabilityZoneGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->instanceCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLaunchGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    return-object v0
.end method

.method public getSpotPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->spotPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValidFrom()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getValidUntil()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validUntil:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v2

    if-nez v2, :cond_7

    :goto_7
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->hashCode()I

    move-result v1

    goto :goto_7
.end method

.method public setAvailabilityZoneGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->availabilityZoneGroup:Ljava/lang/String;

    return-void
.end method

.method public setInstanceCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->instanceCount:Ljava/lang/Integer;

    return-void
.end method

.method public setLaunchGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchGroup:Ljava/lang/String;

    return-void
.end method

.method public setLaunchSpecification(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    return-void
.end method

.method public setSpotPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->spotPrice:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/amazonaws/services/ec2/model/SpotInstanceType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    return-void
.end method

.method public setValidFrom(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validFrom:Ljava/util/Date;

    return-void
.end method

.method public setValidUntil(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validUntil:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpotPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidFrom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZoneGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchSpecification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

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

.method public withAvailabilityZoneGroup(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->availabilityZoneGroup:Ljava/lang/String;

    return-object p0
.end method

.method public withInstanceCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->instanceCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withLaunchGroup(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchGroup:Ljava/lang/String;

    return-object p0
.end method

.method public withLaunchSpecification(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->launchSpecification:Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    return-object p0
.end method

.method public withSpotPrice(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->spotPrice:Ljava/lang/String;

    return-object p0
.end method

.method public withType(Lcom/amazonaws/services/ec2/model/SpotInstanceType;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 1

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SpotInstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->type:Ljava/lang/String;

    return-object p0
.end method

.method public withValidFrom(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validFrom:Ljava/util/Date;

    return-object p0
.end method

.method public withValidUntil(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->validUntil:Ljava/util/Date;

    return-object p0
.end method
