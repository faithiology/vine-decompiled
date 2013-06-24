.class public Lco/vine/android/util/PipingInputStream;
.super Ljava/io/FilterInputStream;
.source "PipingInputStream.java"


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "inputStream"
    .parameter "outputStream"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lco/vine/android/util/PipingInputStream;->mInputStream:Ljava/io/InputStream;

    .line 21
    iput-object p2, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 22
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 41
    .local v0, oneByte:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 44
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lco/vine/android/util/PipingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 32
    .local v0, readBytes:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 35
    :cond_0
    return v0
.end method
