.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HEX_BYTES:[B = null

.field private static final HEX_CHARS:[C = null

.field private static final INT_0:I = 0x30

.field private static final INT_BACKSLASH:I = 0x5c

.field private static final INT_U:I = 0x75

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/core/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

.field protected final _quoteBuffer:[C

.field protected _textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 68
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 69
    return-void
.end method

.method private _appendByteEscape(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .locals 3
    .parameter "ch"
    .parameter "escCode"
    .parameter "byteBuilder"
    .parameter "ptr"

    .prologue
    const/16 v2, 0x30

    .line 356
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 357
    const/16 v1, 0x5c

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 358
    if-gez p2, :cond_1

    .line 359
    const/16 v1, 0x75

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 360
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    .line 361
    shr-int/lit8 v0, p1, 0x8

    .line 362
    .local v0, hi:I
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 363
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 v2, v0, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 364
    and-int/lit16 p1, p1, 0xff

    .line 369
    .end local v0           #hi:I
    :goto_0
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v2, p1, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 370
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 v2, p1, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 374
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result v1

    return v1

    .line 366
    :cond_0
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 367
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_0

    .line 372
    :cond_1
    int-to-byte v1, p2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_1
.end method

.method private _appendSingleEscape(I[C)I
    .locals 4
    .parameter "escCode"
    .parameter "quoteBuffer"

    .prologue
    const/4 v2, 0x1

    .line 342
    if-gez p1, :cond_0

    .line 343
    add-int/lit8 v1, p1, 0x1

    neg-int v0, v1

    .line 344
    .local v0, value:I
    const/16 v1, 0x75

    aput-char v1, p2, v2

    .line 346
    const/4 v1, 0x4

    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    .line 347
    const/4 v1, 0x5

    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    and-int/lit8 v3, v0, 0xf

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    .line 348
    const/4 v1, 0x6

    .line 351
    .end local v0           #value:I
    :goto_0
    return v1

    .line 350
    :cond_0
    int-to-char v1, p1

    aput-char v1, p2, v2

    .line 351
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private _convertSurrogate(II)I
    .locals 3
    .parameter "firstPart"
    .parameter "secondPart"

    .prologue
    const v2, 0xdc00

    .line 383
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    const/high16 v0, 0x1

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private _throwIllegalSurrogate(I)V
    .locals 3
    .parameter "code"

    .prologue
    .line 391
    const v0, 0x10ffff

    if-le p1, v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 395
    const v0, 0xdbff

    if-gt p1, v0, :cond_1

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character point (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 4

    .prologue
    .line 77
    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 78
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/core/io/JsonStringEncoder;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 80
    .local v0, enc:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    :goto_0
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .end local v0           #enc:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    .line 82
    .restart local v0       #enc:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-object v0

    .line 78
    .end local v0           #enc:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 10
    .parameter "text"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 251
    .local v0, byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .end local v0           #byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .restart local v0       #byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 255
    :cond_0
    const/4 v3, 0x0

    .line 256
    .local v3, inputPtr:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 257
    .local v2, inputEnd:I
    const/4 v7, 0x0

    .line 258
    .local v7, outputPtr:I
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v5

    .line 259
    .local v5, outputBuffer:[B
    array-length v6, v5

    .local v6, outputEnd:I
    move v4, v3

    .line 262
    .end local v3           #inputPtr:I
    .local v4, inputPtr:I
    :goto_0
    if-ge v4, v2, :cond_f

    .line 263
    add-int/lit8 v3, v4, 0x1

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c:I
    move v4, v3

    .line 266
    .end local v3           #inputPtr:I
    .restart local v4       #inputPtr:I
    :goto_1
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_3

    .line 267
    if-lt v7, v6, :cond_1

    .line 268
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 269
    array-length v6, v5

    .line 270
    const/4 v7, 0x0

    .line 272
    :cond_1
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .local v8, outputPtr:I
    int-to-byte v9, v1

    aput-byte v9, v5, v7

    .line 273
    if-lt v4, v2, :cond_2

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v3, v4

    .line 331
    .end local v1           #c:I
    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    :goto_2
    iget-object v9, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-virtual {v9, v7}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v9

    return-object v9

    .line 276
    .end local v3           #inputPtr:I
    .end local v7           #outputPtr:I
    .restart local v1       #c:I
    .restart local v4       #inputPtr:I
    .restart local v8       #outputPtr:I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v4, v3

    .end local v3           #inputPtr:I
    .restart local v4       #inputPtr:I
    goto :goto_1

    .line 280
    :cond_3
    if-lt v7, v6, :cond_e

    .line 281
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 282
    array-length v6, v5

    .line 283
    const/4 v7, 0x0

    move v8, v7

    .line 285
    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    :goto_3
    const/16 v9, 0x800

    if-ge v1, v9, :cond_5

    .line 286
    add-int/lit8 v7, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    shr-int/lit8 v9, v1, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    move v3, v4

    .line 324
    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    :goto_4
    if-lt v7, v6, :cond_4

    .line 325
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 326
    array-length v6, v5

    .line 327
    const/4 v7, 0x0

    .line 329
    :cond_4
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    and-int/lit8 v9, v1, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v4, v3

    .line 330
    .end local v3           #inputPtr:I
    .restart local v4       #inputPtr:I
    goto :goto_0

    .line 289
    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    :cond_5
    const v9, 0xd800

    if-lt v1, v9, :cond_6

    const v9, 0xdfff

    if-le v1, v9, :cond_8

    .line 290
    :cond_6
    add-int/lit8 v7, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    shr-int/lit8 v9, v1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 291
    if-lt v7, v6, :cond_7

    .line 292
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 293
    array-length v6, v5

    .line 294
    const/4 v7, 0x0

    .line 296
    :cond_7
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v3, v4

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    goto :goto_4

    .line 298
    .end local v3           #inputPtr:I
    .end local v7           #outputPtr:I
    .restart local v4       #inputPtr:I
    .restart local v8       #outputPtr:I
    :cond_8
    const v9, 0xdbff

    if-le v1, v9, :cond_9

    .line 299
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 302
    :cond_9
    if-lt v4, v2, :cond_a

    .line 303
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 305
    :cond_a
    add-int/lit8 v3, v4, 0x1

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v1, v9}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v1

    .line 306
    const v9, 0x10ffff

    if-le v1, v9, :cond_b

    .line 307
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 309
    :cond_b
    add-int/lit8 v7, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    shr-int/lit8 v9, v1, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 310
    if-lt v7, v6, :cond_c

    .line 311
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 312
    array-length v6, v5

    .line 313
    const/4 v7, 0x0

    .line 315
    :cond_c
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    shr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    .line 316
    if-lt v8, v6, :cond_d

    .line 317
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    .line 318
    array-length v6, v5

    .line 319
    const/4 v7, 0x0

    .line 321
    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    :goto_5
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    goto/16 :goto_4

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    :cond_d
    move v7, v8

    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    goto :goto_5

    .end local v3           #inputPtr:I
    .restart local v4       #inputPtr:I
    :cond_e
    move v8, v7

    .end local v7           #outputPtr:I
    .restart local v8       #outputPtr:I
    goto/16 :goto_3

    .end local v1           #c:I
    .end local v8           #outputPtr:I
    .restart local v7       #outputPtr:I
    :cond_f
    move v3, v4

    .end local v4           #inputPtr:I
    .restart local v3       #inputPtr:I
    goto/16 :goto_2
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 17
    .parameter "input"

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 100
    .local v14, textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
    if-nez v14, :cond_0

    .line 102
    new-instance v14, Lcom/fasterxml/jackson/core/util/TextBuffer;

    .end local v14           #textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .restart local v14       #textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 104
    :cond_0
    invoke-virtual {v14}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v12

    .line 105
    .local v12, outputBuffer:[C
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v4

    .line 106
    .local v4, escCodes:[I
    array-length v3, v4

    .line 107
    .local v3, escCodeCount:I
    const/4 v6, 0x0

    .line 108
    .local v6, inPtr:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 109
    .local v8, inputLen:I
    const/4 v10, 0x0

    .line 112
    .local v10, outPtr:I
    :goto_0
    if-ge v6, v8, :cond_4

    .line 115
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 116
    .local v1, c:C
    if-ge v1, v3, :cond_2

    aget v15, v4, v1

    if-eqz v15, :cond_2

    .line 129
    add-int/lit8 v7, v6, 0x1

    .end local v6           #inPtr:I
    .local v7, inPtr:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aget v2, v4, v15

    .line 130
    .local v2, escCode:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendSingleEscape(I[C)I

    move-result v9

    .line 131
    .local v9, length:I
    add-int v15, v10, v9

    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 132
    array-length v15, v12

    sub-int v5, v15, v10

    .line 133
    .local v5, first:I
    if-lez v5, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v0, v12, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    :cond_1
    invoke-virtual {v14}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v12

    .line 137
    sub-int v13, v9, v5

    .line 138
    .local v13, second:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v5, v12, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    move v10, v13

    .end local v5           #first:I
    .end local v13           #second:I
    :goto_2
    move v6, v7

    .line 144
    .end local v7           #inPtr:I
    .restart local v6       #inPtr:I
    goto :goto_0

    .line 119
    .end local v2           #escCode:I
    .end local v9           #length:I
    :cond_2
    array-length v15, v12

    if-lt v10, v15, :cond_3

    .line 120
    invoke-virtual {v14}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v12

    .line 121
    const/4 v10, 0x0

    .line 123
    :cond_3
    add-int/lit8 v11, v10, 0x1

    .end local v10           #outPtr:I
    .local v11, outPtr:I
    aput-char v1, v12, v10

    .line 124
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v8, :cond_5

    move v10, v11

    .line 145
    .end local v1           #c:C
    .end local v11           #outPtr:I
    .restart local v10       #outPtr:I
    :cond_4
    invoke-virtual {v14, v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 146
    invoke-virtual {v14}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v15

    return-object v15

    .end local v10           #outPtr:I
    .restart local v1       #c:C
    .restart local v11       #outPtr:I
    :cond_5
    move v10, v11

    .line 127
    .end local v11           #outPtr:I
    .restart local v10       #outPtr:I
    goto :goto_1

    .line 141
    .end local v6           #inPtr:I
    .restart local v2       #escCode:I
    .restart local v7       #inPtr:I
    .restart local v9       #length:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v0, v12, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    add-int/2addr v10, v9

    goto :goto_2
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 12
    .parameter "text"

    .prologue
    const/16 v11, 0x7f

    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 156
    .local v0, byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .end local v0           #byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .restart local v0       #byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 160
    :cond_0
    const/4 v5, 0x0

    .line 161
    .local v5, inputPtr:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 162
    .local v4, inputEnd:I
    const/4 v8, 0x0

    .line 163
    .local v8, outputPtr:I
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v7

    .line 166
    .local v7, outputBuffer:[B
    :goto_0
    if-ge v5, v4, :cond_5

    .line 167
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v2

    .line 171
    .local v2, escCodes:[I
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 172
    .local v1, ch:I
    if-gt v1, v11, :cond_1

    aget v10, v2, v1

    if-eqz v10, :cond_3

    .line 184
    :cond_1
    array-length v10, v7

    if-lt v8, v10, :cond_2

    .line 185
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 186
    const/4 v8, 0x0

    .line 189
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5           #inputPtr:I
    .local v6, inputPtr:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 190
    if-gt v1, v11, :cond_7

    .line 191
    aget v3, v2, v1

    .line 193
    .local v3, escape:I
    invoke-direct {p0, v1, v3, v0, v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByteEscape(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    move-result v8

    .line 194
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v7

    move v5, v6

    .line 195
    .end local v6           #inputPtr:I
    .restart local v5       #inputPtr:I
    goto :goto_0

    .line 175
    .end local v3           #escape:I
    :cond_3
    array-length v10, v7

    if-lt v8, v10, :cond_4

    .line 176
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 177
    const/4 v8, 0x0

    .line 179
    :cond_4
    add-int/lit8 v9, v8, 0x1

    .end local v8           #outputPtr:I
    .local v9, outputPtr:I
    int-to-byte v10, v1

    aput-byte v10, v7, v8

    .line 180
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v4, :cond_6

    move v8, v9

    .line 241
    .end local v1           #ch:I
    .end local v2           #escCodes:[I
    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    :cond_5
    iget-object v10, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-virtual {v10, v8}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v10

    return-object v10

    .end local v8           #outputPtr:I
    .restart local v1       #ch:I
    .restart local v2       #escCodes:[I
    .restart local v9       #outputPtr:I
    :cond_6
    move v8, v9

    .line 183
    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    goto :goto_1

    .line 196
    .end local v5           #inputPtr:I
    .restart local v6       #inputPtr:I
    :cond_7
    const/16 v10, 0x7ff

    if-gt v1, v10, :cond_9

    .line 197
    add-int/lit8 v9, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    shr-int/lit8 v10, v1, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 198
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    move v5, v6

    .line 235
    .end local v6           #inputPtr:I
    .restart local v5       #inputPtr:I
    :goto_2
    array-length v10, v7

    if-lt v8, v10, :cond_8

    .line 236
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 237
    const/4 v8, 0x0

    .line 239
    :cond_8
    add-int/lit8 v9, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    int-to-byte v10, v1

    aput-byte v10, v7, v8

    move v8, v9

    .line 240
    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    goto :goto_0

    .line 201
    .end local v5           #inputPtr:I
    .restart local v6       #inputPtr:I
    :cond_9
    const v10, 0xd800

    if-lt v1, v10, :cond_a

    const v10, 0xdfff

    if-le v1, v10, :cond_b

    .line 202
    :cond_a
    add-int/lit8 v9, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    shr-int/lit8 v10, v1, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 203
    array-length v10, v7

    if-lt v9, v10, :cond_11

    .line 204
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 205
    const/4 v8, 0x0

    .line 207
    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    :goto_3
    add-int/lit8 v9, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 208
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    move v5, v6

    .end local v6           #inputPtr:I
    .restart local v5       #inputPtr:I
    goto :goto_2

    .line 210
    .end local v5           #inputPtr:I
    .restart local v6       #inputPtr:I
    :cond_b
    const v10, 0xdbff

    if-le v1, v10, :cond_c

    .line 211
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 214
    :cond_c
    if-lt v6, v4, :cond_d

    .line 215
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 217
    :cond_d
    add-int/lit8 v5, v6, 0x1

    .end local v6           #inputPtr:I
    .restart local v5       #inputPtr:I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v1, v10}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v1

    .line 218
    const v10, 0x10ffff

    if-le v1, v10, :cond_e

    .line 219
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_throwIllegalSurrogate(I)V

    .line 221
    :cond_e
    add-int/lit8 v9, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    shr-int/lit8 v10, v1, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 222
    array-length v10, v7

    if-lt v9, v10, :cond_10

    .line 223
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 224
    const/4 v8, 0x0

    .line 226
    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    shr-int/lit8 v10, v1, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 227
    array-length v10, v7

    if-lt v9, v10, :cond_f

    .line 228
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v7

    .line 229
    const/4 v8, 0x0

    .line 231
    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    :goto_5
    add-int/lit8 v9, v8, 0x1

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    shr-int/lit8 v10, v1, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 232
    and-int/lit8 v10, v1, 0x3f

    or-int/lit16 v1, v10, 0x80

    move v8, v9

    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    goto/16 :goto_2

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    :cond_f
    move v8, v9

    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    goto :goto_5

    .end local v8           #outputPtr:I
    .restart local v9       #outputPtr:I
    :cond_10
    move v8, v9

    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    goto :goto_4

    .end local v5           #inputPtr:I
    .end local v8           #outputPtr:I
    .restart local v6       #inputPtr:I
    .restart local v9       #outputPtr:I
    :cond_11
    move v8, v9

    .end local v9           #outputPtr:I
    .restart local v8       #outputPtr:I
    goto :goto_3
.end method
