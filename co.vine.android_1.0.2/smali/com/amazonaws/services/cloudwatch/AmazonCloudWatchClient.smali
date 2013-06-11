.class public Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/cloudwatch/AmazonCloudWatch;


# instance fields
.field private awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field protected final exceptionUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field private signer:Lcom/amazonaws/auth/AWS4Signer;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidNextTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidNextTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidParameterCombinationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidParameterCombinationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidFormatExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidFormatExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/InternalServiceExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/InternalServiceExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/MissingRequiredParameterExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/MissingRequiredParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidParameterValueExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidParameterValueExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "monitoring.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->setEndpoint(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    const-string v1, "monitoring"

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/cloudwatch/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TY;>;",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TX;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    iget v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->copyPrivateRequestParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v1, v2}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    new-instance v0, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAlarms(Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/DeleteAlarmsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/DeleteAlarmsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DeleteAlarmsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public describeAlarmHistory()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->describeAlarmHistory(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmHistory(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;

    return-object v0
.end method

.method public describeAlarms()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->describeAlarms(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarms(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;

    return-object v0
.end method

.method public describeAlarmsForMetric(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;

    return-object v0
.end method

.method public disableAlarmActions(Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/DisableAlarmActionsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/DisableAlarmActionsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DisableAlarmActionsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public enableAlarmActions(Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/EnableAlarmActionsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/EnableAlarmActionsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/EnableAlarmActionsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetricStatistics(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    const-string v0, "monitoring"

    return-object v0
.end method

.method public listMetrics()Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->listMetrics(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;

    move-result-object v0

    return-object v0
.end method

.method public listMetrics(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;

    return-object v0
.end method

.method public putMetricAlarm(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricAlarmRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricAlarmRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricAlarmRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public putMetricData(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricDataRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricDataRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricDataRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public setAlarmState(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/transform/SetAlarmStateRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/transform/SetAlarmStateRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/SetAlarmStateRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->setEndpoint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    return-void
.end method
