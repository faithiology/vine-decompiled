.class public Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;
.super Lcom/amazonaws/services/ec2/AmazonEC2Client;

# interfaces
.implements Lcom/amazonaws/services/ec2/AmazonEC2Async;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p3, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object p2, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p3, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public activateLicenseAsync(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$55;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$55;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public activateLicenseAsync(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$56;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$56;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public allocateAddressAsync(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$171;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$171;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public allocateAddressAsync(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AllocateAddressResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$172;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$172;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public associateAddressAsync(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$67;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$67;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public associateAddressAsync(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AssociateAddressResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$68;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$68;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public attachVolumeAsync(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$49;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$49;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public attachVolumeAsync(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/AttachVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$50;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$50;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public authorizeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$115;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$115;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public authorizeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$116;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$116;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bundleInstanceAsync(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$165;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$165;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bundleInstanceAsync(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/BundleInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$166;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$166;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelBundleTaskAsync(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$131;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$131;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelBundleTaskAsync(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$132;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$132;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelConversionTaskAsync(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$65;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$65;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelConversionTaskAsync(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$66;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$66;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelExportTaskAsync(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$119;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$119;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelExportTaskAsync(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$120;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$120;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$111;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$111;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$112;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$112;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$133;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$133;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public cancelSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$134;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$134;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public confirmProductInstanceAsync(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$151;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$151;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public confirmProductInstanceAsync(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$152;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$152;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public copyImageAsync(Lcom/amazonaws/services/ec2/model/CopyImageRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CopyImageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopyImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$121;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$121;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CopyImageRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public copyImageAsync(Lcom/amazonaws/services/ec2/model/CopyImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CopyImageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopyImageRequest;",
            "Lcom/amazonaws/services/ec2/model/CopyImageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopyImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$122;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$122;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CopyImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public copySnapshotAsync(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$169;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$169;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public copySnapshotAsync(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CopySnapshotResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$170;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$170;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createImageAsync(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$13;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateImageRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createImageAsync(Lcom/amazonaws/services/ec2/model/CreateImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateImageRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateImageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$14;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createInstanceExportTaskAsync(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$17;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createInstanceExportTaskAsync(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$18;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createKeyPairAsync(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$177;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$177;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createKeyPairAsync(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$178;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$178;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createPlacementGroupAsync(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$163;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$163;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createPlacementGroupAsync(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$164;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$164;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$31;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$31;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createReservedInstancesListingAsync(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$32;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createSecurityGroupAsync(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$25;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$25;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createSecurityGroupAsync(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$26;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createSnapshotAsync(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$59;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$59;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createSnapshotAsync(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$60;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$60;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$91;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$91;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$92;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$92;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createTagsAsync(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateTagsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$125;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$125;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateTagsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createTagsAsync(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateTagsRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$126;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$126;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createVolumeAsync(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$153;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$153;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createVolumeAsync(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$154;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$154;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deactivateLicenseAsync(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$69;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$69;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deactivateLicenseAsync(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$70;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$70;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteKeyPairAsync(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$9;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteKeyPairAsync(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$10;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deletePlacementGroupAsync(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$167;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$167;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deletePlacementGroupAsync(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$168;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$168;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteSecurityGroupAsync(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$15;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteSecurityGroupAsync(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$16;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteSnapshotAsync(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$159;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$159;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteSnapshotAsync(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$160;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$160;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$141;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$141;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$142;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$142;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteTagsAsync(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$43;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$43;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteTagsAsync(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$44;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$44;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteVolumeAsync(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$61;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$61;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteVolumeAsync(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$62;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deregisterImageAsync(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$39;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$39;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deregisterImageAsync(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$40;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$40;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAccountAttributesAsync(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$45;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$45;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAccountAttributesAsync(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$46;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$46;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAddressesAsync(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$145;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$145;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAddressesAsync(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$146;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$146;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAvailabilityZonesAsync(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$5;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAvailabilityZonesAsync(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$6;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeBundleTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$81;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$81;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeBundleTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$82;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$82;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeConversionTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$93;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$93;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeConversionTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$94;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$94;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeExportTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$71;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$71;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeExportTasksAsync(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$72;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$72;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeImageAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$147;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$147;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeImageAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$148;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$148;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeImagesAsync(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$107;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$107;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeImagesAsync(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$108;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$108;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$95;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$95;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$96;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$96;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeInstanceStatusAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$155;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$155;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeInstanceStatusAsync(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$156;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$156;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$103;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$103;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$104;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeKeyPairsAsync(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$149;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$149;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeKeyPairsAsync(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$150;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$150;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeLicensesAsync(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$51;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$51;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeLicensesAsync(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$52;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$52;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describePlacementGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$101;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$101;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describePlacementGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$102;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$102;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeRegionsAsync(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$29;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$29;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeRegionsAsync(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$30;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$3;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$4;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesListingsAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$75;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$75;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesListingsAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$76;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$76;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesOfferingsAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$157;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$157;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesOfferingsAsync(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$158;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$158;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSecurityGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$37;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$37;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSecurityGroupsAsync(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$38;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$38;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$143;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$143;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$144;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$144;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSnapshotsAsync(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$179;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$179;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSnapshotsAsync(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$180;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$180;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$41;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$41;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotDatafeedSubscriptionAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$42;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$117;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$117;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotInstanceRequestsAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$118;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$118;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotPriceHistoryAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$27;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$27;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotPriceHistoryAsync(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$28;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSubnetsAsync(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$97;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$97;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeSubnetsAsync(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$98;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$98;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeTagsAsync(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$129;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$129;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeTagsAsync(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$130;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$130;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$127;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$127;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$128;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$128;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumeStatusAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$53;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$53;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumeStatusAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$54;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$54;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumesAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$73;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$73;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumesAsync(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$74;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$74;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeVpcsAsync(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$63;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$63;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeVpcsAsync(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$64;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$64;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public detachVolumeAsync(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$7;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public detachVolumeAsync(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/DetachVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$8;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public disassociateAddressAsync(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$161;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$161;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public disassociateAddressAsync(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$162;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$162;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public enableVolumeIOAsync(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$47;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$47;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public enableVolumeIOAsync(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$48;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$48;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getConsoleOutputAsync(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$87;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$87;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getConsoleOutputAsync(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$88;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$88;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getPasswordDataAsync(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$19;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordDataAsync(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$20;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public importInstanceAsync(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$83;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$83;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public importInstanceAsync(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$84;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$84;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public importKeyPairAsync(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$23;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$23;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public importKeyPairAsync(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$24;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public importVolumeAsync(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$35;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$35;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public importVolumeAsync(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportVolumeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$36;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$36;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public modifyImageAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$89;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$89;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public modifyImageAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$90;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$90;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public modifyInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$113;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$113;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public modifyInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$114;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$114;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public modifySnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$137;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$137;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public modifySnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$138;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$138;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public modifyVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$105;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$105;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public modifyVolumeAttributeAsync(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$106;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$106;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public monitorInstancesAsync(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$79;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$79;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public monitorInstancesAsync(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$80;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$80;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public purchaseReservedInstancesOfferingAsync(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$135;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$135;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public purchaseReservedInstancesOfferingAsync(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$136;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public rebootInstancesAsync(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$1;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public rebootInstancesAsync(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$2;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public registerImageAsync(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RegisterImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$181;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$181;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public registerImageAsync(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;",
            "Lcom/amazonaws/services/ec2/model/RegisterImageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RegisterImageResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$182;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$182;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RegisterImageRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public releaseAddressAsync(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$173;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$173;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public releaseAddressAsync(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$174;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$174;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public reportInstanceStatusAsync(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$77;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$77;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public reportInstanceStatusAsync(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$78;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$78;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public requestSpotInstancesAsync(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$123;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$123;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public requestSpotInstancesAsync(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$124;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$124;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public resetImageAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$57;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$57;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public resetImageAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$58;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$58;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public resetInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$175;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$175;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public resetInstanceAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$176;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$176;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public resetSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$33;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$33;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public resetSnapshotAttributeAsync(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$34;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public revokeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$85;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$85;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public revokeSecurityGroupIngressAsync(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$86;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$86;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public runInstancesAsync(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RunInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$99;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$99;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public runInstancesAsync(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/RunInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/RunInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$100;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$100;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/RunInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    invoke-super {p0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->shutdown()V

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public startInstancesAsync(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/StartInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$109;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$109;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public startInstancesAsync(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/StartInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/StartInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/StartInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$110;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$110;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/StartInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public stopInstancesAsync(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StopInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/StopInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$21;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/StopInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public stopInstancesAsync(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/StopInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/StopInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/StopInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/StopInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$22;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/StopInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public terminateInstancesAsync(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$139;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$139;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public terminateInstancesAsync(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$140;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$140;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public unmonitorInstancesAsync(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$11;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public unmonitorInstancesAsync(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient$12;-><init>(Lcom/amazonaws/services/ec2/AmazonEC2AsyncClient;Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
