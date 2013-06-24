.class Lco/vine/android/network/CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private final mChunk:J

.field private final mLength:J

.field private final mListener:Lco/vine/android/network/ProgressListener;

.field private mNext:J

.field private mTransferred:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLco/vine/android/network/ProgressListener;)V
    .locals 4
    .parameter "out"
    .parameter "length"
    .parameter "listener"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    iput-object p4, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    .line 27
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mLength:J

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    .line 29
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mLength:J

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mChunk:J

    .line 30
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mChunk:J

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    .line 31
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 49
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    .line 50
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v2, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 51
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 52
    iget-object v0, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    iget-wide v1, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v3, p0, Lco/vine/android/network/CountingOutputStream;->mLength:J

    invoke-interface {v0, v1, v2, v3, v4}, Lco/vine/android/network/ProgressListener;->onProgress(JJ)V

    .line 55
    :cond_0
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    iget-wide v2, p0, Lco/vine/android/network/CountingOutputStream;->mChunk:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    .line 57
    :cond_1
    return-void
.end method

.method public write([BII)V
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 36
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    .line 37
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v2, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 38
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 39
    iget-object v0, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    iget-wide v1, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v3, p0, Lco/vine/android/network/CountingOutputStream;->mLength:J

    invoke-interface {v0, v1, v2, v3, v4}, Lco/vine/android/network/ProgressListener;->onProgress(JJ)V

    .line 42
    :cond_0
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    iget-wide v2, p0, Lco/vine/android/network/CountingOutputStream;->mChunk:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    .line 44
    :cond_1
    return-void
.end method
