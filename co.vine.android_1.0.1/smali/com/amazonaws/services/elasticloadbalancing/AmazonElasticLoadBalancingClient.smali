.class public Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancing;


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

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ListenerNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ListenerNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SubnetNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SubnetNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidConfigurationRequestExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidConfigurationRequestExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/TooManyPoliciesExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/TooManyPoliciesExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CertificateNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CertificateNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSubnetExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSubnetExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSecurityGroupExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSecurityGroupExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicateListenerExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicateListenerExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/TooManyLoadBalancersExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/TooManyLoadBalancersExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyTypeNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyTypeNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSchemeExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSchemeExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidInstanceExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidInstanceExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicatePolicyNameExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicatePolicyNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicateLoadBalancerNameExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicateLoadBalancerNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "elasticloadbalancing.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->setEndpoint(Ljava/lang/String;)V

    new-instance v0, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/elasticloadbalancing/request.handlers"

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

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    iget v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->timeOffset:I

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
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v1, v2}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    new-instance v0, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v3, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applySecurityGroupsToLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;

    return-object v0
.end method

.method public attachLoadBalancerToSubnets(Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsResult;

    return-object v0
.end method

.method public configureHealthCheck(Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckResult;

    return-object v0
.end method

.method public createAppCookieStickinessPolicy(Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;

    return-object v0
.end method

.method public createLBCookieStickinessPolicy(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyResult;

    return-object v0
.end method

.method public createLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerResult;

    return-object v0
.end method

.method public createLoadBalancerListeners(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerListenersRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerListenersRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerListenersRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public createLoadBalancerPolicy(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyResult;

    return-object v0
.end method

.method public deleteLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteLoadBalancerListeners(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerListenersRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerListenersRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerListenersRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public deleteLoadBalancerPolicy(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;

    return-object v0
.end method

.method public deregisterInstancesFromLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerResult;

    return-object v0
.end method

.method public describeInstanceHealth(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthResult;

    return-object v0
.end method

.method public describeLoadBalancerPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->describeLoadBalancerPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLoadBalancerPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;

    return-object v0
.end method

.method public describeLoadBalancerPolicyTypes()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->describeLoadBalancerPolicyTypes(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLoadBalancerPolicyTypes(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;

    return-object v0
.end method

.method public describeLoadBalancers()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->describeLoadBalancers(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLoadBalancers(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;

    return-object v0
.end method

.method public detachLoadBalancerFromSubnets(Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;

    return-object v0
.end method

.method public disableAvailabilityZonesForLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerResult;

    return-object v0
.end method

.method public enableAvailabilityZonesForLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerResult;

    return-object v0
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    const-string v0, "elasticloadbalancing"

    return-object v0
.end method

.method public registerInstancesWithLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;

    return-object v0
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->setEndpoint(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadBalancerListenerSSLCertificate(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerListenerSSLCertificateRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerListenerSSLCertificateRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerListenerSSLCertificateRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    return-void
.end method

.method public setLoadBalancerPoliciesForBackendServer(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerResult;

    return-object v0
.end method

.method public setLoadBalancerPoliciesOfListener(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerRequestMarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerRequestMarshaller;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerResult;

    return-object v0
.end method
