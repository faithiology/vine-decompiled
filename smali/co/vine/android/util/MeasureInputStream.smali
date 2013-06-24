.class public Lco/vine/android/util/MeasureInputStream;
.super Ljava/io/InputStream;
.source "MeasureInputStream.java"


# instance fields
.field private final mInputStream:Ljava/io/InputStream;

.field private mReadTimeMs:J

.field private mReadTimeNs:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "inputStream"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    iput-object p1, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J

    .line 22
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

    .prologue
    .line 30
    iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

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

    .prologue
    .line 35
    iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 36
    return-void
.end method

.method public getReadTime()J
    .locals 6

    .prologue
    .line 25
    iget-wide v0, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J

    iget-wide v2, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeNs:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 40
    iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 41
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 51
    .local v0, now:J
    iget-object v3, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 52
    .local v2, result:I
    iget-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeNs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeNs:J

    .line 53
    return v2
.end method

.method public read([B)I
    .locals 7
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    .local v0, now:J
    iget-object v3, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 60
    .local v2, result:I
    iget-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J

    .line 61
    return v2
.end method

.method public read([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    .local v0, now:J
    iget-object v3, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 68
    .local v2, result:I
    iget-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J

    .line 69
    return v2
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/vine/android/util/MeasureInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 8
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, now:J
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 81
    .local v2, result:J
    iget-wide v4, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lco/vine/android/util/MeasureInputStream;->mReadTimeMs:J

    .line 82
    return-wide v2
.end method
