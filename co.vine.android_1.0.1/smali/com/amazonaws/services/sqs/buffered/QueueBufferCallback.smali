.class Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestType:",
        "Lcom/amazonaws/AmazonWebServiceRequest;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final handler:Lcom/amazonaws/handlers/AsyncHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<TRequestType;TResultType;>;"
        }
    .end annotation
.end field

.field private final request:Lcom/amazonaws/AmazonWebServiceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<TRequestType;TResultType;>;TRequestType;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->request:Lcom/amazonaws/AmazonWebServiceRequest;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->handler:Lcom/amazonaws/handlers/AsyncHandler;

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;->request:Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
