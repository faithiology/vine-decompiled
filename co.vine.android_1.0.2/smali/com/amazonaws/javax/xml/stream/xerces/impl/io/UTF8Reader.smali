.class public Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "UTF8Reader.java"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected fBuffer:[B

.field private fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

.field protected fInputStream:Ljava/io/InputStream;

.field private fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "inputStream"

    .prologue
    .line 157
    const/16 v0, 0x800

    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 3
    .parameter "inputStream"
    .parameter "size"
    .parameter "messageFormatter"
    .parameter "locale"

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 137
    const/4 v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 141
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    .line 144
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 184
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 185
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    .line 186
    iput-object p4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 187
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    move-result-object v0

    .line 188
    .local v0, ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    invoke-virtual {v0, p2}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->getByteBuffer(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    .line 189
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    if-nez v1, :cond_0

    .line 190
    new-array v1, p2, [B

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    .line 192
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1
    .parameter "inputStream"
    .parameter "messageFormatter"
    .parameter "locale"

    .prologue
    .line 170
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 171
    return-void
.end method

.method private expectedByte(II)V
    .locals 7
    .parameter "position"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 743
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "ExpectedByte"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/io/UTFDataFormatException;

    invoke-direct {v1, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private invalidByte(III)V
    .locals 7
    .parameter "position"
    .parameter "count"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 753
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "InvalidByte"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/io/UTFDataFormatException;

    invoke-direct {v1, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private invalidSurrogate(I)V
    .locals 8
    .parameter "uuuuu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 762
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 763
    .local v1, str:Ljava/lang/StringBuffer;
    const-string v2, "high surrogate bits in UTF-8 sequence must not exceed 0x10 but found 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v4, "InvalidHighSurrogate"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, message:Ljava/lang/String;
    new-instance v2, Ljava/io/UTFDataFormatException;

    invoke-direct {v2, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 729
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    move-result-object v0

    .line 730
    .local v0, ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->returnByteBuffer([B)V

    .line 731
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    .line 732
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 733
    return-void
.end method

.method public mark(I)V
    .locals 7
    .parameter "readAheadLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fFormatter:Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "OperationNotSupported"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "mark()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 215
    .local v4, c:I
    iget v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_19

    .line 218
    const/4 v6, 0x0

    .line 221
    .local v6, index:I
    iget v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v6, v11, :cond_0

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v0

    move v7, v6

    .line 223
    .end local v6           #index:I
    .local v0, b0:I
    .local v7, index:I
    :goto_0
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    .line 224
    const/4 v11, -0x1

    .line 327
    .end local v0           #b0:I
    .end local v7           #index:I
    :goto_1
    return v11

    .line 221
    .restart local v6       #index:I
    :cond_0
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    aget-byte v11, v11, v6

    and-int/lit16 v0, v11, 0xff

    goto :goto_0

    .line 229
    .restart local v0       #b0:I
    :cond_1
    const/16 v11, 0x80

    if-ge v0, v11, :cond_2

    .line 230
    int-to-char v4, v0

    move v6, v7

    .end local v0           #b0:I
    .end local v7           #index:I
    :goto_2
    move v11, v4

    .line 327
    goto :goto_1

    .line 235
    .restart local v0       #b0:I
    .restart local v7       #index:I
    :cond_2
    and-int/lit16 v11, v0, 0xe0

    const/16 v12, 0xc0

    if-ne v11, v12, :cond_6

    .line 236
    iget v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_5

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    move v6, v7

    .line 238
    .end local v7           #index:I
    .local v1, b1:I
    .restart local v6       #index:I
    :goto_3
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 239
    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 241
    :cond_3
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_4

    .line 242
    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct {p0, v11, v12, v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 244
    :cond_4
    shl-int/lit8 v11, v0, 0x6

    and-int/lit16 v11, v11, 0x7c0

    and-int/lit8 v12, v1, 0x3f

    or-int v4, v11, v12

    .line 245
    goto :goto_2

    .line 236
    .end local v1           #b1:I
    .end local v6           #index:I
    .restart local v7       #index:I
    :cond_5
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    goto :goto_3

    .line 249
    .end local v6           #index:I
    .restart local v7       #index:I
    :cond_6
    and-int/lit16 v11, v0, 0xf0

    const/16 v12, 0xe0

    if-ne v11, v12, :cond_d

    .line 250
    iget v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_b

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 252
    .restart local v1       #b1:I
    :goto_4
    const/4 v11, -0x1

    if-ne v1, v11, :cond_7

    .line 253
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 255
    :cond_7
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_8

    .line 256
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 258
    :cond_8
    iget v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_c

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v2

    move v6, v7

    .line 260
    .end local v7           #index:I
    .local v2, b2:I
    .restart local v6       #index:I
    :goto_5
    const/4 v11, -0x1

    if-ne v2, v11, :cond_9

    .line 261
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 263
    :cond_9
    and-int/lit16 v11, v2, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_a

    .line 264
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 266
    :cond_a
    shl-int/lit8 v11, v0, 0xc

    const v12, 0xf000

    and-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x6

    and-int/lit16 v12, v12, 0xfc0

    or-int/2addr v11, v12

    and-int/lit8 v12, v2, 0x3f

    or-int v4, v11, v12

    .line 268
    goto/16 :goto_2

    .line 250
    .end local v1           #b1:I
    .end local v2           #b2:I
    .end local v6           #index:I
    .restart local v7       #index:I
    :cond_b
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_4

    .line 258
    .restart local v1       #b1:I
    :cond_c
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v11, v11, v7

    and-int/lit16 v2, v11, 0xff

    goto :goto_5

    .line 274
    .end local v1           #b1:I
    .end local v6           #index:I
    .restart local v7       #index:I
    :cond_d
    and-int/lit16 v11, v0, 0xf8

    const/16 v12, 0xf0

    if-ne v11, v12, :cond_18

    .line 275
    iget v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_15

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 277
    .restart local v1       #b1:I
    :goto_6
    const/4 v11, -0x1

    if-ne v1, v11, :cond_e

    .line 278
    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 280
    :cond_e
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_f

    .line 281
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 283
    :cond_f
    iget v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_16

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 285
    .restart local v2       #b2:I
    :goto_7
    const/4 v11, -0x1

    if-ne v2, v11, :cond_10

    .line 286
    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 288
    :cond_10
    and-int/lit16 v11, v2, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_11

    .line 289
    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 291
    :cond_11
    iget v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_17

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v3

    move v6, v7

    .line 293
    .end local v7           #index:I
    .local v3, b3:I
    .restart local v6       #index:I
    :goto_8
    const/4 v11, -0x1

    if-ne v3, v11, :cond_12

    .line 294
    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 296
    :cond_12
    and-int/lit16 v11, v3, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_13

    .line 297
    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12, v3}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 299
    :cond_13
    shl-int/lit8 v11, v0, 0x2

    and-int/lit8 v11, v11, 0x1c

    shr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3

    or-int v9, v11, v12

    .line 300
    .local v9, uuuuu:I
    const/16 v11, 0x10

    if-le v9, v11, :cond_14

    .line 301
    invoke-direct {p0, v9}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    .line 303
    :cond_14
    add-int/lit8 v10, v9, -0x1

    .line 304
    .local v10, wwww:I
    const v11, 0xd800

    shl-int/lit8 v12, v10, 0x6

    and-int/lit16 v12, v12, 0x3c0

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x2

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    shr-int/lit8 v12, v2, 0x4

    and-int/lit8 v12, v12, 0x3

    or-int v5, v11, v12

    .line 307
    .local v5, hs:I
    const v11, 0xdc00

    shl-int/lit8 v12, v2, 0x6

    and-int/lit16 v12, v12, 0x3c0

    or-int/2addr v11, v12

    and-int/lit8 v12, v3, 0x3f

    or-int v8, v11, v12

    .line 308
    .local v8, ls:I
    move v4, v5

    .line 309
    iput v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto/16 :goto_2

    .line 275
    .end local v1           #b1:I
    .end local v2           #b2:I
    .end local v3           #b3:I
    .end local v5           #hs:I
    .end local v6           #index:I
    .end local v8           #ls:I
    .end local v9           #uuuuu:I
    .end local v10           #wwww:I
    .restart local v7       #index:I
    :cond_15
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto/16 :goto_6

    .line 283
    .restart local v1       #b1:I
    :cond_16
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v11, v11, v7

    and-int/lit16 v2, v11, 0xff

    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_7

    .line 291
    .restart local v2       #b2:I
    :cond_17
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v11, v11, v7

    and-int/lit16 v3, v11, 0xff

    goto :goto_8

    .line 314
    .end local v1           #b1:I
    .end local v2           #b2:I
    .end local v6           #index:I
    .restart local v7       #index:I
    :cond_18
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    goto/16 :goto_2

    .line 320
    .end local v0           #b0:I
    .end local v6           #index:I
    :cond_19
    const/4 v11, -0x1

    iput v11, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto/16 :goto_2
.end method

.method public read([CII)I
    .locals 26
    .parameter "ch"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    move/from16 v15, p2

    .line 348
    .local v15, out:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 349
    add-int/lit8 v23, p2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, p1, v23

    .line 350
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 351
    add-int/lit8 p3, p3, -0x1

    .line 352
    add-int/lit8 v15, v15, 0x1

    .line 356
    :cond_0
    const/4 v9, 0x0

    .line 357
    .local v9, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 p3, v0

    .line 364
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 365
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_2

    .line 366
    const/16 v23, -0x1

    .line 632
    :goto_0
    return v23

    .line 368
    :cond_2
    sub-int v23, v15, p2

    add-int v9, v9, v23

    .line 384
    :goto_1
    move/from16 v17, v9

    .line 385
    .local v17, total:I
    const/4 v12, 0x1

    .line 386
    .local v12, isAscii:Z
    const/4 v13, 0x0

    .line 388
    .local v13, lc:I
    const/4 v13, 0x0

    move/from16 v16, v15

    .end local v15           #out:I
    .local v16, out:I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    .line 393
    .local v4, b0:I
    const/16 v23, 0x80

    move/from16 v0, v23

    if-ge v4, v0, :cond_4

    .line 394
    add-int/lit8 v15, v16, 0x1

    .end local v16           #out:I
    .restart local v15       #out:I
    int-to-char v0, v4

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 388
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    .end local v15           #out:I
    .restart local v16       #out:I
    goto :goto_2

    .line 379
    .end local v4           #b0:I
    .end local v12           #isAscii:Z
    .end local v13           #lc:I
    .end local v16           #out:I
    .end local v17           #total:I
    .restart local v15       #out:I
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 380
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    goto :goto_1

    .line 397
    .end local v15           #out:I
    .restart local v4       #b0:I
    .restart local v12       #isAscii:Z
    .restart local v13       #lc:I
    .restart local v16       #out:I
    .restart local v17       #total:I
    :cond_4
    const/4 v12, 0x0

    .line 402
    .end local v4           #b0:I
    :cond_5
    if-eqz v12, :cond_6

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    move/from16 v23, v9

    .line 403
    goto :goto_0

    .line 406
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_6
    move v11, v13

    .local v11, in:I
    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_2b

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    .line 411
    .restart local v4       #b0:I
    const/16 v23, 0x80

    move/from16 v0, v23

    if-ge v4, v0, :cond_7

    .line 412
    add-int/lit8 v15, v16, 0x1

    .end local v16           #out:I
    .restart local v15       #out:I
    int-to-char v0, v4

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 406
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v15

    .end local v15           #out:I
    .restart local v16       #out:I
    goto :goto_3

    .line 418
    :cond_7
    and-int/lit16 v0, v4, 0xe0

    move/from16 v23, v0

    const/16 v24, 0xc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 419
    const/4 v5, -0x1

    .line 420
    .local v5, b1:I
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    .line 435
    :goto_5
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 436
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_b

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 439
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 440
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 424
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 425
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_a

    .line 426
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_9

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 428
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 429
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 431
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_9
    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 433
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 442
    :cond_b
    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 444
    :cond_c
    shl-int/lit8 v23, v4, 0x6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x7c0

    move/from16 v23, v0

    and-int/lit8 v24, v5, 0x3f

    or-int v8, v23, v24

    .line 445
    .local v8, c:I
    add-int/lit8 v15, v16, 0x1

    .end local v16           #out:I
    .restart local v15       #out:I
    int-to-char v0, v8

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 446
    add-int/lit8 v9, v9, -0x1

    .line 447
    goto/16 :goto_4

    .line 452
    .end local v5           #b1:I
    .end local v8           #c:I
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_d
    and-int/lit16 v0, v4, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 453
    const/4 v5, -0x1

    .line 454
    .restart local v5       #b1:I
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_e

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    .line 469
    :goto_6
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    .line 470
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_11

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 473
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 474
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 458
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 459
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_10

    .line 460
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_f

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 462
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 463
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 465
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_f
    const/16 v23, 0x2

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 467
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 476
    :cond_11
    const/16 v23, 0x2

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 478
    :cond_12
    const/4 v6, -0x1

    .line 479
    .local v6, b2:I
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_13

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    .line 495
    :goto_7
    and-int/lit16 v0, v6, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_17

    .line 496
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_16

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 500
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 501
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 483
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 484
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_15

    .line 485
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_14

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 488
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 489
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 491
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_14
    const/16 v23, 0x3

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 493
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 503
    :cond_16
    const/16 v23, 0x3

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 505
    :cond_17
    shl-int/lit8 v23, v4, 0xc

    const v24, 0xf000

    and-int v23, v23, v24

    shl-int/lit8 v24, v5, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfc0

    move/from16 v24, v0

    or-int v23, v23, v24

    and-int/lit8 v24, v6, 0x3f

    or-int v8, v23, v24

    .line 507
    .restart local v8       #c:I
    add-int/lit8 v15, v16, 0x1

    .end local v16           #out:I
    .restart local v15       #out:I
    int-to-char v0, v8

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 508
    add-int/lit8 v9, v9, -0x2

    .line 509
    goto/16 :goto_4

    .line 516
    .end local v5           #b1:I
    .end local v6           #b2:I
    .end local v8           #c:I
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_18
    and-int/lit16 v0, v4, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_29

    .line 517
    const/4 v5, -0x1

    .line 518
    .restart local v5       #b1:I
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_19

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    .line 533
    :goto_8
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    .line 534
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_1c

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 537
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 538
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 522
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 523
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_1b

    .line 524
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_1a

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 526
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 527
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 529
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_1a
    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 531
    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 540
    :cond_1c
    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 542
    :cond_1d
    const/4 v6, -0x1

    .line 543
    .restart local v6       #b2:I
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_1e

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    .line 559
    :goto_9
    and-int/lit16 v0, v6, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_22

    .line 560
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_21

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 564
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 565
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 547
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 548
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_20

    .line 549
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_1f

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 552
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 553
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 555
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_1f
    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 557
    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 567
    :cond_21
    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 569
    :cond_22
    const/4 v7, -0x1

    .line 570
    .local v7, b3:I
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_23

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v11

    move/from16 v0, v23

    and-int/lit16 v7, v0, 0xff

    .line 587
    :goto_a
    and-int/lit16 v0, v7, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_27

    .line 588
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_26

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x3

    int-to-byte v0, v7

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 593
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 594
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 574
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 575
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_25

    .line 576
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_24

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 580
    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 581
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 583
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_24
    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    .line 585
    :cond_25
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 596
    :cond_26
    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 600
    :cond_27
    shl-int/lit8 v23, v4, 0x2

    and-int/lit8 v23, v23, 0x1c

    shr-int/lit8 v24, v5, 0x4

    and-int/lit8 v24, v24, 0x3

    or-int v18, v23, v24

    .line 601
    .local v18, uuuuu:I
    const/16 v23, 0x10

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_28

    .line 602
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    .line 604
    :cond_28
    add-int/lit8 v19, v18, -0x1

    .line 605
    .local v19, wwww:I
    and-int/lit8 v22, v5, 0xf

    .line 606
    .local v22, zzzz:I
    and-int/lit8 v21, v6, 0x3f

    .line 607
    .local v21, yyyyyy:I
    and-int/lit8 v20, v7, 0x3f

    .line 608
    .local v20, xxxxxx:I
    const v23, 0xd800

    shl-int/lit8 v24, v19, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    or-int v23, v23, v24

    shl-int/lit8 v24, v22, 0x2

    or-int v23, v23, v24

    shr-int/lit8 v24, v21, 0x4

    or-int v10, v23, v24

    .line 609
    .local v10, hs:I
    const v23, 0xdc00

    shl-int/lit8 v24, v21, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    or-int v23, v23, v24

    or-int v14, v23, v20

    .line 612
    .local v14, ls:I
    add-int/lit8 v15, v16, 0x1

    .end local v16           #out:I
    .restart local v15       #out:I
    int-to-char v0, v10

    move/from16 v23, v0

    aput-char v23, p1, v16

    .line 613
    add-int/lit8 v16, v15, 0x1

    .end local v15           #out:I
    .restart local v16       #out:I
    int-to-char v0, v14

    move/from16 v23, v0

    aput-char v23, p1, v15

    .line 614
    add-int/lit8 v9, v9, -0x2

    move/from16 v15, v16

    .line 615
    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_4

    .line 619
    .end local v5           #b1:I
    .end local v6           #b2:I
    .end local v7           #b3:I
    .end local v10           #hs:I
    .end local v14           #ls:I
    .end local v15           #out:I
    .end local v18           #uuuuu:I
    .end local v19           #wwww:I
    .end local v20           #xxxxxx:I
    .end local v21           #yyyyyy:I
    .end local v22           #zzzz:I
    .restart local v16       #out:I
    :cond_29
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_2a

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 621
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 622
    sub-int v23, v16, p2

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_0

    .line 624
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_2a
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    goto/16 :goto_4

    .end local v4           #b0:I
    .end local v15           #out:I
    .restart local v16       #out:I
    :cond_2b
    move/from16 v15, v16

    .end local v16           #out:I
    .restart local v15       #out:I
    move/from16 v23, v9

    .line 632
    goto/16 :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
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
    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 719
    return-void
.end method

.method public skip(J)J
    .locals 9
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    move-wide v3, p1

    .line 649
    .local v3, remaining:J
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v7, v7

    new-array v0, v7, [C

    .line 651
    .local v0, ch:[C
    :cond_0
    array-length v7, v0

    int-to-long v7, v7

    cmp-long v7, v7, v3

    if-gez v7, :cond_2

    array-length v2, v0

    .line 652
    .local v2, length:I
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v2}, Lcom/amazonaws/javax/xml/stream/xerces/impl/io/UTF8Reader;->read([CII)I

    move-result v1

    .line 653
    .local v1, count:I
    if-lez v1, :cond_1

    .line 654
    int-to-long v7, v1

    sub-long/2addr v3, v7

    .line 659
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_0

    .line 661
    :cond_1
    sub-long v5, p1, v3

    .line 662
    .local v5, skipped:J
    return-wide v5

    .line 651
    .end local v1           #count:I
    .end local v2           #length:I
    .end local v5           #skipped:J
    :cond_2
    long-to-int v2, v3

    goto :goto_0
.end method
