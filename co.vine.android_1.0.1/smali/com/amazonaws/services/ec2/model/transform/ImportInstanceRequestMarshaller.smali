.class public Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;
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
        "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
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
    new-instance v3, Lcom/amazonaws/DefaultRequest;

    const-string v0, "AmazonEC2"

    invoke-direct {v3, p1, v0}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v0, "Action"

    const-string v1, "ImportInstance"

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "2013-02-01"

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Description"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "LaunchSpecification.Architecture"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LaunchSpecification.SecurityGroup."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "LaunchSpecification.AdditionalInfo"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "LaunchSpecification.UserData"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "LaunchSpecification.InstanceType"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "LaunchSpecification.Placement.AvailabilityZone"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "LaunchSpecification.Placement.GroupName"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, "LaunchSpecification.Placement.Tenancy"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Placement;->getTenancy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".VirtualName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".DeviceName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.SnapshotId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.VolumeSize"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.DeleteOnTermination"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.VolumeType"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Ebs.Iops"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".NoDevice"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "LaunchSpecification.Monitoring"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v0, "LaunchSpecification.SubnetId"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "LaunchSpecification.DisableApiTermination"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "LaunchSpecification.InstanceInitiatedShutdownBehavior"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v0, "LaunchSpecification.PrivateIpAddress"

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DiskImage;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DiskImage."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Image.Format"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getBytes()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DiskImage."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Image.Bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getBytes()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromLong(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getImportManifestUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DiskImage."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Image.ImportManifestUrl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getImportManifestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskImage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Description"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskImage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Volume.Size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromLong(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v0, "Platform"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-object v3
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
