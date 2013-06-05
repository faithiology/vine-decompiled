.class public Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;
.super Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;

# interfaces
.implements Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object p2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public deleteAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$19;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$20;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmHistoryAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmHistoryAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$11;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmsForMetricAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$13;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmsForMetricAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public disableAlarmActionsAsync(Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$9;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public disableAlarmActionsAsync(Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$10;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public enableAlarmActionsAsync(Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$17;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public enableAlarmActionsAsync(Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$18;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMetricStatisticsAsync(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$7;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getMetricStatisticsAsync(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$8;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listMetricsAsync(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$5;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listMetricsAsync(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$6;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putMetricAlarmAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putMetricAlarmAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$2;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putMetricDataAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$3;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putMetricDataAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$4;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setAlarmStateAsync(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setAlarmStateAsync(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;",
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

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$22;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    invoke-super {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->shutdown()V

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
