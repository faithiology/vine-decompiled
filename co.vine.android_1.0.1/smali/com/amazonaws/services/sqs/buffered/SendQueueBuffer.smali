.class public Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final changeMessageVisibilityLock:Ljava/lang/Object;

.field private final config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

.field private final deleteMessageLock:Ljava/lang/Object;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

.field private final inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

.field private final inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

.field private final openChangeMessageVisibilityBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

.field private final openDeleteMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

.field private final openSendMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

.field private final qUrl:Ljava/lang/String;

.field private final sendMessageLock:Ljava/lang/Object;

.field private final sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/util/concurrent/Executor;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sendMessageLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->deleteMessageLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibilityLock:Ljava/lang/Object;

    new-array v0, v1, [Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openSendMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

    new-array v0, v1, [Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openDeleteMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

    new-array v0, v1, [Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openChangeMessageVisibilityBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    iput-object p4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    return-object v0
.end method

.method private newOutboundBatchTask(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            "Result:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
            "<TR;TResult;>;"
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported request type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibilityLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openChangeMessageVisibilityBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->deleteMessageLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openDeleteMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sendMessageLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->deleteMessageLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibilityLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
.end method

.method public getConfig()Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    return-object v0
.end method

.method public sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sendMessageLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openSendMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    return-object v0
.end method

.method submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OBT:",
            "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
            "<TR;TResult;>;R:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[TOBT;TR;",
            "Ljava/util/concurrent/Semaphore;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<TR;TResult;>;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<TR;TResult;>;"
        }
    .end annotation

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0, p3, p5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->addRequest(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p3}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->newOutboundBatchTask(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;

    move-result-object v0

    invoke-virtual {p4}, Ljava/util/concurrent/Semaphore;->acquire()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    new-instance v1, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;

    invoke-direct {v1, p0, p4}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Ljava/util/concurrent/Semaphore;)V

    iput-object v1, v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->onCompleted:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;

    sget-object v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created new batch for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " free slots remain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0, p3, p5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->addRequest(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->executor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-nez v0, :cond_2

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to schedule request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for execution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Interrupted while waiting for lock."

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazonaws/AmazonClientException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0
.end method
