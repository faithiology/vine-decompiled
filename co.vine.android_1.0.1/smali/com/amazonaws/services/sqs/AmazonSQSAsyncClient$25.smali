.class Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->createQueueAsync(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Ljava/util/concurrent/Future;
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
        "Lcom/amazonaws/services/sqs/model/CreateQueueResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

.field final synthetic val$createQueueRequest:Lcom/amazonaws/services/sqs/model/CreateQueueRequest;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$25;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$25;->val$createQueueRequest:Lcom/amazonaws/services/sqs/model/CreateQueueRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazonaws/services/sqs/model/CreateQueueResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$25;->this$0:Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;

    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$25;->val$createQueueRequest:Lcom/amazonaws/services/sqs/model/CreateQueueRequest;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->createQueue(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Lcom/amazonaws/services/sqs/model/CreateQueueResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$25;->call()Lcom/amazonaws/services/sqs/model/CreateQueueResult;

    move-result-object v0

    return-object v0
.end method
