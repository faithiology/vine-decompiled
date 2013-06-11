.class public Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;
.super Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/MultipleFileDownload;


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private final keyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/transfer/TransferProgress;",
            "Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazonaws/services/s3/transfer/Download;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/transfer/TransferProgress;Lcom/amazonaws/services/s3/transfer/internal/ProgressListenerChain;Ljava/util/Collection;)V

    iput-object p4, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->keyPrefix:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/transfer/Transfer;

    check-cast v0, Lcom/amazonaws/services/s3/transfer/Download;

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/Download;->abort()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->keyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileDownloadImpl;->subTransfers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/amazonaws/services/s3/transfer/internal/MultipleFileTransfer;->waitForCompletion()V

    goto :goto_0
.end method
