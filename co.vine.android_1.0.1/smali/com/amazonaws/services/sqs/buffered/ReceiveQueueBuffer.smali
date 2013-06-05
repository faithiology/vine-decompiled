.class public Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private bufferCounter:J

.field private final config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

.field private final executor:Ljava/util/concurrent/Executor;

.field private finishedTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;",
            ">;"
        }
    .end annotation
.end field

.field private final futures:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile inflightReceiveMessageBatches:I

.field private final qUrl:Ljava/lang/String;

.field volatile shutDown:Z

.field private final sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

.field private final taskSpawnSyncPoint:Ljava/lang/Object;

.field private volatile visibilityTimeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/util/concurrent/Executor;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->bufferCounter:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->taskSpawnSyncPoint:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutDown:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    iput-object p3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->executor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    iput-object p4, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/commons/logging/Log;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)J
    .locals 2

    iget-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    return-object v0
.end method

.method private fillFuture(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v5, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;

    invoke-direct {v5}, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;-><init>()V

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v5, v6}, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;->setMessages(Ljava/util/Collection;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->getException()Ljava/lang/Exception;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;->getRequestedSize()I

    move-result v7

    if-ge v1, v7, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->removeMessage()Lcom/amazonaws/services/sqs/model/Message;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_3
    invoke-virtual {v5, v6}, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;->setMessages(Ljava/util/Collection;)V

    move-object v0, v3

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;->setFailure(Ljava/lang/Exception;)V

    :goto_2
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p1, v5}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;->setSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method private issueFuture(ILcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;"
        }
    .end annotation

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;-><init>(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;I)V

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private satisfyFuturesFromBuffer()V
    .locals 3

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->fillFuture(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method private spawnMoreReceiveTasks()V
    .locals 7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutDown:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxDoneReceiveBatches()I

    move-result v0

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v3, v0, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    add-int/2addr v3, v4

    if-lt v3, v0, :cond_3

    monitor-exit v2

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->taskSpawnSyncPoint:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-wide v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    new-instance v0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;-><init>()V

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "VisibilityTimeout"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->withAttributeNames([Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    move-result-object v0

    sget-object v3, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    invoke-interface {v3, v0}, Lcom/amazonaws/services/sqs/AmazonSQS;->getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v3, "VisibilityTimeout"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J

    :cond_4
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightReceiveBatches()I

    move-result v0

    if-lez v0, :cond_5

    move v1, v0

    :cond_5
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    sub-int v0, v1, v0

    if-lez v0, :cond_7

    new-instance v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    invoke-direct {v0, p0, p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)V

    iget v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    iget-wide v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->bufferCounter:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->bufferCounter:J

    sget-object v3, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Spawned receive batch #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->bufferCounter:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " inflight) for queue "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_6
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->clear()V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public receiveMessageAsync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutDown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "The client has been shut down."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->issueFuture(ILcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->satisfyFuturesFromBuffer()V

    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->spawnMoreReceiveTasks()V

    return-object v0
.end method

.method reportBatchFinished(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;)V
    .locals 4

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receive results cached "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->taskSpawnSyncPoint:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->satisfyFuturesFromBuffer()V

    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->spawnMoreReceiveTasks()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public shutdown()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutDown:Z

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    if-lez v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
