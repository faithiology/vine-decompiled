.class Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener",
        "<",
        "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
        "<TR;TResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

.field final synthetic val$inflightOperationBatches:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;->val$inflightOperationBatches:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
            "<TR;TResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;->val$inflightOperationBatches:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;->invoke(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;)V

    return-void
.end method
