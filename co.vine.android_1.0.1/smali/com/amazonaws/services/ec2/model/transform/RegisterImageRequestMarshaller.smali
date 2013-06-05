.class public Lcom/amazonaws/services/ec2/model/transform/RegisterImageRequestMarshaller;
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
        "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Invalid argument passed to marshall(...)"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lcom/amazonaws/DefaultRequest;

    const-string v0, "AmazonEC2"

    invoke-direct {v2, p1, v0}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v0, "Action"

    const-string v1, "RegisterImage"

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "2013-02-01"

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ImageLocation"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Name"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "Description"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "Architecture"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "KernelId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "RamdiskId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "RootDeviceName"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BlockDeviceMapping."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".VirtualName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BlockDeviceMapping."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".DeviceName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockDeviceMapping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Ebs.SnapshotId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockDeviceMapping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Ebs.VolumeSize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockDeviceMapping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Ebs.DeleteOnTermination"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockDeviceMapping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Ebs.VolumeType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockDeviceMapping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Ebs.Iops"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BlockDeviceMapping."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".NoDevice"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_10
    return-object v2
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/RegisterImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
