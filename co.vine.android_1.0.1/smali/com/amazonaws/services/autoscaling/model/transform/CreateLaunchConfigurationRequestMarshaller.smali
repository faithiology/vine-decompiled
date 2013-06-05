.class public Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;
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
        "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
        ">;",
        "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
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
.method public marshall(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)Lcom/amazonaws/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;",
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

    const-string v0, "AmazonAutoScaling"

    invoke-direct {v3, p1, v0}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v0, "Action"

    const-string v1, "CreateLaunchConfiguration"

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "2011-01-01"

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "LaunchConfigurationName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "ImageId"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "KeyName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityGroups.member."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "UserData"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "InstanceType"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "KernelId"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "RamdiskId"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BlockDeviceMappings.member."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".VirtualName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BlockDeviceMappings.member."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".DeviceName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/autoscaling/model/Ebs;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Ebs;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BlockDeviceMappings.member."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Ebs.SnapshotId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Ebs;->getSnapshotId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Ebs;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BlockDeviceMappings.member."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Ebs.VolumeSize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Ebs;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getInstanceMonitoring()Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v1, "InstanceMonitoring.Enabled"

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "SpotPrice"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "IamInstanceProfile"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->getIamInstanceProfile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "EbsOptimized"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object v3
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
