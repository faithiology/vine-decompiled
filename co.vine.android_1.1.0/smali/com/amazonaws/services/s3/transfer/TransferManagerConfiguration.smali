.class public Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_MINIMUM_UPLOAD_PART_SIZE:I = 0x500000

.field private static final DEFAULT_MULTIPART_UPLOAD_THRESHOLD:I = 0x1000000


# instance fields
.field private minimumUploadPartSize:J

.field private multipartUploadThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;->minimumUploadPartSize:J

    const/high16 v0, 0x100

    iput v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;->multipartUploadThreshold:I

    return-void
.end method


# virtual methods
.method public getMinimumUploadPartSize()J
    .locals 2

    iget-wide v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;->minimumUploadPartSize:J

    return-wide v0
.end method

.method public getMultipartUploadThreshold()J
    .locals 2

    iget v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;->multipartUploadThreshold:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setMinimumUploadPartSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;->minimumUploadPartSize:J

    return-void
.end method

.method public setMultipartUploadThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManagerConfiguration;->multipartUploadThreshold:I

    return-void
.end method
