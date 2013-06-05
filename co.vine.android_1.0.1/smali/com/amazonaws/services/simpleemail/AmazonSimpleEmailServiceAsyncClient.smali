.class public Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;
.super Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;

# interfaces
.implements Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object p2, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p3, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public deleteIdentityAsync(Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$1;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteIdentityAsync(Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;",
            "Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$2;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteVerifiedEmailAddressAsync(Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$33;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$33;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteVerifiedEmailAddressAsync(Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$34;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIdentityDkimAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$13;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityDkimAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$14;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityNotificationAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$9;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityNotificationAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$10;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityVerificationAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$21;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityVerificationAttributesAsync(Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$22;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getSendQuotaAsync(Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$25;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$25;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getSendQuotaAsync(Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;",
            "Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$26;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getSendStatisticsAsync(Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$5;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getSendStatisticsAsync(Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;",
            "Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$6;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listIdentitiesAsync(Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$19;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listIdentitiesAsync(Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;",
            "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$20;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listVerifiedEmailAddressesAsync(Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$3;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listVerifiedEmailAddressesAsync(Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;",
            "Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$4;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendEmailAsync(Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$31;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$31;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendEmailAsync(Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$32;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendRawEmailAsync(Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$17;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendRawEmailAsync(Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$18;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setIdentityDkimEnabledAsync(Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$23;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$23;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setIdentityDkimEnabledAsync(Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$24;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setIdentityFeedbackForwardingEnabledAsync(Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$27;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$27;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setIdentityFeedbackForwardingEnabledAsync(Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$28;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setIdentityNotificationTopicAsync(Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$35;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$35;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setIdentityNotificationTopicAsync(Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$36;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    invoke-super {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->shutdown()V

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public verifyDomainDkimAsync(Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$11;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public verifyDomainDkimAsync(Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$12;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public verifyDomainIdentityAsync(Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$29;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$29;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public verifyDomainIdentityAsync(Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$30;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public verifyEmailAddressAsync(Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$15;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public verifyEmailAddressAsync(Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$16;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public verifyEmailIdentityAsync(Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$7;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public verifyEmailIdentityAsync(Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient$8;-><init>(Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceAsyncClient;Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
