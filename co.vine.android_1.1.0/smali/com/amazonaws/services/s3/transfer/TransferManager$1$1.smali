.class Lcom/amazonaws/services/s3/transfer/TransferManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServiceUtils$RetryableS3DownloadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/transfer/TransferManager$1;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazonaws/services/s3/transfer/TransferManager$1;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1$1;->this$1:Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getS3ObjectStream()Lcom/amazonaws/services/s3/model/S3Object;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1$1;->this$1:Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    iget-object v0, v0, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->this$0:Lcom/amazonaws/services/s3/transfer/TransferManager;

    #getter for: Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;
    invoke-static {v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->access$200(Lcom/amazonaws/services/s3/transfer/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1$1;->this$1:Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    iget-object v1, v1, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1$1;->this$1:Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    iget-object v1, v1, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$download:Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/transfer/internal/DownloadImpl;->setS3Object(Lcom/amazonaws/services/s3/model/S3Object;)V

    return-object v0
.end method

.method public needIntegrityCheck()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1$1;->this$1:Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    iget-object v2, v2, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->val$getObjectRequest:Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$1$1;->this$1:Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    iget-object v2, v2, Lcom/amazonaws/services/s3/transfer/TransferManager$1;->this$0:Lcom/amazonaws/services/s3/transfer/TransferManager;

    #getter for: Lcom/amazonaws/services/s3/transfer/TransferManager;->s3:Lcom/amazonaws/services/s3/AmazonS3;
    invoke-static {v2}, Lcom/amazonaws/services/s3/transfer/TransferManager;->access$200(Lcom/amazonaws/services/s3/transfer/TransferManager;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v2

    instance-of v2, v2, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;

    if-eqz v2, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method
