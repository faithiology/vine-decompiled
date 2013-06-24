.class public interface abstract Lcom/amazonaws/services/s3/transfer/Upload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/s3/transfer/Transfer;


# virtual methods
.method public abstract waitForUploadResult()Lcom/amazonaws/services/s3/transfer/model/UploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
