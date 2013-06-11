.class public Lcom/amazonaws/services/ec2/AmazonEC2Client;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/ec2/AmazonEC2;


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

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->exceptionUnmarshallers:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ec2.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->setEndpoint(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/auth/QueryStringSigner;

    invoke-direct {v0}, Lcom/amazonaws/auth/QueryStringSigner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/ec2/request.handlers"

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

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    iget v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->timeOffset:I

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
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    invoke-virtual {v1, v2}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    new-instance v0, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v3, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activateLicense(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ActivateLicenseRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ActivateLicenseRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ActivateLicenseRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public allocateAddress()Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->allocateAddress(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;

    move-result-object v0

    return-object v0
.end method

.method public allocateAddress(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;

    return-object v0
.end method

.method public associateAddress(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;)Lcom/amazonaws/services/ec2/model/AssociateAddressResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/AssociateAddressResult;

    return-object v0
.end method

.method public attachVolume(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Lcom/amazonaws/services/ec2/model/AttachVolumeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/AttachVolumeResult;

    return-object v0
.end method

.method public authorizeSecurityGroupIngress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->authorizeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)V

    return-void
.end method

.method public authorizeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/AuthorizeSecurityGroupIngressRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/AuthorizeSecurityGroupIngressRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/AuthorizeSecurityGroupIngressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public bundleInstance(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Lcom/amazonaws/services/ec2/model/BundleInstanceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/BundleInstanceResult;

    return-object v0
.end method

.method public cancelBundleTask(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;

    return-object v0
.end method

.method public cancelConversionTask(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CancelConversionTaskRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CancelConversionTaskRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelConversionTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public cancelExportTask(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CancelExportTaskRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CancelExportTaskRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelExportTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public cancelReservedInstancesListing(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;)Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;

    return-object v0
.end method

.method public cancelSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;

    return-object v0
.end method

.method public confirmProductInstance(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;)Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;

    return-object v0
.end method

.method public copyImage(Lcom/amazonaws/services/ec2/model/CopyImageRequest;)Lcom/amazonaws/services/ec2/model/CopyImageResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CopyImageRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CopyImageRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CopyImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CopyImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CopyImageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CopyImageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CopyImageResult;

    return-object v0
.end method

.method public copySnapshot(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;)Lcom/amazonaws/services/ec2/model/CopySnapshotResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CopySnapshotResult;

    return-object v0
.end method

.method public createImage(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Lcom/amazonaws/services/ec2/model/CreateImageResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateImageRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateImageRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateImageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateImageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateImageResult;

    return-object v0
.end method

.method public createInstanceExportTask(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;

    return-object v0
.end method

.method public createKeyPair(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;)Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;

    return-object v0
.end method

.method public createPlacementGroup(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreatePlacementGroupRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreatePlacementGroupRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreatePlacementGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public createReservedInstancesListing(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;

    return-object v0
.end method

.method public createSecurityGroup(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;)Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;

    return-object v0
.end method

.method public createSnapshot(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;)Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;

    return-object v0
.end method

.method public createSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;

    return-object v0
.end method

.method public createTags(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateTagsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateTagsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public createVolume(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;)Lcom/amazonaws/services/ec2/model/CreateVolumeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateVolumeResult;

    return-object v0
.end method

.method public deactivateLicense(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeactivateLicenseRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeactivateLicenseRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeactivateLicenseRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteKeyPair(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeleteKeyPairRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeleteKeyPairRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteKeyPairRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deletePlacementGroup(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeletePlacementGroupRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeletePlacementGroupRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeletePlacementGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteSecurityGroup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->deleteSecurityGroup(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)V

    return-void
.end method

.method public deleteSecurityGroup(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeleteSecurityGroupRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeleteSecurityGroupRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSecurityGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteSnapshot(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeleteSnapshotRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeleteSnapshotRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSnapshotRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteSpotDatafeedSubscription()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->deleteSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)V

    return-void
.end method

.method public deleteSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeleteSpotDatafeedSubscriptionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeleteSpotDatafeedSubscriptionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSpotDatafeedSubscriptionRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteTags(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeleteTagsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeleteTagsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteVolume(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeleteVolumeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeleteVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deregisterImage(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DeregisterImageRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DeregisterImageRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeregisterImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public describeAccountAttributes()Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeAccountAttributes(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAccountAttributes(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;

    return-object v0
.end method

.method public describeAddresses()Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeAddresses(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAddresses(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;

    return-object v0
.end method

.method public describeAvailabilityZones()Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeAvailabilityZones(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAvailabilityZones(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;

    return-object v0
.end method

.method public describeBundleTasks()Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeBundleTasks(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;

    move-result-object v0

    return-object v0
.end method

.method public describeBundleTasks(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;

    return-object v0
.end method

.method public describeConversionTasks()Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeConversionTasks(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;

    move-result-object v0

    return-object v0
.end method

.method public describeConversionTasks(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;

    return-object v0
.end method

.method public describeExportTasks()Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeExportTasks(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;

    move-result-object v0

    return-object v0
.end method

.method public describeExportTasks(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;

    return-object v0
.end method

.method public describeImageAttribute(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;

    return-object v0
.end method

.method public describeImages()Lcom/amazonaws/services/ec2/model/DescribeImagesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeImages(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/services/ec2/model/DescribeImagesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeImages(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/services/ec2/model/DescribeImagesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeImagesResult;

    return-object v0
.end method

.method public describeInstanceAttribute(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;

    return-object v0
.end method

.method public describeInstanceStatus()Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeInstanceStatus(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;

    move-result-object v0

    return-object v0
.end method

.method public describeInstanceStatus(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;

    return-object v0
.end method

.method public describeInstances()Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeInstances(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeInstances(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    return-object v0
.end method

.method public describeKeyPairs()Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeKeyPairs(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeKeyPairs(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;

    return-object v0
.end method

.method public describeLicenses()Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeLicenses(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLicenses(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;

    return-object v0
.end method

.method public describePlacementGroups()Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describePlacementGroups(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;

    move-result-object v0

    return-object v0
.end method

.method public describePlacementGroups(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;

    return-object v0
.end method

.method public describeRegions()Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeRegions(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeRegions(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;

    return-object v0
.end method

.method public describeReservedInstances()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeReservedInstances(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstances(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;

    return-object v0
.end method

.method public describeReservedInstancesListings()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeReservedInstancesListings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesListings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;

    return-object v0
.end method

.method public describeReservedInstancesOfferings()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeReservedInstancesOfferings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesOfferings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;

    return-object v0
.end method

.method public describeSecurityGroups()Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSecurityGroups(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSecurityGroups(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;

    return-object v0
.end method

.method public describeSnapshotAttribute(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;

    return-object v0
.end method

.method public describeSnapshots()Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSnapshots(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSnapshots(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;

    return-object v0
.end method

.method public describeSpotDatafeedSubscription()Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;

    return-object v0
.end method

.method public describeSpotInstanceRequests()Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;

    return-object v0
.end method

.method public describeSpotPriceHistory()Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSpotPriceHistory(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotPriceHistory(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;

    return-object v0
.end method

.method public describeSubnets()Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSubnets(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSubnets(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;

    return-object v0
.end method

.method public describeTags()Lcom/amazonaws/services/ec2/model/DescribeTagsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeTags(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/services/ec2/model/DescribeTagsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeTags(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/services/ec2/model/DescribeTagsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeTagsResult;

    return-object v0
.end method

.method public describeVolumeAttribute(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;

    return-object v0
.end method

.method public describeVolumeStatus()Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeVolumeStatus(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumeStatus(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;

    return-object v0
.end method

.method public describeVolumes()Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeVolumes(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumes(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;

    return-object v0
.end method

.method public describeVpcs()Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeVpcs(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeVpcs(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;

    return-object v0
.end method

.method public detachVolume(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;)Lcom/amazonaws/services/ec2/model/DetachVolumeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;

    return-object v0
.end method

.method public disassociateAddress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->disassociateAddress(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)V

    return-void
.end method

.method public disassociateAddress(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/DisassociateAddressRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/DisassociateAddressRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/DisassociateAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public enableVolumeIO(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/EnableVolumeIORequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/EnableVolumeIORequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/EnableVolumeIORequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getConsoleOutput(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;)Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;

    return-object v0
.end method

.method public getPasswordData(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;)Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    const-string v0, "ec2"

    return-object v0
.end method

.method public importInstance(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/services/ec2/model/ImportInstanceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportInstanceResult;

    return-object v0
.end method

.method public importKeyPair(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;)Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;

    return-object v0
.end method

.method public importVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->importVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/services/ec2/model/ImportVolumeResult;

    move-result-object v0

    return-object v0
.end method

.method public importVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/services/ec2/model/ImportVolumeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportVolumeResult;

    return-object v0
.end method

.method public modifyImageAttribute(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ModifyImageAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ModifyImageAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifyImageAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public modifyInstanceAttribute(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ModifyInstanceAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ModifyInstanceAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifyInstanceAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public modifySnapshotAttribute(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ModifySnapshotAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ModifySnapshotAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifySnapshotAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public modifyVolumeAttribute(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ModifyVolumeAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ModifyVolumeAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifyVolumeAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public monitorInstances(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;)Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;

    return-object v0
.end method

.method public purchaseReservedInstancesOffering(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;

    return-object v0
.end method

.method public rebootInstances(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/RebootInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/RebootInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/RebootInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public registerImage()Lcom/amazonaws/services/ec2/model/RegisterImageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->registerImage(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/services/ec2/model/RegisterImageResult;

    move-result-object v0

    return-object v0
.end method

.method public registerImage(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/services/ec2/model/RegisterImageResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/RegisterImageRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/RegisterImageRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/RegisterImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RegisterImageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RegisterImageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/RegisterImageResult;

    return-object v0
.end method

.method public releaseAddress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->releaseAddress(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)V

    return-void
.end method

.method public releaseAddress(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ReleaseAddressRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ReleaseAddressRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ReleaseAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public reportInstanceStatus()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->reportInstanceStatus(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)V

    return-void
.end method

.method public reportInstanceStatus(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public requestSpotInstances(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;

    return-object v0
.end method

.method public resetImageAttribute(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ResetImageAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ResetImageAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ResetImageAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public resetInstanceAttribute(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ResetInstanceAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ResetInstanceAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ResetInstanceAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public resetSnapshotAttribute(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/ResetSnapshotAttributeRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/ResetSnapshotAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/ResetSnapshotAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public revokeSecurityGroupIngress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->revokeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)V

    return-void
.end method

.method public revokeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/RevokeSecurityGroupIngressRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/RevokeSecurityGroupIngressRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/RevokeSecurityGroupIngressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public runInstances(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/services/ec2/model/RunInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RunInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RunInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    return-object v0
.end method

.method public startInstances(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Lcom/amazonaws/services/ec2/model/StartInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/StartInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/StartInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/StartInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/StartInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/StartInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/StartInstancesResult;

    return-object v0
.end method

.method public stopInstances(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;)Lcom/amazonaws/services/ec2/model/StopInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/StopInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/StopInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/StopInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/StopInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/StopInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/StopInstancesResult;

    return-object v0
.end method

.method public terminateInstances(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;)Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;

    return-object v0
.end method

.method public unmonitorInstances(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;

    return-object v0
.end method
