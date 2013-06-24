.class final Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/internal/TransferStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/transfer/TransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultipleFileTransferStateChangeListener"
.end annotation


# instance fields
.field private final allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

.field private final multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    iput-object p2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    return-void
.end method


# virtual methods
.method public transferStateChanged(Lcom/amazonaws/services/s3/transfer/Transfer;Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V
    .locals 3

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    #getter for: Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z
    invoke-static {v0}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->access$400(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->allTransfersQueuedLock:Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v0

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Couldn\'t wait for all downloads to be queued"

    invoke-direct {v0, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    :try_start_5
    sget-object v0, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->getMonitor()Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/internal/TransferMonitor;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->collateFinalState()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

    sget-object v2, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->InProgress:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method
