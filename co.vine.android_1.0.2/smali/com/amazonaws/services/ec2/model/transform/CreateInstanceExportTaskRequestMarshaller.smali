.class public Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;
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
        "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Invalid argument passed to marshall(...)"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonEC2"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "CreateInstanceExportTask"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2013-02-01"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "Description"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "InstanceId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "TargetEnvironment"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "ExportToS3.DiskImageFormat"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "ExportToS3.ContainerFormat"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "ExportToS3.S3Bucket"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "ExportToS3.S3Prefix"

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
