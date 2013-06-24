.class public interface abstract Lcom/amazonaws/services/s3/transfer/Transfer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;
    }
.end annotation


# virtual methods
.method public abstract addProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getProgress()Lcom/amazonaws/services/s3/transfer/TransferProgress;
.end method

.method public abstract getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;
.end method

.method public abstract isDone()Z
.end method

.method public abstract removeProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
.end method

.method public abstract waitForCompletion()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract waitForException()Lcom/amazonaws/AmazonClientException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
