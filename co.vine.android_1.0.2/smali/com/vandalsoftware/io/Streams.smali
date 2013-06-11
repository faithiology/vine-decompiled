.class public final Lcom/vandalsoftware/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/vandalsoftware/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static checkOffsetAndCount(III)V
    .locals 1
    .parameter "length"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 98
    add-int v0, p1, p2

    if-le v0, p0, :cond_0

    .line 99
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 101
    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, total:I
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 196
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, c:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 197
    add-int/2addr v2, v1

    .line 198
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 200
    :cond_0
    return v2
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    .local v2, result:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 214
    .local v0, c:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 215
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 216
    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 223
    .local v1, length:I
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 224
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 226
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 220
    .end local v1           #length:I
    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 133
    .local v2, writer:Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 135
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, count:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v0           #buffer:[C
    .end local v1           #count:I
    .end local v2           #writer:Ljava/io/StringWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v3

    .line 138
    .restart local v0       #buffer:[C
    .restart local v1       #count:I
    .restart local v2       #writer:Ljava/io/StringWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 140
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v3
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .parameter "in"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/vandalsoftware/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 64
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 3
    .parameter "in"
    .parameter "dst"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p3, :cond_1

    .line 91
    :cond_0
    return-void

    .line 76
    :cond_1
    if-nez p0, :cond_2

    .line 77
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "in == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_2
    if-nez p1, :cond_3

    .line 80
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_3
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/vandalsoftware/io/Streams;->checkOffsetAndCount(III)V

    .line 83
    :goto_0
    if-lez p3, :cond_0

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 85
    .local v0, bytesRead:I
    if-gez v0, :cond_4

    .line 86
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 88
    :cond_4
    add-int/2addr p2, v0

    .line 89
    sub-int/2addr p3, v0

    .line 90
    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;)[B
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/vandalsoftware/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static readFullyNoClose(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v1, bytes:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 121
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static readSingleByte(Ljava/io/InputStream;)I
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 43
    new-array v0, v4, [B

    .line 44
    .local v0, buffer:[B
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 45
    .local v1, result:I
    if-eq v1, v2, :cond_0

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    :cond_0
    return v2
.end method

.method public static readStringFrom(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vandalsoftware/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static skipAll(Ljava/io/InputStream;)I
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, skipped:I
    :cond_0
    int-to-long v1, v0

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 148
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 149
    return v0
.end method

.method public static skipByReading(Ljava/io/InputStream;J)J
    .locals 9
    .parameter "in"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    sget-object v5, Lcom/vandalsoftware/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 165
    .local v0, buffer:[B
    if-nez v0, :cond_0

    .line 166
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 169
    :cond_0
    const-wide/16 v2, 0x0

    .line 170
    .local v2, skipped:J
    :cond_1
    cmp-long v5, v2, p1

    if-gez v5, :cond_2

    .line 171
    sub-long v5, p1, v2

    array-length v7, v0

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v4, v5

    .line 172
    .local v4, toRead:I
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 173
    .local v1, read:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_3

    .line 183
    .end local v1           #read:I
    .end local v4           #toRead:I
    :cond_2
    :goto_0
    sget-object v5, Lcom/vandalsoftware/io/Streams;->skipBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 185
    return-wide v2

    .line 176
    .restart local v1       #read:I
    .restart local v4       #toRead:I
    :cond_3
    int-to-long v5, v1

    add-long/2addr v2, v5

    .line 177
    if-ge v1, v4, :cond_1

    goto :goto_0
.end method

.method public static writeSingleByte(Ljava/io/OutputStream;I)V
    .locals 3
    .parameter "out"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 55
    .local v0, buffer:[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 56
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 57
    return-void
.end method

.method public static writeStringTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "outputStream"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v0           #writer:Ljava/io/Writer;
    .local v1, writer:Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    invoke-static {v1}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 244
    return-void

    .line 242
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/vandalsoftware/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    goto :goto_0
.end method
