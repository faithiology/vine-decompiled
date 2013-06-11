.class Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/sqs/buffered/QueueBuffer$1;,
        Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;
    }
.end annotation


# static fields
.field static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

.field private final realSqs:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

.field private final receiveBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

.field private final sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBuffer$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;Lcom/amazonaws/services/sqs/AmazonSQSAsync;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->realSqs:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    sget-object v1, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p3, v1, p1, p2}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;-><init>(Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/util/concurrent/Executor;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    sget-object v1, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p3, v1, p1, p2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;-><init>(Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/util/concurrent/Executor;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    return-void
.end method

.method private waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TResultType;>;)TResultType;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Thread interrupted while waiting for execution result"

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/AmazonClientException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Lcom/amazonaws/AmazonClientException;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/amazonaws/AmazonClientException;

    throw v0

    :cond_0
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Caught an exception while waiting for request to complete..."

    invoke-direct {v0, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonClientException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    invoke-direct {v0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;-><init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-virtual {v1, p1, v0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V

    return-object v0
.end method

.method public changeMessageVisibilitySync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void
.end method

.method public deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    invoke-direct {v0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;-><init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-virtual {v1, p1, v0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V

    return-object v0
.end method

.method public deleteMessageSync(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void
.end method

.method public receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightReceiveBatches()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxDoneReceiveBatches()I

    move-result v3

    if-lez v3, :cond_3

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    invoke-direct {v0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;-><init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-virtual {v1, p1, v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->receiveMessageAsync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V

    :goto_2
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->realSqs:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->receiveMessageAsync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_2
.end method

.method public receiveMessageSync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;

    return-object v0
.end method

.method public sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    invoke-direct {v0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;-><init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-virtual {v1, p1, v0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V

    return-object v0
.end method

.method public sendMessageSync(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/services/sqs/model/SendMessageResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageResult;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutdown()V

    return-void
.end method
