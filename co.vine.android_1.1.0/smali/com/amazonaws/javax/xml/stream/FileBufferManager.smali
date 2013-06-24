.class public Lcom/amazonaws/javax/xml/stream/FileBufferManager;
.super Lcom/amazonaws/javax/xml/stream/BufferManager;
.source "FileBufferManager.java"


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_LENGTH:I = 0x2000

.field static final THRESH_HOLD:I = 0x14000


# instance fields
.field calledGetMore:Z

.field charBuffer:Ljava/nio/CharBuffer;

.field decoder:Ljava/nio/charset/CharsetDecoder;

.field fChannel:Ljava/nio/channels/FileChannel;

.field filepos:J

.field filesize:J

.field remaining:J


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "stream"
    .parameter "encodingName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/BufferManager;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 62
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    .line 63
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 65
    iput-wide v2, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->remaining:J

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filepos:J

    .line 67
    iput-wide v2, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filesize:J

    .line 72
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->init(Ljava/io/FileInputStream;)V

    .line 74
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->setDecoder(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "args"

    .prologue
    .line 308
    :try_start_0
    new-instance v2, Lcom/amazonaws/javax/xml/stream/FileBufferManager;

    new-instance v5, Ljava/io/FileInputStream;

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;-><init>(Ljava/io/FileInputStream;Ljava/lang/String;)V

    .line 309
    .local v2, fb:Lcom/amazonaws/javax/xml/stream/FileBufferManager;
    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 310
    .local v0, cb:Ljava/nio/CharBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .line 311
    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getMore()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Loop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "------------Loop CharBuffer details--------"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->printCharBuffer(Ljava/nio/CharBuffer;)V

    move v4, v3

    .line 315
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 316
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "End of file reached = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->endOfStream()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Total no. of loops required = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0           #cb:Ljava/nio/CharBuffer;
    .end local v2           #fb:Lcom/amazonaws/javax/xml/stream/FileBufferManager;
    .end local v4           #i:I
    :goto_1
    return-void

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static printByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "bb"

    .prologue
    .line 292
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------ByteBuffer Details---------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bb.position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bb.remaining() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bb.limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bb.capacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method static printCharBuffer(Ljava/nio/CharBuffer;)V
    .locals 3
    .parameter "bb"

    .prologue
    .line 299
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----------- CharBuffer Details---------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bb.position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bb.remaining() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bb.limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bb.capacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    return-void
.end method


# virtual methods
.method public arrangeCapacity(I)Z
    .locals 3
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->calledGetMore:Z

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getMore()Z

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_3

    .line 103
    :cond_1
    :goto_0
    return v0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getMore()Z

    .line 96
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->endOfStream()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_1

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 328
    :cond_0
    return-void
.end method

.method public getCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    return-object v0
.end method

.method getCharSequence()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getLength()I
    .locals 4

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->remaining:J

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->remaining:J

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4000

    goto :goto_0
.end method

.method public getMore()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 158
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->calledGetMore:Z

    .line 162
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->endOfStream:Z

    if-eqz v5, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v3

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getMoreBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    .local v0, bb:Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 175
    :goto_1
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .line 183
    .local v1, before:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v0, v6, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 194
    .local v2, cr:Ljava/nio/charset/CoderResult;
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_4

    .line 195
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->resizeCharBuffer(I)Ljava/nio/CharBuffer;

    .line 201
    :cond_2
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v0, v6, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 207
    goto :goto_2

    .line 172
    .end local v1           #before:I
    .end local v2           #cr:Ljava/nio/charset/CoderResult;
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 209
    .restart local v1       #before:I
    .restart local v2       #cr:Ljava/nio/charset/CoderResult;
    :cond_4
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 210
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v0, v6, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 211
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 217
    :cond_5
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 224
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 227
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move v3, v4

    .line 228
    goto :goto_0
.end method

.method public getMoreBytes()Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getLength()I

    move-result v7

    .line 117
    .local v7, len:I
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->endOfStream:Z

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 143
    :cond_0
    :goto_0
    return-object v6

    .line 120
    :cond_1
    const/4 v6, 0x0

    .line 122
    .local v6, bb:Ljava/nio/ByteBuffer;
    iget-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filesize:J

    const-wide/32 v2, 0x14000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v2, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filepos:J

    int-to-long v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 126
    iget-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filepos:J

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filepos:J

    .line 138
    :goto_1
    iget-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filesize:J

    iget-wide v2, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filepos:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->remaining:J

    .line 140
    iget-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->remaining:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->endOfStream:Z

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 131
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 132
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filepos:J

    .line 134
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method init(Ljava/io/FileInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 80
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    .line 81
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filesize:J

    .line 82
    iget-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->filesize:J

    iput-wide v0, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->remaining:J

    .line 85
    return-void
.end method

.method resizeCharBuffer(I)Ljava/nio/CharBuffer;
    .locals 2
    .parameter "capacity"

    .prologue
    .line 253
    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 256
    .local v0, cb:Ljava/nio/CharBuffer;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    .line 261
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->charBuffer:Ljava/nio/CharBuffer;

    return-object v1
.end method

.method setDecoder(Ljava/lang/String;)V
    .locals 5
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 289
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 277
    .local v2, byteBuffer:Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->fChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 281
    new-array v1, v4, [B

    .line 282
    .local v1, b:[B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 283
    invoke-virtual {p0, v1, v4}, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->getEncodingName([BI)[Ljava/lang/Object;

    move-result-object v0

    .line 287
    .local v0, array:[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/FileBufferManager;->decoder:Ljava/nio/charset/CharsetDecoder;

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    return-void
.end method
