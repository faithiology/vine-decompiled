.class public final Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "StreamBufferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/StreamBufferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RewindableInputStream"
.end annotation


# static fields
.field static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40


# instance fields
.field private fData:[B

.field private fEndOffset:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLength:I

.field private fMark:I

.field private fOffset:I

.field private fStartOffset:I

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/StreamBufferManager;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/StreamBufferManager;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter "is"

    .prologue
    const/4 v1, 0x0

    .line 334
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->this$0:Lcom/amazonaws/javax/xml/stream/StreamBufferManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 335
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    .line 336
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 337
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fStartOffset:I

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    .line 339
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 340
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    .line 341
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fMark:I

    .line 342
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    sub-int v0, v1, v2

    .line 449
    .local v0, bytesLeft:I
    if-nez v0, :cond_0

    .line 450
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_1

    .line 451
    const/4 v0, -0x1

    .line 455
    .end local v0           #bytesLeft:I
    :cond_0
    :goto_0
    return v0

    .line 453
    .restart local v0       #bytesLeft:I
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

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
    .line 472
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 476
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "howMuch"

    .prologue
    .line 459
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fMark:I

    .line 460
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, b:I
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    if-ge v3, v4, :cond_1

    .line 355
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 372
    :cond_0
    :goto_0
    return v2

    .line 357
    :cond_1
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-eq v3, v4, :cond_0

    .line 360
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 361
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    shl-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 362
    .local v1, newData:[B
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    .line 365
    .end local v1           #newData:[B
    :cond_2
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 366
    if-ne v0, v2, :cond_3

    .line 367
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    goto :goto_0

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 371
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 372
    and-int/lit16 v2, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    sub-int v0, v1, v2

    .line 377
    .local v0, bytesLeft:I
    if-nez v0, :cond_1

    .line 378
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_0

    .line 379
    const/4 v1, -0x1

    .line 411
    :goto_0
    return v1

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 399
    :cond_1
    if-ge p3, v0, :cond_2

    .line 400
    if-gtz p3, :cond_3

    .line 401
    const/4 v1, 0x0

    goto :goto_0

    .line 405
    :cond_2
    move p3, v0

    .line 407
    :cond_3
    if-eqz p1, :cond_4

    .line 408
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fData:[B

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    :cond_4
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move v1, p3

    .line 411
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fMark:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 465
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fStartOffset:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 350
    return-void
.end method

.method public setStartOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 345
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fStartOffset:I

    .line 346
    return-void
.end method

.method public skip(J)J
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 417
    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-wide v1

    .line 420
    :cond_1
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fLength:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    sub-int v0, v3, v4

    .line 421
    .local v0, bytesLeft:I
    if-nez v0, :cond_2

    .line 422
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-eq v3, v4, :cond_0

    .line 425
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    goto :goto_0

    .line 427
    :cond_2
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_3

    .line 428
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    move-wide v1, p1

    .line 429
    goto :goto_0

    .line 431
    :cond_3
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    .line 432
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_4

    .line 433
    int-to-long v1, v0

    goto :goto_0

    .line 435
    :cond_4
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 444
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/StreamBufferManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    goto :goto_0
.end method
