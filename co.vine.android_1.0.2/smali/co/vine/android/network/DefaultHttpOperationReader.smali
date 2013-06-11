.class public Lco/vine/android/network/DefaultHttpOperationReader;
.super Ljava/lang/Object;
.source "DefaultHttpOperationReader.java"

# interfaces
.implements Lco/vine/android/network/HttpOperationReader;


# instance fields
.field private final mBuffer:[B

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mProgressListener:Lco/vine/android/network/ProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, Lco/vine/android/network/DefaultHttpOperationReader;-><init>(Ljava/io/OutputStream;Lco/vine/android/network/ProgressListener;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lco/vine/android/network/ProgressListener;)V
    .locals 1
    .parameter "outputStream"
    .parameter "progressListener"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mBuffer:[B

    .line 18
    iput-object p1, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mOutputStream:Ljava/io/OutputStream;

    .line 19
    iput-object p2, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mProgressListener:Lco/vine/android/network/ProgressListener;

    .line 20
    return-void
.end method


# virtual methods
.method public onHandleError(Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 69
    return-void
.end method

.method public final readInput(IILjava/io/InputStream;)V
    .locals 10
    .parameter "statusCode"
    .parameter "contentLength"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 25
    iget-object v4, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mProgressListener:Lco/vine/android/network/ProgressListener;

    if-eqz v4, :cond_3

    .line 26
    new-instance v3, Lco/vine/android/network/CountingOutputStream;

    iget-object v4, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mOutputStream:Ljava/io/OutputStream;

    int-to-long v5, p2

    iget-object v7, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mProgressListener:Lco/vine/android/network/ProgressListener;

    invoke-direct {v3, v4, v5, v6, v7}, Lco/vine/android/network/CountingOutputStream;-><init>(Ljava/io/OutputStream;JLco/vine/android/network/ProgressListener;)V

    .line 30
    .local v3, out:Ljava/io/OutputStream;
    :goto_0
    iget-object v0, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mBuffer:[B

    .line 33
    .local v0, buffer:[B
    if-gez p2, :cond_4

    .line 34
    :cond_0
    :goto_1
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v0

    invoke-virtual {p3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, bytesRead:I
    if-eq v1, v9, :cond_7

    .line 35
    if-eqz v3, :cond_0

    .line 36
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 55
    .end local v1           #bytesRead:I
    :catchall_0
    move-exception v4

    :cond_1
    array-length v5, v0

    invoke-virtual {p3, v0, v8, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 59
    if-eqz v3, :cond_2

    .line 60
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 61
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :cond_2
    :goto_2
    throw v4

    .line 28
    .end local v0           #buffer:[B
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_3
    iget-object v3, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mOutputStream:Ljava/io/OutputStream;

    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 40
    .restart local v0       #buffer:[B
    :cond_4
    move v2, p2

    .line 41
    .local v2, bytesRemaining:I
    :cond_5
    :goto_3
    if-lez v2, :cond_7

    .line 42
    const/4 v4, 0x0

    :try_start_2
    array-length v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 43
    .restart local v1       #bytesRead:I
    if-ne v1, v9, :cond_6

    .line 44
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_6
    if-lez v1, :cond_5

    .line 46
    sub-int/2addr v2, v1

    .line 47
    if-eqz v3, :cond_5

    .line 48
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 55
    .end local v1           #bytesRead:I
    .end local v2           #bytesRemaining:I
    :cond_7
    array-length v4, v0

    invoke-virtual {p3, v0, v8, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v9, :cond_7

    .line 59
    if-eqz v3, :cond_8

    .line 60
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 61
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 66
    :cond_8
    :goto_4
    return-void

    .line 63
    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_4
.end method
