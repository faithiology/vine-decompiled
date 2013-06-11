.class public Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/dynamodb/AmazonDynamoDB;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field protected exceptionUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lcom/amazonaws/util/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private signer:Lcom/amazonaws/auth/AWS4Signer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDB;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/InternalServerErrorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/InternalServerErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/ProvisionedThroughputExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/ProvisionedThroughputExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/ResourceInUseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/ResourceInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/ConditionalCheckFailedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/ConditionalCheckFailedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "dynamodb.us-east-1.amazonaws.com/"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->setEndpoint(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    const-string v1, "dynamodb"

    invoke-virtual {v0, v1}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/dynamodb/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0, v1}, Lcom/amazonaws/ClientConfiguration;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Overriding default max error retry value to: 10"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/amazonaws/ClientConfiguration;->setMaxErrorRetry(I)V

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->setConfiguration(Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
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
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TX;>;>;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    iget v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->timeOffset:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {p3, v2}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {p3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    sget-object v0, Lcom/amazonaws/internal/DynamoDBBackoffStrategy;->DEFAULT:Lcom/amazonaws/internal/CustomBackoffStrategy;

    invoke-virtual {p3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCustomBackoffStrategy(Lcom/amazonaws/internal/CustomBackoffStrategy;)V

    new-instance v0, Lcom/amazonaws/http/JsonErrorResponseHandler;

    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v2, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazonaws/util/AWSRequestMetrics;->log()V

    return-object v0
.end method


# virtual methods
.method public batchGetItem(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;

    return-object v0
.end method

.method public batchWriteItem(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;

    return-object v0
.end method

.method public createTable(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)Lcom/amazonaws/services/dynamodb/model/CreateTableResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/CreateTableResult;

    return-object v0
.end method

.method public deleteItem(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;

    return-object v0
.end method

.method public deleteTable(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;

    return-object v0
.end method

.method public describeTable(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;)Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;

    return-object v0
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)Lcom/amazonaws/services/dynamodb/model/GetItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/GetItemRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/GetItemRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/GetItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/GetItemResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/GetItemResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/GetItemResult;

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    const-string v0, "dynamodb"

    return-object v0
.end method

.method public listTables()Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->listTables(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodb/model/ListTablesResult;

    move-result-object v0

    return-object v0
.end method

.method public listTables(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;

    return-object v0
.end method

.method public putItem(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)Lcom/amazonaws/services/dynamodb/model/PutItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/PutItemRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/PutItemRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/PutItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/PutItemResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/PutItemResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/PutItemResult;

    return-object v0
.end method

.method public query(Lcom/amazonaws/services/dynamodb/model/QueryRequest;)Lcom/amazonaws/services/dynamodb/model/QueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/QueryRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/QueryRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/QueryRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/QueryRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/QueryResult;

    return-object v0
.end method

.method public scan(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/services/dynamodb/model/ScanResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/ScanResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/ScanResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ScanResult;

    return-object v0
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->setEndpoint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    return-void
.end method

.method public updateItem(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;

    return-object v0
.end method

.method public updateTable(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v2}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableRequestMarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableRequestMarshaller;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    new-instance v1, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;-><init>()V

    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;

    return-object v0
.end method
