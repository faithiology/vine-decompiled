.class public Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/simpledb/AmazonSimpleDB;


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

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/InvalidParameterValueExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/InvalidParameterValueExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainBytesExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainBytesExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/NoSuchDomainExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/NoSuchDomainExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainsExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainsExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/NumberSubmittedItemsExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/NumberSubmittedItemsExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/RequestTimeoutExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/RequestTimeoutExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/InvalidQueryExpressionExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/InvalidQueryExpressionExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/NumberSubmittedAttributesExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/NumberSubmittedAttributesExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/DuplicateItemNameExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/DuplicateItemNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainAttributesExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainAttributesExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/InvalidNumberPredicatesExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/InvalidNumberPredicatesExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/TooManyRequestedAttributesExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/TooManyRequestedAttributesExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/InvalidNextTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/InvalidNextTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/NumberItemAttributesExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/NumberItemAttributesExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/AttributeDoesNotExistExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/AttributeDoesNotExistExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/MissingParameterExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/MissingParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/InvalidNumberValueTestsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/InvalidNumberValueTestsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sdb.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->setEndpoint(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/auth/QueryStringSigner;

    invoke-direct {v0}, Lcom/amazonaws/auth/QueryStringSigner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/simpledb/request.handlers"

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

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    iget v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->timeOffset:I

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
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    invoke-virtual {v1, v2}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    new-instance v0, Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v3, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public batchDeleteAttributes(Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/BatchDeleteAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/BatchDeleteAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/BatchDeleteAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public batchPutAttributes(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public createDomain(Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/CreateDomainRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/CreateDomainRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/CreateDomainRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteAttributes(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteDomain(Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/DeleteDomainRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/DeleteDomainRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/DeleteDomainRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public domainMetadata(Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;

    return-object v0
.end method

.method public getAttributes(Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;)Lcom/amazonaws/services/simpledb/model/GetAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/GetAttributesResult;

    return-object v0
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/simpledb/SimpleDBResponseMetadata;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amazonaws/services/simpledb/SimpleDBResponseMetadata;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/simpledb/SimpleDBResponseMetadata;-><init>(Lcom/amazonaws/ResponseMetadata;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    const-string v0, "sdb"

    return-object v0
.end method

.method public listDomains()Lcom/amazonaws/services/simpledb/model/ListDomainsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->listDomains(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)Lcom/amazonaws/services/simpledb/model/ListDomainsResult;

    move-result-object v0

    return-object v0
.end method

.method public listDomains(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)Lcom/amazonaws/services/simpledb/model/ListDomainsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/ListDomainsResult;

    return-object v0
.end method

.method public putAttributes(Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/PutAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/PutAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/PutAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public select(Lcom/amazonaws/services/simpledb/model/SelectRequest;)Lcom/amazonaws/services/simpledb/model/SelectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/simpledb/model/transform/SelectRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/transform/SelectRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/simpledb/model/transform/SelectRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/SelectRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/SelectResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/SelectResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/simpledb/model/SelectResult;

    return-object v0
.end method
