.class public Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deleteOnTermination:Ljava/lang/Boolean;

.field private description:Ljava/lang/String;

.field private deviceIndex:Ljava/lang/Integer;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkInterfaceId:Ljava/lang/String;

.field private privateIpAddress:Ljava/lang/String;

.field private privateIpAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private secondaryPrivateIpAddressCount:Ljava/lang/Integer;

.field private subnetId:Ljava/lang/String;


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

    instance-of v0, p1, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    :goto_2
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v1

    :goto_6
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    move v3, v1

    :goto_8
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v1

    :goto_a
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_16

    move v3, v1

    :goto_c
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v1

    :goto_e
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_19

    move v0, v1

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1a

    move v3, v1

    :goto_10
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1b

    move v0, v1

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v1

    :goto_12
    xor-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    move v2, v1

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :cond_c
    move v3, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v3, v2

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_5

    :cond_10
    move v3, v2

    goto/16 :goto_6

    :cond_11
    move v0, v2

    goto/16 :goto_7

    :cond_12
    move v3, v2

    goto/16 :goto_8

    :cond_13
    move v0, v2

    goto/16 :goto_9

    :cond_14
    move v3, v2

    goto/16 :goto_a

    :cond_15
    move v0, v2

    goto/16 :goto_b

    :cond_16
    move v3, v2

    goto/16 :goto_c

    :cond_17
    move v0, v2

    goto/16 :goto_d

    :cond_18
    move v3, v2

    goto/16 :goto_e

    :cond_19
    move v0, v2

    goto :goto_f

    :cond_1a
    move v3, v2

    goto :goto_10

    :cond_1b
    move v0, v2

    goto :goto_11

    :cond_1c
    move v3, v2

    goto :goto_12
.end method

.method public getDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIndex()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deviceIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkInterfaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->networkInterfaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateIpAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->secondaryPrivateIpAddressCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubnetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->subnetId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_8
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8
.end method

.method public isDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDeleteOnTermination(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->description:Ljava/lang/String;

    return-void
.end method

.method public setDeviceIndex(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deviceIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setGroups(Ljava/util/Collection;)V
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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public setNetworkInterfaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->networkInterfaceId:Ljava/lang/String;

    return-void
.end method

.method public setPrivateIpAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddress:Ljava/lang/String;

    return-void
.end method

.method public setPrivateIpAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    goto :goto_0
.end method

.method public setSecondaryPrivateIpAddressCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->secondaryPrivateIpAddressCount:Ljava/lang/Integer;

    return-void
.end method

.method public setSubnetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->subnetId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkInterfaceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubnetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Groups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteOnTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateIpAddresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecondaryPrivateIpAddressCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDeleteOnTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deleteOnTermination:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withDeviceIndex(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->deviceIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public withGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->setGroups(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withNetworkInterfaceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->networkInterfaceId:Ljava/lang/String;

    return-object p0
.end method

.method public withPrivateIpAddress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddress:Ljava/lang/String;

    return-object p0
.end method

.method public withPrivateIpAddresses(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->privateIpAddresses:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPrivateIpAddresses([Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 4

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->setPrivateIpAddresses(Ljava/util/Collection;)V

    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSecondaryPrivateIpAddressCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->secondaryPrivateIpAddressCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withSubnetId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->subnetId:Ljava/lang/String;

    return-object p0
.end method
