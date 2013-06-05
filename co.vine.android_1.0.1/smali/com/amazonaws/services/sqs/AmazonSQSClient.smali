.class public Lcom/amazonaws/services/sqs/AmazonSQSClient;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/sqs/AmazonSQS;


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

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/QueueDeletedRecentlyExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/QueueDeletedRecentlyExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/QueueNameExistsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/QueueNameExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/EmptyBatchRequestExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/EmptyBatchRequestExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/InvalidMessageContentsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/InvalidMessageContentsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/InvalidBatchEntryIdExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/InvalidBatchEntryIdExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/OverLimitExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/OverLimitExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/TooManyEntriesInBatchRequestExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/TooManyEntriesInBatchRequestExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/InvalidIdFormatExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/InvalidIdFormatExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/QueueDoesNotExistExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/QueueDoesNotExistExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/InvalidAttributeNameExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/InvalidAttributeNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/BatchRequestTooLongExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/BatchRequestTooLongExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ReceiptHandleIsInvalidExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ReceiptHandleIsInvalidExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/MessageNotInflightExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/MessageNotInflightExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/BatchEntryIdsNotDistinctExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/BatchEntryIdsNotDistinctExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sqs.us-east-1.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->setEndpoint(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/sqs/request.handlers"

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

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    iget v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->timeOffset:I

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
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v1, v2}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    new-instance v0, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPermission(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/AddPermissionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/AddPermissionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/AddPermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public changeMessageVisibilityBatch(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;

    return-object v0
.end method

.method public createQueue(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Lcom/amazonaws/services/sqs/model/CreateQueueResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/CreateQueueRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/CreateQueueRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/CreateQueueRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/CreateQueueResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/CreateQueueResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/CreateQueueResult;

    return-object v0
.end method

.method public deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteMessageBatch(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;

    return-object v0
.end method

.method public deleteQueue(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/DeleteQueueRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/DeleteQueueRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/DeleteQueueRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;

    return-object v0
.end method

.method public getQueueUrl(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    const-string v0, "sqs"

    return-object v0
.end method

.method public listQueues()Lcom/amazonaws/services/sqs/model/ListQueuesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/ListQueuesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/ListQueuesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->listQueues(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Lcom/amazonaws/services/sqs/model/ListQueuesResult;

    move-result-object v0

    return-object v0
.end method

.method public listQueues(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Lcom/amazonaws/services/sqs/model/ListQueuesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/ListQueuesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/ListQueuesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/ListQueuesRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ListQueuesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ListQueuesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/ListQueuesResult;

    return-object v0
.end method

.method public receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;

    return-object v0
.end method

.method public removePermission(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/RemovePermissionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/RemovePermissionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/RemovePermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/services/sqs/model/SendMessageResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/SendMessageRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/SendMessageRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/SendMessageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageResult;

    return-object v0
.end method

.method public sendMessageBatch(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    return-object v0
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->setEndpoint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    return-void
.end method

.method public setQueueAttributes(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/sqs/model/transform/SetQueueAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/transform/SetQueueAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/model/transform/SetQueueAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method
