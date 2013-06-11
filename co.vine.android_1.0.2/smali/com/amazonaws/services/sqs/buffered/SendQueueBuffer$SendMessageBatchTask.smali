.class Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;
.super Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMessageBatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
        "<",
        "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
        "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
        ">;"
    }
.end annotation


# instance fields
.field batchSizeBytes:I

.field final synthetic this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V
    .locals 1

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-direct {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V

    return-void
.end method


# virtual methods
.method declared-synchronized isFull()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    #getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    #getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSizeBytes()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic isOkToAdd(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 1

    check-cast p1, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->isOkToAdd(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized isOkToAdd(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    #getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    #getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSizeBytes()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic onRequestAdded(Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 0

    check-cast p1, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->onRequestAdded(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)V

    return-void
.end method

.method protected onRequestAdded(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)V
    .locals 2

    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    return-void
.end method

.method process()V
    .locals 6

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    #getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    move-result-object v2

    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    new-instance v0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->withId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    move-result-object v5

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->withMessageBody(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    move-result-object v5

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getDelaySeconds()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->withDelaySeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->setEntries(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    #getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;
    invoke-static {v0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$500(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazonaws/services/sqs/AmazonSQS;->sendMessageBatch(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-static {v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->convert(Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;)Lcom/amazonaws/services/sqs/model/SendMessageResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-static {v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->convert(Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;)Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setFailure(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    #getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$500(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;

    move-result-object v4

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    invoke-interface {v4, v1}, Lcom/amazonaws/services/sqs/AmazonSQS;->sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/services/sqs/model/SendMessageResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setFailure(Ljava/lang/Exception;)V

    goto :goto_2
.end method
