.class public abstract Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/Transfer;


# instance fields
.field private final description:Ljava/lang/String;

.field protected monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

.field protected progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

.field private volatile state:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

.field protected final stateChangeListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transferProgress:Lcom/amazonaws/services/s3/transfer/TransferProgress;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Waiting:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->state:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->transferProgress:Lcom/amazonaws/services/s3/transfer/TransferProgress;

    invoke-virtual {p0, p4}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->addStateChangeListener(Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->addProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addStateChangeListener(Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitor()Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    return-object v0
.end method

.method public getProgress()Lcom/amazonaws/services/s3/transfer/TransferProgress;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->transferProgress:Lcom/amazonaws/services/s3/transfer/TransferProgress;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->state:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->state:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Failed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->state:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->state:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Canceled:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

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

.method public declared-synchronized removeProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;->removeProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStateChangeListener(Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;

    move-result-object v0

    throw v0
.end method

.method public setMonitor(Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    return-void
.end method

.method public setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->state:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;->transferStateChanged(Lcom/amazonaws/services/s3/transfer/Transfer;Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method protected unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;
    .locals 4

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/amazonaws/AmazonClientException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazonaws/AmazonClientException;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to complete transfer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V

    :cond_1
    return-void
.end method

.method public waitForException()Lcom/amazonaws/AmazonClientException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_1
.end method
