.class public Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final block:[B

.field private blockPosition:I

.field private final endingPosition:J

.field private markedBlockPosition:I

.field private markedStreamPosition:J

.field private final startingPosition:J

.field private streamPosition:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    cmp-long v0, p2, p4

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid byte range specified: the starting position must be less than the ending position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    sub-long v0, p4, p2

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    return-void
.end method


# virtual methods
.method public getBlock()[B
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedStreamPosition:J

    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedBlockPosition:I
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

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    :cond_1
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedStreamPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedBlockPosition:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I
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
