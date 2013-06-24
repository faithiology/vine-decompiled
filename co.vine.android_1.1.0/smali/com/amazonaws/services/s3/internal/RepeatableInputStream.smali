.class public Lcom/amazonaws/services/s3/internal/RepeatableInputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private bufferSize:I

.field private bytesReadPastMark:J

.field private is:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iput-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    iput p2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    iget v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Underlying input stream will be repeatable up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream marked at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v6, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v0, p3

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    long-to-int v0, v0

    iget v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    sub-int p3, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    iget v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    :cond_1
    :goto_0
    return p3

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    long-to-int v1, v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    :goto_1
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been exceeded and the input stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "will not be repeatable until the next mark. Freeing buffer memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    goto :goto_1
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset after reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream cannot be reset as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes have been written, exceeding the available buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
