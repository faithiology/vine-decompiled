.class public Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;
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
        "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)Lcom/amazonaws/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
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

    const-string v1, "ReportInstanceStatus"

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version"

    const-string v1, "2013-02-01"

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstanceId."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "Status"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "StartTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "EndTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReasonCode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "Description"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v3
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
