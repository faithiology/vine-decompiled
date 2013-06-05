.class public Lcom/amazonaws/services/sns/AmazonSNSClient;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/sns/AmazonSNS;


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

.field private signer:Lcom/amazonaws/auth/QueryStringSigner;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/AuthorizationErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/AuthorizationErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/TopicLimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/TopicLimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/NotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/NotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/InternalErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/SubscriptionLimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/SubscriptionLimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/InvalidParameterExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sns.us-east-1.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->setEndpoint(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/auth/QueryStringSigner;

    invoke-direct {v0}, Lcom/amazonaws/auth/QueryStringSigner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/sns/request.handlers"

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

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    iget v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->timeOffset:I

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
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    invoke-virtual {v1, v2}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    new-instance v0, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v3, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPermission(Lcom/amazonaws/services/sns/model/AddPermissionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/AddPermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public confirmSubscription(Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/ConfirmSubscriptionResult;

    return-object v0
.end method

.method public createTopic(Lcom/amazonaws/services/sns/model/CreateTopicRequest;)Lcom/amazonaws/services/sns/model/CreateTopicResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/CreateTopicRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/CreateTopicResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/CreateTopicResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/CreateTopicResult;

    return-object v0
.end method

.method public deleteTopic(Lcom/amazonaws/services/sns/model/DeleteTopicRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/DeleteTopicRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    const-string v0, "sns"

    return-object v0
.end method

.method public getSubscriptionAttributes(Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;

    return-object v0
.end method

.method public getTopicAttributes(Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;

    return-object v0
.end method

.method public listSubscriptions()Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->listSubscriptions(Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptions(Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;

    return-object v0
.end method

.method public listSubscriptionsByTopic(Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;

    return-object v0
.end method

.method public listTopics()Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/ListTopicsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->listTopics(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazonaws/services/sns/model/ListTopicsResult;

    move-result-object v0

    return-object v0
.end method

.method public listTopics(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListTopicsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListTopicsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/ListTopicsResult;

    return-object v0
.end method

.method public publish(Lcom/amazonaws/services/sns/model/PublishRequest;)Lcom/amazonaws/services/sns/model/PublishResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/PublishRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/PublishRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/PublishRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/PublishRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/PublishResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/PublishResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/PublishResult;

    return-object v0
.end method

.method public removePermission(Lcom/amazonaws/services/sns/model/RemovePermissionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/RemovePermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public setSubscriptionAttributes(Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public setTopicAttributes(Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public subscribe(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazonaws/services/sns/model/SubscribeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sns/model/transform/SubscribeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/SubscribeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sns/model/SubscribeResult;

    return-object v0
.end method

.method public unsubscribe(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method
