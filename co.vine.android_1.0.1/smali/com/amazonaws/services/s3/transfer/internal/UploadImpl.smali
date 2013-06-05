.class public Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;
.super Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/Upload;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/services/s3/transfer/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public waitForUploadResult()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v2}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->monitor:Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/transfer/internal/UploadImpl;->rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method
