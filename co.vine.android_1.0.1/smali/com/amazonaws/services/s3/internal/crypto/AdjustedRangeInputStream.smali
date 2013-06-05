.class public Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private closed:Z

.field private decryptedContents:Ljava/io/InputStream;

.field private virtualAvailable:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->initializeForRead(JJ)V

    return-void
.end method

.method private initializeForRead(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int v0, p1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    sget v0, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    long-to-int v0, v0

    sget v1, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-long v0, p3, p1

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    long-to-int v0, v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_1

    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    iput-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    goto :goto_1
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v1, -0x1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_2

    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    :goto_1
    return v0

    :cond_0
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    long-to-int v0, v2

    :goto_2
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    iput-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    goto :goto_1

    :cond_3
    move v0, p3

    goto :goto_2
.end method
