.class public Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;
.super Ljava/io/Reader;
.source "UCSReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final UCS2BE:S = 0x2s

.field public static final UCS2LE:S = 0x1s

.field public static final UCS4BE:S = 0x8s

.field public static final UCS4LE:S = 0x4s


# instance fields
.field protected fBuffer:[B

.field protected fEncoding:S

.field protected fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IS)V
    .locals 2
    .parameter "inputStream"
    .parameter "size"
    .parameter "encoding"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    .line 165
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    move-result-object v0

    .line 166
    .local v0, ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    invoke-virtual {v0, p2}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->getByteBuffer(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    .line 167
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    if-nez v1, :cond_0

    .line 168
    new-array v1, p2, [B

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    .line 170
    :cond_0
    iput-short p3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;S)V
    .locals 1
    .parameter "inputStream"
    .parameter "encoding"

    .prologue
    .line 151
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;IS)V

    .line 152
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    move-result-object v0

    .line 375
    .local v0, ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->returnByteBuffer([B)V

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    .line 377
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 378
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "readAheadLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 347
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xff

    const/4 v4, -0x1

    .line 191
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 192
    .local v0, b0:I
    if-ne v0, v7, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v4

    .line 194
    :cond_1
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 195
    .local v1, b1:I
    if-eq v1, v7, :cond_0

    .line 197
    iget-short v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    .line 198
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 199
    .local v2, b2:I
    if-eq v2, v7, :cond_0

    .line 201
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v3, v5, 0xff

    .line 202
    .local v3, b3:I
    if-eq v3, v7, :cond_0

    .line 204
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "b0 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    and-int/lit16 v6, v0, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " b1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    and-int/lit16 v6, v1, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " b2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    and-int/lit16 v6, v2, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " b3 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    and-int/lit16 v6, v3, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    iget-short v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 206
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_0

    .line 208
    :cond_2
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    goto :goto_0

    .line 210
    .end local v2           #b2:I
    .end local v3           #b3:I
    :cond_3
    iget-short v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 211
    shl-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    goto/16 :goto_0

    .line 213
    :cond_4
    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v0

    goto/16 :goto_0
.end method

.method public read([CII)I
    .locals 17
    .parameter "ch"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_2

    const/4 v14, 0x2

    :goto_0
    shl-int v5, p3, v14

    .line 233
    .local v5, byteLength:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v14, v14

    if-le v5, v14, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v5, v14

    .line 236
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 237
    .local v7, count:I
    const/4 v14, -0x1

    if-ne v7, v14, :cond_3

    const/4 v12, -0x1

    .line 286
    :cond_1
    return v12

    .line 232
    .end local v5           #byteLength:I
    .end local v7           #count:I
    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    .line 239
    .restart local v5       #byteLength:I
    .restart local v7       #count:I
    :cond_3
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_7

    .line 241
    and-int/lit8 v14, v7, 0x3

    rsub-int/lit8 v14, v14, 0x4

    and-int/lit8 v13, v14, 0x3

    .line 242
    .local v13, numToRead:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v13, :cond_5

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 244
    .local v6, charRead:I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_4

    .line 245
    move v11, v10

    .local v11, j:I
    :goto_2
    if-ge v11, v13, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v15, v7, v11

    const/16 v16, 0x0

    aput-byte v16, v14, v15

    .line 245
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 249
    .end local v11           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v15, v7, v10

    int-to-byte v0, v6

    move/from16 v16, v0

    aput-byte v16, v14, v15

    .line 242
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 252
    .end local v6           #charRead:I
    :cond_5
    add-int/2addr v7, v13

    .line 267
    .end local v10           #i:I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_9

    const/4 v14, 0x2

    :goto_4
    shr-int v12, v7, v14

    .line 268
    .local v12, numChars:I
    const/4 v8, 0x0

    .line 269
    .local v8, curPos:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    move v9, v8

    .end local v8           #curPos:I
    .local v9, curPos:I
    :goto_5
    if-ge v10, v12, :cond_1

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9           #curPos:I
    .restart local v8       #curPos:I
    aget-byte v14, v14, v9

    and-int/lit16 v1, v14, 0xff

    .line 271
    .local v1, b0:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8           #curPos:I
    .restart local v9       #curPos:I
    aget-byte v14, v14, v8

    and-int/lit16 v2, v14, 0xff

    .line 272
    .local v2, b1:I
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_b

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9           #curPos:I
    .restart local v8       #curPos:I
    aget-byte v14, v14, v9

    and-int/lit16 v3, v14, 0xff

    .line 274
    .local v3, b2:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8           #curPos:I
    .restart local v9       #curPos:I
    aget-byte v14, v14, v8

    and-int/lit16 v4, v14, 0xff

    .line 275
    .local v4, b3:I
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v15, 0x8

    if-ne v14, v15, :cond_a

    .line 276
    add-int v14, p2, v10

    shl-int/lit8 v15, v1, 0x18

    shl-int/lit8 v16, v2, 0x10

    add-int v15, v15, v16

    shl-int/lit8 v16, v3, 0x8

    add-int v15, v15, v16

    add-int/2addr v15, v4

    int-to-char v15, v15

    aput-char v15, p1, v14

    :goto_6
    move v8, v9

    .line 269
    .end local v3           #b2:I
    .end local v4           #b3:I
    .end local v9           #curPos:I
    .restart local v8       #curPos:I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8           #curPos:I
    .restart local v9       #curPos:I
    goto :goto_5

    .line 254
    .end local v1           #b0:I
    .end local v2           #b1:I
    .end local v9           #curPos:I
    .end local v10           #i:I
    .end local v12           #numChars:I
    .end local v13           #numToRead:I
    :cond_7
    and-int/lit8 v13, v7, 0x1

    .line 255
    .restart local v13       #numToRead:I
    if-eqz v13, :cond_6

    .line 256
    add-int/lit8 v7, v7, 0x1

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 258
    .restart local v6       #charRead:I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_8

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    const/4 v15, 0x0

    aput-byte v15, v14, v7

    goto :goto_3

    .line 261
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fBuffer:[B

    int-to-byte v15, v6

    aput-byte v15, v14, v7

    goto :goto_3

    .line 267
    .end local v6           #charRead:I
    :cond_9
    const/4 v14, 0x1

    goto :goto_4

    .line 278
    .restart local v1       #b0:I
    .restart local v2       #b1:I
    .restart local v3       #b2:I
    .restart local v4       #b3:I
    .restart local v9       #curPos:I
    .restart local v10       #i:I
    .restart local v12       #numChars:I
    :cond_a
    add-int v14, p2, v10

    shl-int/lit8 v15, v4, 0x18

    shl-int/lit8 v16, v3, 0x10

    add-int v15, v15, v16

    shl-int/lit8 v16, v2, 0x8

    add-int v15, v15, v16

    add-int/2addr v15, v1

    int-to-char v15, v15

    aput-char v15, p1, v14

    goto :goto_6

    .line 280
    .end local v3           #b2:I
    .end local v4           #b3:I
    :cond_b
    move-object/from16 v0, p0

    iget-short v14, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    .line 281
    add-int v14, p2, v10

    shl-int/lit8 v15, v1, 0x8

    add-int/2addr v15, v2

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    .end local v9           #curPos:I
    .restart local v8       #curPos:I
    goto :goto_7

    .line 283
    .end local v8           #curPos:I
    .restart local v9       #curPos:I
    :cond_c
    add-int v14, p2, v10

    shl-int/lit8 v15, v2, 0x8

    add-int/2addr v15, v1

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    .end local v9           #curPos:I
    .restart local v8       #curPos:I
    goto :goto_7
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 364
    return-void
.end method

.method public skip(J)J
    .locals 7
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-short v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    const/4 v2, 0x2

    .line 307
    .local v2, charWidth:I
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    shl-long v4, p1, v2

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 308
    .local v0, bytesSkipped:J
    or-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    shr-long v3, v0, v2

    .line 309
    :goto_1
    return-wide v3

    .line 306
    .end local v0           #bytesSkipped:J
    .end local v2           #charWidth:I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 309
    .restart local v0       #bytesSkipped:J
    .restart local v2       #charWidth:I
    :cond_1
    shr-long v3, v0, v2

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_1
.end method
