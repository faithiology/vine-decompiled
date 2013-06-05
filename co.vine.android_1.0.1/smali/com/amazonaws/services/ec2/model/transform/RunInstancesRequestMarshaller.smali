.class public Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/Request;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Invalid argument passed to marshall(...)"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v5, Lcom/amazonaws/DefaultRequest;

    const-string v0, "AmazonEC2"

    invoke-direct {v5, p1, v0}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v0, "Action"

    const-string v1, "RunInstances"

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "2013-02-01"

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ImageId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "MinCount"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "MaxCount"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "KeyName"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityGroup."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityGroupId."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "UserData"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "InstanceType"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "Placement.AvailabilityZone"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v1, "Placement.GroupName"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v1, "Placement.Tenancy"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getTenancy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "KernelId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "RamdiskId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockDeviceMapping."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".VirtualName"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockDeviceMapping."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".DeviceName"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BlockDeviceMapping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Ebs.SnapshotId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BlockDeviceMapping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Ebs.VolumeSize"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BlockDeviceMapping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Ebs.DeleteOnTermination"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BlockDeviceMapping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Ebs.VolumeType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BlockDeviceMapping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Ebs.Iops"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockDeviceMapping."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".NoDevice"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_18
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v0, "Monitoring.Enabled"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v0, "SubnetId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v0, "DisableApiTermination"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "InstanceInitiatedShutdownBehavior"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;->getPool()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v1, "License.Pool"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;->getPool()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v0, "PrivateIpAddress"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v0, "ClientToken"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v0, "AdditionalInfo"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkInterface."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".NetworkInterfaceId"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkInterface."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".DeviceIndex"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkInterface."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".SubnetId"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkInterface."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".Description"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkInterface."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".PrivateIpAddress"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_26

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkInterface."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".SecurityGroupId."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v8, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_27
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkInterface."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".DeleteOnTermination"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v2

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_29

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkInterface."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".PrivateIpAddresses."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".PrivateIpAddress"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_2a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkInterface."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".PrivateIpAddresses."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".Primary"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v8, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_2b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkInterface."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".SecondaryPrivateIpAddressCount"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_2d
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    const-string v1, "IamInstanceProfile.Arn"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getArn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v1, "IamInstanceProfile.Name"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v0, "EbsOptimized"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-object v5
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
