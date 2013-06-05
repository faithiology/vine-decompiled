.class Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->describeAlarmsForMetricAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

.field final synthetic val$describeAlarmsForMetricRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;Lcom/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->val$describeAlarmsForMetricRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;

    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->val$describeAlarmsForMetricRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->describeAlarmsForMetric(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->val$describeAlarmsForMetricRequest:Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->val$asyncHandler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;->call()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;

    move-result-object v0

    return-object v0
.end method
