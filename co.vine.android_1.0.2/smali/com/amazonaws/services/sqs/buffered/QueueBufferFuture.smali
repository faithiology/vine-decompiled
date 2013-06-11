.class Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Req:",
        "Lcom/amazonaws/AmazonWebServiceRequest;",
        "Res:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TRes;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<TReq;TRes;>;"
        }
    .end annotation
.end field

.field private done:Z

.field private e:Ljava/lang/Exception;

.field private issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRes;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<TReq;TRes;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRes;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TRes;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    move-wide v0, v2

    :goto_0
    iget-boolean v6, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for results after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sub-long/2addr v0, v4

    sub-long v0, v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    return-void
.end method

.method public declared-synchronized setFailure(Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$2;

    invoke-direct {v1, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$2;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRes;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
