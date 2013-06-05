.class Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->putMetricAlarmAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)Ljava/util/concurrent/Future;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

.field final synthetic val$putMetricAlarmRequest:Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;->val$putMetricAlarmRequest:Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;->this$0:Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;->val$putMetricAlarmRequest:Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->putMetricAlarm(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)V

    const/4 v0, 0x0

    return-object v0
.end method
