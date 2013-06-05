.class public final Lorg/codehaus/jackson/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field static final MAX_SEGMENT_LEN:I = 0x40000

.field static final MIN_SEGMENT_LEN:I = 0x3e8

.field static final NO_CHARS:[C


# instance fields
.field private final _allocator:Lorg/codehaus/jackson/util/BufferRecycler;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _hasSegments:Z

.field private _inputBuffer:[C

.field private _inputLen:I

.field private _inputStart:I

.field private _resultArray:[C

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .locals 1
    .parameter "allocator"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 122
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 123
    return-void
.end method

.method private final _charArray(I)[C
    .locals 1
    .parameter "len"

    .prologue
    .line 686
    new-array v0, p1, [C

    return-object v0
.end method

.method private buildResultArray()[C
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 652
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 653
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 682
    :goto_0
    return-object v5

    .line 658
    :cond_0
    iget v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v7, :cond_2

    .line 659
    iget v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    if-ge v7, v8, :cond_1

    .line 660
    sget-object v5, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 662
    :cond_1
    iget v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {p0, v7}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v5

    .line 663
    .local v5, result:[C
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-static {v7, v8, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 666
    .end local v5           #result:[C
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v6

    .line 667
    .local v6, size:I
    if-ge v6, v8, :cond_3

    .line 668
    sget-object v5, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_0

    .line 670
    :cond_3
    const/4 v4, 0x0

    .line 671
    .local v4, offset:I
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v5

    .line 672
    .restart local v5       #result:[C
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 673
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, len:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 674
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    move-object v0, v7

    check-cast v0, [C

    .line 675
    .local v0, curr:[C
    array-length v1, v0

    .line 676
    .local v1, currLen:I
    invoke-static {v0, v10, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    add-int/2addr v4, v1

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 680
    .end local v0           #curr:[C
    .end local v1           #currLen:I
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_4
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v8, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {v7, v10, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final clearSegments()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-boolean v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 250
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 252
    return-void
.end method

.method private expand(I)V
    .locals 5
    .parameter "minNewSegmentSize"

    .prologue
    .line 632
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 633
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 635
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 636
    .local v0, curr:[C
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 637
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    array-length v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 639
    array-length v1, v0

    .line 641
    .local v1, oldLen:I
    shr-int/lit8 v2, v1, 0x1

    .line 642
    .local v2, sizeAddition:I
    if-ge v2, p1, :cond_1

    .line 643
    move v2, p1

    .line 645
    :cond_1
    const/high16 v3, 0x4

    add-int v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 646
    const/4 v3, 0x0

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 647
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 648
    return-void
.end method

.method private final findBuffer(I)[C
    .locals 2
    .parameter "needed"

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private unshare(I)V
    .locals 6
    .parameter "needExtra"

    .prologue
    const/4 v5, 0x0

    .line 606
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 607
    .local v2, sharedLen:I
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 608
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 609
    .local v0, inputBuf:[C
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 610
    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 611
    .local v3, start:I
    const/4 v4, -0x1

    iput v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 614
    add-int v1, v2, p1

    .line 615
    .local v1, needed:I
    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v4, v4

    if-le v1, v4, :cond_1

    .line 616
    :cond_0
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 618
    :cond_1
    if-lez v2, :cond_2

    .line 619
    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    :cond_2
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 622
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 623
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 411
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_0

    .line 412
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 414
    :cond_0
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 415
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 417
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 418
    .local v0, curr:[C
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 419
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 420
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 422
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    aput-char p1, v0, v1

    .line 423
    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 5
    .parameter "str"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 459
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v2, :cond_0

    .line 460
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 462
    :cond_0
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 463
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 466
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 467
    .local v0, curr:[C
    array-length v2, v0

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int v1, v2, v3

    .line 468
    .local v1, max:I
    if-lt v1, p3, :cond_1

    .line 469
    add-int v2, p2, p3

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 470
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 485
    :goto_0
    return-void

    .line 473
    :cond_1
    if-lez v1, :cond_2

    .line 474
    add-int v2, p2, v1

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {p1, p2, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 475
    sub-int/2addr p3, v1

    .line 476
    add-int/2addr p2, v1

    .line 481
    :cond_2
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 482
    add-int v2, p2, p3

    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 483
    iput p3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 4
    .parameter "c"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 428
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v2, :cond_0

    .line 429
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 431
    :cond_0
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 432
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 435
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 436
    .local v0, curr:[C
    array-length v2, v0

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int v1, v2, v3

    .line 438
    .local v1, max:I
    if-lt v1, p3, :cond_1

    .line 439
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 454
    :goto_0
    return-void

    .line 443
    :cond_1
    if-lez v1, :cond_2

    .line 444
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    add-int/2addr p2, v1

    .line 446
    sub-int/2addr p3, v1

    .line 450
    :cond_2
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 451
    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iput p3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    goto :goto_0
.end method

.method public contentsAsArray()[C
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 354
    .local v0, result:[C
    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->buildResultArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 357
    :cond_0
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 380
    :goto_0
    return-object v0

    .line 372
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_1

    .line 373
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 376
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    if-nez v0, :cond_2

    .line 377
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    .line 380
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public contentsAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 314
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 316
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v6, :cond_1

    .line 317
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 348
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    :goto_1
    return-object v6

    .line 320
    :cond_1
    iget v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v6, :cond_3

    .line 321
    iget v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 322
    const-string v6, ""

    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_1

    .line 324
    :cond_2
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    .line 327
    :cond_3
    iget v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 328
    .local v5, segLen:I
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 330
    .local v1, currLen:I
    if-nez v5, :cond_5

    .line 331
    if-nez v1, :cond_4

    const-string v6, ""

    :goto_2
    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-direct {v6, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 333
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    add-int v6, v5, v1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 335
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 336
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, len:I
    :goto_3
    if-ge v2, v3, :cond_6

    .line 337
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 338
    .local v0, curr:[C
    array-length v6, v0

    invoke-virtual {v4, v0, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 342
    .end local v0           #curr:[C
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_6
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {v4, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_0
.end method

.method public final emptyAndGetCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 516
    const/4 v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 517
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 518
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 520
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 521
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 522
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 525
    iget-boolean v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v1, :cond_0

    .line 526
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 529
    .local v0, curr:[C
    if-nez v0, :cond_1

    .line 530
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 532
    :cond_1
    return-object v0
.end method

.method public ensureNotShared()V
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 405
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 407
    :cond_0
    return-void
.end method

.method public expandCurrentSegment()[C
    .locals 6

    .prologue
    const/high16 v5, 0x4

    const/4 v4, 0x0

    .line 567
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 569
    .local v0, curr:[C
    array-length v1, v0

    .line 571
    .local v1, len:I
    if-ne v1, v5, :cond_0

    const v2, 0x40001

    .line 573
    .local v2, newLen:I
    :goto_0
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 574
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v3

    .line 571
    .end local v2           #newLen:I
    :cond_0
    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method public finishCurrentSegment()[C
    .locals 5

    .prologue
    .line 545
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 546
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 548
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 549
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v2, v3

    .line 551
    .local v2, oldLen:I
    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 553
    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v2

    const/high16 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 554
    .local v1, newLen:I
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 555
    .local v0, curr:[C
    const/4 v3, 0x0

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 556
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 557
    return-object v0
.end method

.method public getCurrentSegment()[C
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 499
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_1

    .line 500
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 510
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v1

    .line 502
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 503
    .local v0, curr:[C
    if-nez v0, :cond_2

    .line 504
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 505
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 507
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->expand(I)V

    goto :goto_0
.end method

.method public getCurrentSegmentSize()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 303
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    goto :goto_0

    .line 299
    :cond_2
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public getTextOffset()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseBuffers()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    if-nez v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 143
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 144
    .local v0, buf:[C
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 145
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_0
.end method

.method public resetWithCopy([CII)V
    .locals 3
    .parameter "buf"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 197
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 199
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 203
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 208
    :cond_0
    :goto_0
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 210
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_0
.end method

.method public resetWithEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 157
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 158
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 160
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 161
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 165
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 168
    :cond_0
    return-void
.end method

.method public resetWithShared([CII)V
    .locals 1
    .parameter "buf"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 183
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 184
    iput p2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 185
    iput p3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 188
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 191
    :cond_0
    return-void
.end method

.method public resetWithString(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 216
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 218
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 219
    iput-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 221
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 224
    :cond_0
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 226
    return-void
.end method

.method public setCurrentLength(I)V
    .locals 0
    .parameter "len"

    .prologue
    .line 540
    iput p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 541
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 264
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_0

    .line 265
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 274
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    array-length v0, v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 274
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
