.class public Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryRequestMarshaller;
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
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
        ">;",
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
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
.method public marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
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

    const-string v1, "AmazonCloudWatch"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "DescribeAlarmHistory"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2010-08-01"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "AlarmName"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "HistoryItemType"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "StartDate"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "EndDate"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "MaxRecords"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "NextToken"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
