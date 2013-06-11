.class public Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/autoscaling/AmazonAutoScaling;


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

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/InvalidNextTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/InvalidNextTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/ScalingActivityInProgressExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/ScalingActivityInProgressExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/AlreadyExistsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/AlreadyExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/ResourceInUseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/ResourceInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "autoscaling.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->setEndpoint(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    const-string v1, "autoscaling"

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/autoscaling/request.handlers"

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

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    iget v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->timeOffset:I

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
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v1, v2}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    new-instance v0, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v3, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/CreateAutoScalingGroupRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/CreateAutoScalingGroupRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public createLaunchConfiguration(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public createOrUpdateTags(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/CreateOrUpdateTagsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/CreateOrUpdateTagsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateOrUpdateTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DeleteAutoScalingGroupRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteAutoScalingGroupRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteLaunchConfiguration(Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DeleteLaunchConfigurationRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteLaunchConfigurationRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteLaunchConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteNotificationConfiguration(Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DeleteNotificationConfigurationRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteNotificationConfigurationRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteNotificationConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deletePolicy(Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DeletePolicyRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DeletePolicyRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeletePolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteScheduledAction(Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DeleteScheduledActionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteScheduledActionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteScheduledActionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteTags(Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DeleteTagsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteTagsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public describeAdjustmentTypes()Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeAdjustmentTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAdjustmentTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;

    return-object v0
.end method

.method public describeAutoScalingGroups()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeAutoScalingGroups(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingGroups(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;

    return-object v0
.end method

.method public describeAutoScalingInstances()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeAutoScalingInstances(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingInstances(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;

    return-object v0
.end method

.method public describeAutoScalingNotificationTypes()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeAutoScalingNotificationTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingNotificationTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;

    return-object v0
.end method

.method public describeLaunchConfigurations()Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeLaunchConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLaunchConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;

    return-object v0
.end method

.method public describeMetricCollectionTypes()Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeMetricCollectionTypes(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeMetricCollectionTypes(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;

    return-object v0
.end method

.method public describeNotificationConfigurations()Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeNotificationConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeNotificationConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;

    return-object v0
.end method

.method public describePolicies()Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describePolicies(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;

    move-result-object v0

    return-object v0
.end method

.method public describePolicies(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;

    return-object v0
.end method

.method public describeScalingActivities()Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeScalingActivities(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeScalingActivities(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;

    return-object v0
.end method

.method public describeScalingProcessTypes()Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeScalingProcessTypes(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeScalingProcessTypes(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;

    return-object v0
.end method

.method public describeScheduledActions()Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeScheduledActions(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeScheduledActions(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;

    return-object v0
.end method

.method public describeTags()Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeTags(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeTags(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;

    return-object v0
.end method

.method public describeTerminationPolicyTypes()Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeTerminationPolicyTypes(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeTerminationPolicyTypes(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;

    return-object v0
.end method

.method public disableMetricsCollection(Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/DisableMetricsCollectionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/DisableMetricsCollectionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DisableMetricsCollectionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public enableMetricsCollection(Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/EnableMetricsCollectionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/EnableMetricsCollectionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/EnableMetricsCollectionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public executePolicy(Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/ExecutePolicyRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/ExecutePolicyRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/ExecutePolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    const-string v0, "autoscaling"

    return-object v0
.end method

.method public putNotificationConfiguration(Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/PutNotificationConfigurationRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/PutNotificationConfigurationRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/PutNotificationConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public putScalingPolicy(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;

    return-object v0
.end method

.method public putScheduledUpdateGroupAction(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/PutScheduledUpdateGroupActionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/PutScheduledUpdateGroupActionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScheduledUpdateGroupActionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public resumeProcesses(Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/ResumeProcessesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/ResumeProcessesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/ResumeProcessesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public setDesiredCapacity(Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/SetDesiredCapacityRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/SetDesiredCapacityRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/SetDesiredCapacityRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->setEndpoint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    return-void
.end method

.method public setInstanceHealth(Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/SetInstanceHealthRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/SetInstanceHealthRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/SetInstanceHealthRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public suspendProcesses(Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/SuspendProcessesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/SuspendProcessesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/SuspendProcessesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public terminateInstanceInAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;

    return-object v0
.end method

.method public updateAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/autoscaling/model/transform/UpdateAutoScalingGroupRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/transform/UpdateAutoScalingGroupRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/UpdateAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method
