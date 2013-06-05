.class public Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;
.super Lcom/amazonaws/services/s3/transfer/TransferProgress;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/TransferProgress;-><init>()V

    return-void
.end method


# virtual methods
.method public setBytesTransfered(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->bytesTransfered:J

    return-void
.end method

.method public setTotalBytesToTransfer(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->totalBytesToTransfer:J

    return-void
.end method

.method public declared-synchronized updateProgress(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->bytesTransfered:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/amazonaws/services/s3/transfer/internal/TransferProgressImpl;->bytesTransfered:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
