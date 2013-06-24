.class public Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IplImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_core$IplImage$HeaderReleaseDeallocator;,
        Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final gamma22:[B

.field public static final gamma22inv:[B


# instance fields
.field private bufferedImage:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    const-wide v6, 0x406fe00000000000L

    .line 410
    const-class v1, Lcom/googlecode/javacv/cpp/opencv_core;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    .line 619
    new-array v1, v8, [B

    sput-object v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B

    .line 620
    new-array v1, v8, [B

    sput-object v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B

    .line 622
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v8, :cond_1

    .line 623
    sget-object v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B

    int-to-double v2, v0

    div-double/2addr v2, v6

    const-wide v4, 0x400199999999999aL

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 624
    sget-object v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B

    int-to-double v2, v0

    div-double/2addr v2, v6

    const-wide v4, 0x3fdd1745d1745d17L

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 626
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V

    .line 1089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    .line 411
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V

    .line 1089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    .line 412
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 1089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    .line 413
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter "channels"

    .prologue
    .line 429
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public static create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter "channels"
    .parameter "origin"

    .prologue
    .line 439
    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 440
    .local v0, i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 443
    :cond_0
    return-object v0
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2
    .parameter "size"
    .parameter "depth"
    .parameter "channels"

    .prologue
    .line 422
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateImage(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 423
    .local v0, i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-eqz v0, :cond_0

    .line 424
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 426
    :cond_0
    return-object v0
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;III)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "size"
    .parameter "depth"
    .parameter "channels"
    .parameter "origin"

    .prologue
    .line 432
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 433
    .local v0, i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 436
    :cond_0
    return-object v0
.end method

.method public static createCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "template"

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public static createFrom(Ljava/awt/image/BufferedImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2
    .parameter "image"

    .prologue
    .line 488
    const-wide/high16 v0, 0x3ff0

    invoke-static {p0, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createFrom(Ljava/awt/image/BufferedImage;D)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public static createFrom(Ljava/awt/image/BufferedImage;D)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "image"
    .parameter "gamma"

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createFrom(Ljava/awt/image/BufferedImage;DZ)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public static createFrom(Ljava/awt/image/BufferedImage;DZ)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "image"
    .parameter "gamma"
    .parameter "flipChannels"

    .prologue
    .line 494
    if-nez p0, :cond_0

    .line 495
    const/4 v1, 0x0

    .line 521
    :goto_0
    return-object v1

    .line 497
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v3

    .line 498
    .local v3, sm:Ljava/awt/image/SampleModel;
    const/4 v0, 0x0

    .local v0, depth:I
    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v2

    .line 499
    .local v2, numChannels:I
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 508
    :goto_1
    if-eqz v0, :cond_1

    if-nez v2, :cond_2

    .line 509
    :cond_1
    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 516
    sget-boolean v4, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 504
    :pswitch_0
    const/16 v0, 0x8

    .line 505
    const/4 v2, 0x4

    goto :goto_1

    .line 510
    :pswitch_1
    const/16 v0, 0x8

    .line 519
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    invoke-static {v4, v5, v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    .line 520
    .local v1, i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyFrom(Ljava/awt/image/BufferedImage;DZ)V

    goto :goto_0

    .line 511
    .end local v1           #i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    :pswitch_2
    const/16 v0, 0x10

    goto :goto_2

    .line 512
    :pswitch_3
    const v0, -0x7ffffff0

    goto :goto_2

    .line 513
    :pswitch_4
    const v0, -0x7fffffe0

    goto :goto_2

    .line 514
    :pswitch_5
    const/16 v0, 0x20

    goto :goto_2

    .line 515
    :pswitch_6
    const/16 v0, 0x40

    goto :goto_2

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 509
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter "channels"

    .prologue
    .line 454
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public static createHeader(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter "channels"
    .parameter "origin"

    .prologue
    .line 464
    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 465
    .local v0, i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0, p4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 468
    :cond_0
    return-object v0
.end method

.method public static createHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2
    .parameter "size"
    .parameter "depth"
    .parameter "channels"

    .prologue
    .line 447
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateImageHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 448
    .local v0, i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-eqz v0, :cond_0

    .line 449
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$HeaderReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$HeaderReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 451
    :cond_0
    return-object v0
.end method

.method public static createHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;III)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "size"
    .parameter "depth"
    .parameter "channels"
    .parameter "origin"

    .prologue
    .line 457
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 458
    .local v0, i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 461
    :cond_0
    return-object v0
.end method

.method public static createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 5
    .parameter "image"
    .parameter "template"

    .prologue
    .line 475
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 477
    :cond_0
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v2

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v3

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object p0

    .line 479
    iget-object v0, p1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->cloneBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    .line 483
    :cond_1
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 484
    return-object p0
.end method

.method public static decodeGamma22(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 628
    sget-object v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static encodeGamma22(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 631
    sget-object v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static flipCopyWithGamma(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IZDZI)V
    .locals 14
    .parameter "srcBuf"
    .parameter "srcStep"
    .parameter "dstBuf"
    .parameter "dstStep"
    .parameter "signed"
    .parameter "gamma"
    .parameter "flip"
    .parameter "channels"

    .prologue
    .line 635
    sget-boolean v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    move-object/from16 v0, p2

    if-ne p0, v0, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 636
    :cond_0
    move/from16 v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 637
    .local v7, w:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .local v6, srcLine:I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 638
    .local v3, dstLine:I
    move/from16 v0, p8

    new-array v2, v0, [B

    .line 639
    .local v2, buffer:[B
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    if-ge v6, v10, :cond_12

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    if-ge v3, v10, :cond_12

    .line 640
    if-eqz p7, :cond_1

    .line 641
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    sub-int/2addr v10, v6

    sub-int/2addr v10, p1

    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 645
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 646
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 647
    if-eqz p4, :cond_7

    .line 648
    const/4 v10, 0x1

    move/from16 v0, p8

    if-le v0, v10, :cond_5

    .line 649
    const/4 v8, 0x0

    .local v8, x:I
    :goto_2
    if-ge v8, v7, :cond_11

    .line 650
    const/4 v9, 0x0

    .local v9, z:I
    :goto_3
    move/from16 v0, p8

    if-ge v9, v0, :cond_3

    .line 651
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 653
    .local v4, in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p5, v10

    if-nez v10, :cond_2

    .line 654
    int-to-byte v5, v4

    .line 658
    .local v5, out:B
    :goto_4
    aput-byte v5, v2, v9

    .line 650
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 643
    .end local v4           #in:I
    .end local v5           #out:B
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_1
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 656
    .restart local v4       #in:I
    .restart local v8       #x:I
    .restart local v9       #z:I
    :cond_2
    int-to-double v10, v4

    const-wide v12, 0x405fc00000000000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p5

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x405fc00000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-byte v5, v10

    .restart local v5       #out:B
    goto :goto_4

    .line 660
    .end local v4           #in:I
    .end local v5           #out:B
    :cond_3
    add-int/lit8 v9, p8, -0x1

    :goto_5
    if-ltz v9, :cond_4

    .line 661
    aget-byte v10, v2, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 660
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 649
    :cond_4
    add-int v8, v8, p8

    goto :goto_2

    .line 665
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_5
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_6
    if-ge v8, v7, :cond_11

    .line 666
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 668
    .restart local v4       #in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p5, v10

    if-nez v10, :cond_6

    .line 669
    int-to-byte v5, v4

    .line 673
    .restart local v5       #out:B
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 665
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 671
    .end local v5           #out:B
    :cond_6
    int-to-double v10, v4

    const-wide v12, 0x405fc00000000000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p5

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x405fc00000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-byte v5, v10

    .restart local v5       #out:B
    goto :goto_7

    .line 677
    .end local v4           #in:I
    .end local v5           #out:B
    .end local v8           #x:I
    :cond_7
    const/4 v10, 0x1

    move/from16 v0, p8

    if-le v0, v10, :cond_d

    .line 678
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_8
    if-ge v8, v7, :cond_11

    .line 679
    const/4 v9, 0x0

    .restart local v9       #z:I
    :goto_9
    move/from16 v0, p8

    if-ge v9, v0, :cond_b

    .line 681
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v4, v10, 0xff

    .line 682
    .restart local v4       #in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p5, v10

    if-nez v10, :cond_8

    .line 683
    int-to-byte v5, v4

    .line 691
    .restart local v5       #out:B
    :goto_a
    aput-byte v5, v2, v9

    .line 679
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 684
    .end local v5           #out:B
    :cond_8
    const-wide v10, 0x400199999999999aL

    cmpl-double v10, p5, v10

    if-nez v10, :cond_9

    .line 685
    sget-object v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B

    aget-byte v5, v10, v4

    .restart local v5       #out:B
    goto :goto_a

    .line 686
    .end local v5           #out:B
    :cond_9
    const-wide v10, 0x3fdd1745d1745d17L

    cmpl-double v10, p5, v10

    if-nez v10, :cond_a

    .line 687
    sget-object v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B

    aget-byte v5, v10, v4

    .restart local v5       #out:B
    goto :goto_a

    .line 689
    .end local v5           #out:B
    :cond_a
    int-to-double v10, v4

    const-wide v12, 0x406fe00000000000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p5

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-byte v5, v10

    .restart local v5       #out:B
    goto :goto_a

    .line 693
    .end local v4           #in:I
    .end local v5           #out:B
    :cond_b
    add-int/lit8 v9, p8, -0x1

    :goto_b
    if-ltz v9, :cond_c

    .line 694
    aget-byte v10, v2, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 693
    add-int/lit8 v9, v9, -0x1

    goto :goto_b

    .line 678
    :cond_c
    add-int v8, v8, p8

    goto :goto_8

    .line 698
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_d
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_c
    if-ge v8, v7, :cond_11

    .line 700
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v4, v10, 0xff

    .line 701
    .restart local v4       #in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p5, v10

    if-nez v10, :cond_e

    .line 702
    int-to-byte v5, v4

    .line 710
    .restart local v5       #out:B
    :goto_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 698
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 703
    .end local v5           #out:B
    :cond_e
    const-wide v10, 0x400199999999999aL

    cmpl-double v10, p5, v10

    if-nez v10, :cond_f

    .line 704
    sget-object v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B

    aget-byte v5, v10, v4

    .restart local v5       #out:B
    goto :goto_d

    .line 705
    .end local v5           #out:B
    :cond_f
    const-wide v10, 0x3fdd1745d1745d17L

    cmpl-double v10, p5, v10

    if-nez v10, :cond_10

    .line 706
    sget-object v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B

    aget-byte v5, v10, v4

    .restart local v5       #out:B
    goto :goto_d

    .line 708
    .end local v5           #out:B
    :cond_10
    int-to-double v10, v4

    const-wide v12, 0x406fe00000000000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p5

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-byte v5, v10

    .restart local v5       #out:B
    goto :goto_d

    .line 714
    .end local v4           #in:I
    .end local v5           #out:B
    :cond_11
    add-int/2addr v6, p1

    .line 715
    add-int v3, v3, p3

    goto/16 :goto_0

    .line 717
    .end local v8           #x:I
    :cond_12
    return-void
.end method

.method public static flipCopyWithGamma(Ljava/nio/DoubleBuffer;ILjava/nio/DoubleBuffer;IDZI)V
    .locals 14
    .parameter "srcBuf"
    .parameter "srcStep"
    .parameter "dstBuf"
    .parameter "dstStep"
    .parameter "gamma"
    .parameter "flip"
    .parameter "channels"

    .prologue
    .line 889
    sget-boolean v12, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p2

    if-ne p0, v0, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 890
    :cond_0
    move/from16 v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 891
    .local v9, w:I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v8

    .local v8, srcLine:I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/DoubleBuffer;->position()I

    move-result v3

    .line 892
    .local v3, dstLine:I
    move/from16 v0, p7

    new-array v2, v0, [D

    .line 893
    .local v2, buffer:[D
    :goto_0
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v12

    if-ge v8, v12, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v12

    if-ge v3, v12, :cond_8

    .line 894
    if-eqz p6, :cond_1

    .line 895
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v12

    sub-int/2addr v12, v8

    sub-int/2addr v12, p1

    invoke-virtual {p0, v12}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 899
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 900
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 901
    const/4 v12, 0x1

    move/from16 v0, p7

    if-le v0, v12, :cond_5

    .line 902
    const/4 v10, 0x0

    .local v10, x:I
    :goto_2
    if-ge v10, v9, :cond_7

    .line 903
    const/4 v11, 0x0

    .local v11, z:I
    :goto_3
    move/from16 v0, p7

    if-ge v11, v0, :cond_3

    .line 904
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v4

    .line 906
    .local v4, in:D
    const-wide/high16 v12, 0x3ff0

    cmpl-double v12, p4, v12

    if-nez v12, :cond_2

    .line 907
    move-wide v6, v4

    .line 911
    .local v6, out:D
    :goto_4
    aput-wide v6, v2, v11

    .line 903
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 897
    .end local v4           #in:D
    .end local v6           #out:D
    .end local v10           #x:I
    .end local v11           #z:I
    :cond_1
    invoke-virtual {p0, v8}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 909
    .restart local v4       #in:D
    .restart local v10       #x:I
    .restart local v11       #z:I
    :cond_2
    move-wide/from16 v0, p4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .restart local v6       #out:D
    goto :goto_4

    .line 913
    .end local v4           #in:D
    .end local v6           #out:D
    :cond_3
    add-int/lit8 v11, p7, -0x1

    :goto_5
    if-ltz v11, :cond_4

    .line 914
    aget-wide v12, v2, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 913
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 902
    :cond_4
    add-int v10, v10, p7

    goto :goto_2

    .line 918
    .end local v10           #x:I
    .end local v11           #z:I
    :cond_5
    const/4 v10, 0x0

    .restart local v10       #x:I
    :goto_6
    if-ge v10, v9, :cond_7

    .line 919
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v4

    .line 921
    .restart local v4       #in:D
    const-wide/high16 v12, 0x3ff0

    cmpl-double v12, p4, v12

    if-nez v12, :cond_6

    .line 922
    move-wide v6, v4

    .line 926
    .restart local v6       #out:D
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 918
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 924
    .end local v6           #out:D
    :cond_6
    move-wide/from16 v0, p4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .restart local v6       #out:D
    goto :goto_7

    .line 929
    .end local v4           #in:D
    .end local v6           #out:D
    :cond_7
    add-int/2addr v8, p1

    .line 930
    add-int v3, v3, p3

    goto/16 :goto_0

    .line 932
    .end local v10           #x:I
    :cond_8
    return-void
.end method

.method public static flipCopyWithGamma(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;IDZI)V
    .locals 12
    .parameter "srcBuf"
    .parameter "srcStep"
    .parameter "dstBuf"
    .parameter "dstStep"
    .parameter "gamma"
    .parameter "flip"
    .parameter "channels"

    .prologue
    .line 843
    sget-boolean v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-ne p0, p2, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 844
    :cond_0
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 845
    .local v7, w:I
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v6

    .local v6, srcLine:I
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I

    move-result v3

    .line 846
    .local v3, dstLine:I
    move/from16 v0, p7

    new-array v2, v0, [F

    .line 847
    .local v2, buffer:[F
    :goto_0
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v10

    if-ge v6, v10, :cond_8

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v10

    if-ge v3, v10, :cond_8

    .line 848
    if-eqz p6, :cond_1

    .line 849
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v10

    sub-int/2addr v10, v6

    sub-int/2addr v10, p1

    invoke-virtual {p0, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 853
    :goto_1
    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 854
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 855
    const/4 v10, 0x1

    move/from16 v0, p7

    if-le v0, v10, :cond_5

    .line 856
    const/4 v8, 0x0

    .local v8, x:I
    :goto_2
    if-ge v8, v7, :cond_7

    .line 857
    const/4 v9, 0x0

    .local v9, z:I
    :goto_3
    move/from16 v0, p7

    if-ge v9, v0, :cond_3

    .line 858
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    .line 860
    .local v4, in:F
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p4, v10

    if-nez v10, :cond_2

    .line 861
    move v5, v4

    .line 865
    .local v5, out:F
    :goto_4
    aput v5, v2, v9

    .line 857
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 851
    .end local v4           #in:F
    .end local v5           #out:F
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_1
    invoke-virtual {p0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 863
    .restart local v4       #in:F
    .restart local v8       #x:I
    .restart local v9       #z:I
    :cond_2
    float-to-double v10, v4

    move-wide/from16 v0, p4

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v5, v10

    .restart local v5       #out:F
    goto :goto_4

    .line 867
    .end local v4           #in:F
    .end local v5           #out:F
    :cond_3
    add-int/lit8 v9, p7, -0x1

    :goto_5
    if-ltz v9, :cond_4

    .line 868
    aget v10, v2, v9

    invoke-virtual {p2, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 867
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 856
    :cond_4
    add-int v8, v8, p7

    goto :goto_2

    .line 872
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_5
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_6
    if-ge v8, v7, :cond_7

    .line 873
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    .line 875
    .restart local v4       #in:F
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p4, v10

    if-nez v10, :cond_6

    .line 876
    move v5, v4

    .line 880
    .restart local v5       #out:F
    :goto_7
    invoke-virtual {p2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 872
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 878
    .end local v5           #out:F
    :cond_6
    float-to-double v10, v4

    move-wide/from16 v0, p4

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v5, v10

    .restart local v5       #out:F
    goto :goto_7

    .line 883
    .end local v4           #in:F
    .end local v5           #out:F
    :cond_7
    add-int/2addr v6, p1

    .line 884
    add-int/2addr v3, p3

    goto/16 :goto_0

    .line 886
    .end local v8           #x:I
    :cond_8
    return-void
.end method

.method public static flipCopyWithGamma(Ljava/nio/IntBuffer;ILjava/nio/IntBuffer;IDZI)V
    .locals 14
    .parameter "srcBuf"
    .parameter "srcStep"
    .parameter "dstBuf"
    .parameter "dstStep"
    .parameter "gamma"
    .parameter "flip"
    .parameter "channels"

    .prologue
    .line 797
    sget-boolean v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    move-object/from16 v0, p2

    if-ne p0, v0, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 798
    :cond_0
    move/from16 v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 799
    .local v7, w:I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v6

    .local v6, srcLine:I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/IntBuffer;->position()I

    move-result v3

    .line 800
    .local v3, dstLine:I
    move/from16 v0, p7

    new-array v2, v0, [I

    .line 801
    .local v2, buffer:[I
    :goto_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v10

    if-ge v6, v10, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/IntBuffer;->capacity()I

    move-result v10

    if-ge v3, v10, :cond_8

    .line 802
    if-eqz p6, :cond_1

    .line 803
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v10

    sub-int/2addr v10, v6

    sub-int/2addr v10, p1

    invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 807
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 808
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 809
    const/4 v10, 0x1

    move/from16 v0, p7

    if-le v0, v10, :cond_5

    .line 810
    const/4 v8, 0x0

    .local v8, x:I
    :goto_2
    if-ge v8, v7, :cond_7

    .line 811
    const/4 v9, 0x0

    .local v9, z:I
    :goto_3
    move/from16 v0, p7

    if-ge v9, v0, :cond_3

    .line 812
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    .line 814
    .local v4, in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p4, v10

    if-nez v10, :cond_2

    .line 815
    move v5, v4

    .line 819
    .local v5, out:I
    :goto_4
    aput v5, v2, v9

    .line 811
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 805
    .end local v4           #in:I
    .end local v5           #out:I
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_1
    invoke-virtual {p0, v6}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 817
    .restart local v4       #in:I
    .restart local v8       #x:I
    .restart local v9       #z:I
    :cond_2
    int-to-double v10, v4

    const-wide v12, 0x41dfffffffc00000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p4

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x41dfffffffc00000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v5, v10

    .restart local v5       #out:I
    goto :goto_4

    .line 821
    .end local v4           #in:I
    .end local v5           #out:I
    :cond_3
    add-int/lit8 v9, p7, -0x1

    :goto_5
    if-ltz v9, :cond_4

    .line 822
    aget v10, v2, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 821
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 810
    :cond_4
    add-int v8, v8, p7

    goto :goto_2

    .line 826
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_5
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_6
    if-ge v8, v7, :cond_7

    .line 827
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    .line 829
    .restart local v4       #in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p4, v10

    if-nez v10, :cond_6

    .line 830
    move v5, v4

    .line 834
    .restart local v5       #out:I
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 826
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 832
    .end local v5           #out:I
    :cond_6
    int-to-double v10, v4

    const-wide v12, 0x41dfffffffc00000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p4

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x41dfffffffc00000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v5, v10

    .restart local v5       #out:I
    goto :goto_7

    .line 837
    .end local v4           #in:I
    .end local v5           #out:I
    :cond_7
    add-int/2addr v6, p1

    .line 838
    add-int v3, v3, p3

    goto/16 :goto_0

    .line 840
    .end local v8           #x:I
    :cond_8
    return-void
.end method

.method public static flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V
    .locals 14
    .parameter "srcBuf"
    .parameter "srcStep"
    .parameter "dstBuf"
    .parameter "dstStep"
    .parameter "signed"
    .parameter "gamma"
    .parameter "flip"
    .parameter "channels"

    .prologue
    .line 720
    sget-boolean v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    move-object/from16 v0, p2

    if-ne p0, v0, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 721
    :cond_0
    move/from16 v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 722
    .local v7, w:I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v6

    .local v6, srcLine:I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v3

    .line 723
    .local v3, dstLine:I
    move/from16 v0, p8

    new-array v2, v0, [S

    .line 724
    .local v2, buffer:[S
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v10

    if-ge v6, v10, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v10

    if-ge v3, v10, :cond_e

    .line 725
    if-eqz p7, :cond_1

    .line 726
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v10

    sub-int/2addr v10, v6

    sub-int/2addr v10, p1

    invoke-virtual {p0, v10}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 730
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 731
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 732
    if-eqz p4, :cond_7

    .line 733
    const/4 v10, 0x1

    move/from16 v0, p8

    if-le v0, v10, :cond_5

    .line 734
    const/4 v8, 0x0

    .local v8, x:I
    :goto_2
    if-ge v8, v7, :cond_d

    .line 735
    const/4 v9, 0x0

    .local v9, z:I
    :goto_3
    move/from16 v0, p8

    if-ge v9, v0, :cond_3

    .line 736
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    .line 738
    .local v4, in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p5, v10

    if-nez v10, :cond_2

    .line 739
    int-to-short v5, v4

    .line 743
    .local v5, out:S
    :goto_4
    aput-short v5, v2, v9

    .line 735
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 728
    .end local v4           #in:I
    .end local v5           #out:S
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_1
    invoke-virtual {p0, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 741
    .restart local v4       #in:I
    .restart local v8       #x:I
    .restart local v9       #z:I
    :cond_2
    int-to-double v10, v4

    const-wide v12, 0x40dfffc000000000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p5

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x40dfffc000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-short v5, v10

    .restart local v5       #out:S
    goto :goto_4

    .line 745
    .end local v4           #in:I
    .end local v5           #out:S
    :cond_3
    add-int/lit8 v9, p8, -0x1

    :goto_5
    if-ltz v9, :cond_4

    .line 746
    aget-short v10, v2, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 745
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 734
    :cond_4
    add-int v8, v8, p8

    goto :goto_2

    .line 750
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_5
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_6
    if-ge v8, v7, :cond_d

    .line 751
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    .line 753
    .restart local v4       #in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p5, v10

    if-nez v10, :cond_6

    .line 754
    int-to-short v5, v4

    .line 758
    .restart local v5       #out:S
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 750
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 756
    .end local v5           #out:S
    :cond_6
    int-to-double v10, v4

    const-wide v12, 0x40dfffc000000000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p5

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x40dfffc000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-short v5, v10

    .restart local v5       #out:S
    goto :goto_7

    .line 762
    .end local v4           #in:I
    .end local v5           #out:S
    .end local v8           #x:I
    :cond_7
    const/4 v10, 0x1

    move/from16 v0, p8

    if-le v0, v10, :cond_b

    .line 763
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_8
    if-ge v8, v7, :cond_d

    .line 764
    const/4 v9, 0x0

    .restart local v9       #z:I
    :goto_9
    move/from16 v0, p8

    if-ge v9, v0, :cond_9

    .line 765
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    .line 767
    .restart local v4       #in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p5, v10

    if-nez v10, :cond_8

    .line 768
    int-to-short v5, v4

    .line 772
    .restart local v5       #out:S
    :goto_a
    aput-short v5, v2, v9

    .line 764
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 770
    .end local v5           #out:S
    :cond_8
    int-to-double v10, v4

    const-wide v12, 0x40efffe000000000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p5

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x40efffe000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-short v5, v10

    .restart local v5       #out:S
    goto :goto_a

    .line 774
    .end local v4           #in:I
    .end local v5           #out:S
    :cond_9
    add-int/lit8 v9, p8, -0x1

    :goto_b
    if-ltz v9, :cond_a

    .line 775
    aget-short v10, v2, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 774
    add-int/lit8 v9, v9, -0x1

    goto :goto_b

    .line 763
    :cond_a
    add-int v8, v8, p8

    goto :goto_8

    .line 779
    .end local v8           #x:I
    .end local v9           #z:I
    :cond_b
    const/4 v8, 0x0

    .restart local v8       #x:I
    :goto_c
    if-ge v8, v7, :cond_d

    .line 780
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v10

    const v11, 0xffff

    and-int v4, v10, v11

    .line 782
    .restart local v4       #in:I
    const-wide/high16 v10, 0x3ff0

    cmpl-double v10, p5, v10

    if-nez v10, :cond_c

    .line 783
    int-to-short v5, v4

    .line 787
    .restart local v5       #out:S
    :goto_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 779
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 785
    .end local v5           #out:S
    :cond_c
    int-to-double v10, v4

    const-wide v12, 0x40efffe000000000L

    div-double/2addr v10, v12

    move-wide/from16 v0, p5

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x40efffe000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-short v5, v10

    .restart local v5       #out:S
    goto :goto_d

    .line 791
    .end local v4           #in:I
    .end local v5           #out:S
    :cond_d
    add-int/2addr v6, p1

    .line 792
    add-int v3, v3, p3

    goto/16 :goto_0

    .line 794
    .end local v8           #x:I
    :cond_e
    return-void
.end method


# virtual methods
.method public native BorderConst(I)I
.end method

.method public native BorderConst(II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native BorderMode(I)I
.end method

.method public native BorderMode(II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native ID()I
.end method

.method public native ID(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native align()I
.end method

.method public native align(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native alphaChannel()I
.end method

.method public native alphaChannel(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public applyGamma(D)V
    .locals 9
    .parameter "gamma"

    .prologue
    .line 934
    const-wide/high16 v0, 0x3ff0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 960
    sget-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 939
    :sswitch_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v5, p1

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IZDZI)V

    goto :goto_0

    .line 942
    :sswitch_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v5, p1

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IZDZI)V

    goto :goto_0

    .line 945
    :sswitch_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v5, p1

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V

    goto :goto_0

    .line 948
    :sswitch_3
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v5, p1

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V

    goto :goto_0

    .line 951
    :sswitch_4
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;IDZI)V

    goto/16 :goto_0

    .line 954
    :sswitch_5
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;IDZI)V

    goto/16 :goto_0

    .line 957
    :sswitch_6
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/DoubleBuffer;ILjava/nio/DoubleBuffer;IDZI)V

    goto/16 :goto_0

    .line 937
    :sswitch_data_0
    .sparse-switch
        -0x7ffffff8 -> :sswitch_1
        -0x7ffffff0 -> :sswitch_3
        -0x7fffffe0 -> :sswitch_4
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch
.end method

.method public asCvMat()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 3

    .prologue
    .line 1219
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V

    .line 1220
    .local v0, mat:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetMat(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 1221
    return-object v0
.end method

.method public native channelSeq(I)I
.end method

.method public native channelSeq(II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public clone()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2

    .prologue
    .line 525
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCloneImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 526
    .local v0, i:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-eqz v0, :cond_0

    .line 527
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->cloneBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    .line 532
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->clone()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method protected cloneBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v3, p0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 545
    :goto_0
    return-object v2

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    check-cast v0, Ljava/awt/image/BufferedImage;

    .line 540
    .local v0, bi:Ljava/awt/image/BufferedImage;
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v1

    .line 541
    .local v1, type:I
    if-nez v1, :cond_1

    .line 542
    new-instance v3, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/awt/image/BufferedImage;->copyData(Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    move-result-object v5

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->isAlphaPremultiplied()Z

    move-result v6

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object v2, v3

    goto :goto_0

    .line 545
    :cond_1
    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    goto :goto_0
.end method

.method public native colorModel(I)I
.end method

.method public native colorModel(II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public copyFrom(Ljava/awt/image/BufferedImage;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 1026
    const-wide/high16 v0, 0x3ff0

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyFrom(Ljava/awt/image/BufferedImage;D)V

    .line 1027
    return-void
.end method

.method public copyFrom(Ljava/awt/image/BufferedImage;D)V
    .locals 1
    .parameter "image"
    .parameter "gamma"

    .prologue
    .line 1029
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyFrom(Ljava/awt/image/BufferedImage;DZ)V

    .line 1030
    return-void
.end method

.method public copyFrom(Ljava/awt/image/BufferedImage;DZ)V
    .locals 7
    .parameter "image"
    .parameter "gamma"
    .parameter "flipChannels"

    .prologue
    .line 1032
    const/4 v5, 0x0

    .line 1033
    .local v5, r:Ljava/awt/Rectangle;
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v6

    .line 1034
    .local v6, roi:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    if-eqz v6, :cond_0

    .line 1035
    new-instance v5, Ljava/awt/Rectangle;

    .end local v5           #r:Ljava/awt/Rectangle;
    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->xOffset()I

    move-result v0

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->yOffset()I

    move-result v1

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v2

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v3

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    .restart local v5       #r:Ljava/awt/Rectangle;
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 1037
    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyFrom(Ljava/awt/image/BufferedImage;DZLjava/awt/Rectangle;)V

    .line 1038
    return-void
.end method

.method public copyFrom(Ljava/awt/image/BufferedImage;DZLjava/awt/Rectangle;)V
    .locals 22
    .parameter "image"
    .parameter "gamma"
    .parameter "flipChannels"
    .parameter "roi"

    .prologue
    .line 1040
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 1042
    if-nez p5, :cond_3

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1043
    .local v4, out:Ljava/nio/ByteBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v18

    .line 1044
    .local v18, sm:Ljava/awt/image/SampleModel;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v17

    .line 1045
    .local v17, r:Ljava/awt/image/Raster;
    invoke-virtual/range {v17 .. v17}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v16

    .line 1046
    .local v16, in:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v2

    neg-int v0, v2

    move/from16 v20, v0

    .line 1047
    .local v20, x:I
    invoke-virtual/range {v17 .. v17}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v2

    neg-int v0, v2

    move/from16 v21, v0

    .line 1048
    .local v21, y:I
    invoke-virtual/range {v18 .. v18}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v5

    mul-int v3, v2, v5

    .line 1049
    .local v3, step:I
    invoke-virtual/range {v18 .. v18}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v15

    .line 1050
    .local v15, channels:I
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/awt/image/ComponentSampleModel;

    if-eqz v2, :cond_4

    move-object/from16 v2, v18

    .line 1051
    check-cast v2, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v2}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v3

    .line 1052
    check-cast v18, Ljava/awt/image/ComponentSampleModel;

    .end local v18           #sm:Ljava/awt/image/SampleModel;
    invoke-virtual/range {v18 .. v18}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v15

    .line 1060
    :cond_0
    :goto_1
    mul-int v2, v21, v3

    mul-int v5, v20, v15

    add-int v19, v2, v5

    .line 1062
    .local v19, start:I
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/awt/image/DataBufferByte;

    if-eqz v2, :cond_7

    .line 1063
    check-cast v16, Ljava/awt/image/DataBufferByte;

    .end local v16           #in:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v14

    .line 1064
    .local v14, a:[B
    array-length v2, v14

    sub-int v2, v2, v19

    move/from16 v0, v19

    invoke-static {v14, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    if-eqz p4, :cond_6

    move v10, v15

    :goto_2
    move-wide/from16 v7, p2

    invoke-static/range {v2 .. v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IZDZI)V

    .line 1083
    .end local v14           #a:[B
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    if-nez v2, :cond_2

    if-nez p5, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    if-ne v2, v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 1085
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    .line 1087
    :cond_2
    return-void

    .line 1042
    .end local v3           #step:I
    .end local v4           #out:Ljava/nio/ByteBuffer;
    .end local v15           #channels:I
    .end local v17           #r:Ljava/awt/image/Raster;
    .end local v19           #start:I
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_3
    move-object/from16 v0, p5

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v5

    mul-int/2addr v2, v5

    move-object/from16 v0, p5

    iget v5, v0, Ljava/awt/Rectangle;->x:I

    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 1053
    .restart local v3       #step:I
    .restart local v4       #out:Ljava/nio/ByteBuffer;
    .restart local v15       #channels:I
    .restart local v16       #in:Ljava/awt/image/DataBuffer;
    .restart local v17       #r:Ljava/awt/image/Raster;
    .restart local v18       #sm:Ljava/awt/image/SampleModel;
    .restart local v20       #x:I
    .restart local v21       #y:I
    :cond_4
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v2, :cond_5

    .line 1054
    check-cast v18, Ljava/awt/image/SinglePixelPackedSampleModel;

    .end local v18           #sm:Ljava/awt/image/SampleModel;
    invoke-virtual/range {v18 .. v18}, Ljava/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v3

    .line 1055
    const/4 v15, 0x1

    goto :goto_1

    .line 1056
    .restart local v18       #sm:Ljava/awt/image/SampleModel;
    :cond_5
    move-object/from16 v0, v18

    instance-of v2, v0, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v2, :cond_0

    move-object/from16 v2, v18

    .line 1057
    check-cast v2, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v2}, Ljava/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v3

    .line 1058
    check-cast v18, Ljava/awt/image/MultiPixelPackedSampleModel;

    .end local v18           #sm:Ljava/awt/image/SampleModel;
    invoke-virtual/range {v18 .. v18}, Ljava/awt/image/MultiPixelPackedSampleModel;->getPixelBitStride()I

    move-result v2

    div-int/lit8 v15, v2, 0x8

    goto :goto_1

    .line 1064
    .end local v16           #in:Ljava/awt/image/DataBuffer;
    .restart local v14       #a:[B
    .restart local v19       #start:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1065
    .end local v14           #a:[B
    .restart local v16       #in:Ljava/awt/image/DataBuffer;
    :cond_7
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/awt/image/DataBufferDouble;

    if-eqz v2, :cond_9

    .line 1066
    check-cast v16, Ljava/awt/image/DataBufferDouble;

    .end local v16           #in:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/DataBufferDouble;->getData()[D

    move-result-object v14

    .line 1067
    .local v14, a:[D
    array-length v2, v14

    sub-int v2, v2, v19

    move/from16 v0, v19

    invoke-static {v14, v0, v2}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    div-int/lit8 v8, v2, 0x8

    const/4 v11, 0x0

    if-eqz p4, :cond_8

    move v12, v15

    :goto_4
    move v6, v3

    move-wide/from16 v9, p2

    invoke-static/range {v5 .. v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/DoubleBuffer;ILjava/nio/DoubleBuffer;IDZI)V

    goto/16 :goto_3

    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 1068
    .end local v14           #a:[D
    .restart local v16       #in:Ljava/awt/image/DataBuffer;
    :cond_9
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/awt/image/DataBufferFloat;

    if-eqz v2, :cond_b

    .line 1069
    check-cast v16, Ljava/awt/image/DataBufferFloat;

    .end local v16           #in:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/DataBufferFloat;->getData()[F

    move-result-object v14

    .line 1070
    .local v14, a:[F
    array-length v2, v14

    sub-int v2, v2, v19

    move/from16 v0, v19

    invoke-static {v14, v0, v2}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    div-int/lit8 v8, v2, 0x4

    const/4 v11, 0x0

    if-eqz p4, :cond_a

    move v12, v15

    :goto_5
    move v6, v3

    move-wide/from16 v9, p2

    invoke-static/range {v5 .. v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;IDZI)V

    goto/16 :goto_3

    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    .line 1071
    .end local v14           #a:[F
    .restart local v16       #in:Ljava/awt/image/DataBuffer;
    :cond_b
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/awt/image/DataBufferInt;

    if-eqz v2, :cond_d

    .line 1072
    check-cast v16, Ljava/awt/image/DataBufferInt;

    .end local v16           #in:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object v14

    .line 1073
    .local v14, a:[I
    array-length v2, v14

    sub-int v2, v2, v19

    move/from16 v0, v19

    invoke-static {v14, v0, v2}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    div-int/lit8 v8, v2, 0x4

    const/4 v11, 0x0

    if-eqz p4, :cond_c

    move v12, v15

    :goto_6
    move v6, v3

    move-wide/from16 v9, p2

    invoke-static/range {v5 .. v12}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/IntBuffer;ILjava/nio/IntBuffer;IDZI)V

    goto/16 :goto_3

    :cond_c
    const/4 v12, 0x0

    goto :goto_6

    .line 1074
    .end local v14           #a:[I
    .restart local v16       #in:Ljava/awt/image/DataBuffer;
    :cond_d
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/awt/image/DataBufferShort;

    if-eqz v2, :cond_f

    .line 1075
    check-cast v16, Ljava/awt/image/DataBufferShort;

    .end local v16           #in:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/DataBufferShort;->getData()[S

    move-result-object v14

    .line 1076
    .local v14, a:[S
    array-length v2, v14

    sub-int v2, v2, v19

    move/from16 v0, v19

    invoke-static {v14, v0, v2}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    div-int/lit8 v8, v2, 0x2

    const/4 v9, 0x1

    const/4 v12, 0x0

    if-eqz p4, :cond_e

    move v13, v15

    :goto_7
    move v6, v3

    move-wide/from16 v10, p2

    invoke-static/range {v5 .. v13}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V

    goto/16 :goto_3

    :cond_e
    const/4 v13, 0x0

    goto :goto_7

    .line 1077
    .end local v14           #a:[S
    .restart local v16       #in:Ljava/awt/image/DataBuffer;
    :cond_f
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/awt/image/DataBufferUShort;

    if-eqz v2, :cond_11

    .line 1078
    check-cast v16, Ljava/awt/image/DataBufferUShort;

    .end local v16           #in:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object v14

    .line 1079
    .restart local v14       #a:[S
    array-length v2, v14

    sub-int v2, v2, v19

    move/from16 v0, v19

    invoke-static {v14, v0, v2}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    div-int/lit8 v8, v2, 0x2

    const/4 v9, 0x0

    const/4 v12, 0x0

    if-eqz p4, :cond_10

    move v13, v15

    :goto_8
    move v6, v3

    move-wide/from16 v10, p2

    invoke-static/range {v5 .. v13}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V

    goto/16 :goto_3

    :cond_10
    const/4 v13, 0x0

    goto :goto_8

    .line 1081
    .end local v14           #a:[S
    .restart local v16       #in:Ljava/awt/image/DataBuffer;
    :cond_11
    sget-boolean v2, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public copyTo(Ljava/awt/image/BufferedImage;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 966
    const-wide/high16 v0, 0x3ff0

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyTo(Ljava/awt/image/BufferedImage;D)V

    .line 967
    return-void
.end method

.method public copyTo(Ljava/awt/image/BufferedImage;D)V
    .locals 1
    .parameter "image"
    .parameter "gamma"

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyTo(Ljava/awt/image/BufferedImage;DZ)V

    .line 970
    return-void
.end method

.method public copyTo(Ljava/awt/image/BufferedImage;DZ)V
    .locals 7
    .parameter "image"
    .parameter "gamma"
    .parameter "flipChannels"

    .prologue
    .line 972
    const/4 v5, 0x0

    .line 973
    .local v5, r:Ljava/awt/Rectangle;
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v6

    .line 974
    .local v6, roi:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    if-eqz v6, :cond_0

    .line 975
    new-instance v5, Ljava/awt/Rectangle;

    .end local v5           #r:Ljava/awt/Rectangle;
    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->xOffset()I

    move-result v0

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->yOffset()I

    move-result v1

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v2

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v3

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    .restart local v5       #r:Ljava/awt/Rectangle;
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 977
    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyTo(Ljava/awt/image/BufferedImage;DZLjava/awt/Rectangle;)V

    .line 978
    return-void
.end method

.method public copyTo(Ljava/awt/image/BufferedImage;DZLjava/awt/Rectangle;)V
    .locals 27
    .parameter "image"
    .parameter "gamma"
    .parameter "flipChannels"
    .parameter "roi"

    .prologue
    .line 980
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v9, 0x1

    .line 982
    .local v9, flip:Z
    :goto_0
    if-nez p5, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 983
    .local v2, in:Ljava/nio/ByteBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v23

    .line 984
    .local v23, sm:Ljava/awt/image/SampleModel;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v22

    .line 985
    .local v22, r:Ljava/awt/image/Raster;
    invoke-virtual/range {v22 .. v22}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v21

    .line 986
    .local v21, out:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v22 .. v22}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v3

    neg-int v0, v3

    move/from16 v25, v0

    .line 987
    .local v25, x:I
    invoke-virtual/range {v22 .. v22}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v3

    neg-int v0, v3

    move/from16 v26, v0

    .line 988
    .local v26, y:I
    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v3

    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v4

    mul-int v5, v3, v4

    .line 989
    .local v5, step:I
    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v20

    .line 990
    .local v20, channels:I
    move-object/from16 v0, v23

    instance-of v3, v0, Ljava/awt/image/ComponentSampleModel;

    if-eqz v3, :cond_4

    move-object/from16 v3, v23

    .line 991
    check-cast v3, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v3}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v5

    .line 992
    check-cast v23, Ljava/awt/image/ComponentSampleModel;

    .end local v23           #sm:Ljava/awt/image/SampleModel;
    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v20

    .line 1000
    :cond_0
    :goto_2
    mul-int v3, v26, v5

    mul-int v4, v25, v20

    add-int v24, v3, v4

    .line 1002
    .local v24, start:I
    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/awt/image/DataBufferByte;

    if-eqz v3, :cond_7

    .line 1003
    check-cast v21, Ljava/awt/image/DataBufferByte;

    .end local v21           #out:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v19

    .line 1004
    .local v19, a:[B
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    move-object/from16 v0, v19

    array-length v4, v0

    sub-int v4, v4, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz p4, :cond_6

    move/from16 v10, v20

    :goto_3
    move-wide/from16 v7, p2

    invoke-static/range {v2 .. v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IZDZI)V

    .line 1023
    .end local v19           #a:[B
    :cond_1
    :goto_4
    return-void

    .line 980
    .end local v2           #in:Ljava/nio/ByteBuffer;
    .end local v5           #step:I
    .end local v9           #flip:Z
    .end local v20           #channels:I
    .end local v22           #r:Ljava/awt/image/Raster;
    .end local v24           #start:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 982
    .restart local v9       #flip:Z
    :cond_3
    move-object/from16 v0, p5

    iget v3, v0, Ljava/awt/Rectangle;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v4

    mul-int/2addr v3, v4

    move-object/from16 v0, p5

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v6

    mul-int/2addr v4, v6

    add-int/2addr v3, v4

    goto/16 :goto_1

    .line 993
    .restart local v2       #in:Ljava/nio/ByteBuffer;
    .restart local v5       #step:I
    .restart local v20       #channels:I
    .restart local v21       #out:Ljava/awt/image/DataBuffer;
    .restart local v22       #r:Ljava/awt/image/Raster;
    .restart local v23       #sm:Ljava/awt/image/SampleModel;
    .restart local v25       #x:I
    .restart local v26       #y:I
    :cond_4
    move-object/from16 v0, v23

    instance-of v3, v0, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v3, :cond_5

    .line 994
    check-cast v23, Ljava/awt/image/SinglePixelPackedSampleModel;

    .end local v23           #sm:Ljava/awt/image/SampleModel;
    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v5

    .line 995
    const/16 v20, 0x1

    goto :goto_2

    .line 996
    .restart local v23       #sm:Ljava/awt/image/SampleModel;
    :cond_5
    move-object/from16 v0, v23

    instance-of v3, v0, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v3, :cond_0

    move-object/from16 v3, v23

    .line 997
    check-cast v3, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v3}, Ljava/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v5

    .line 998
    check-cast v23, Ljava/awt/image/MultiPixelPackedSampleModel;

    .end local v23           #sm:Ljava/awt/image/SampleModel;
    invoke-virtual/range {v23 .. v23}, Ljava/awt/image/MultiPixelPackedSampleModel;->getPixelBitStride()I

    move-result v3

    div-int/lit8 v20, v3, 0x8

    goto :goto_2

    .line 1004
    .end local v21           #out:Ljava/awt/image/DataBuffer;
    .restart local v19       #a:[B
    .restart local v24       #start:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 1005
    .end local v19           #a:[B
    .restart local v21       #out:Ljava/awt/image/DataBuffer;
    :cond_7
    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/awt/image/DataBufferDouble;

    if-eqz v3, :cond_9

    .line 1006
    check-cast v21, Ljava/awt/image/DataBufferDouble;

    .end local v21           #out:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/awt/image/DataBufferDouble;->getData()[D

    move-result-object v19

    .line 1007
    .local v19, a:[D
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v11, v3, 0x8

    move-object/from16 v0, v19

    array-length v3, v0

    sub-int v3, v3, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    move-result-object v12

    if-eqz p4, :cond_8

    move/from16 v17, v20

    :goto_5
    move v13, v5

    move-wide/from16 v14, p2

    move/from16 v16, v9

    invoke-static/range {v10 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/DoubleBuffer;ILjava/nio/DoubleBuffer;IDZI)V

    goto :goto_4

    :cond_8
    const/16 v17, 0x0

    goto :goto_5

    .line 1008
    .end local v19           #a:[D
    .restart local v21       #out:Ljava/awt/image/DataBuffer;
    :cond_9
    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/awt/image/DataBufferFloat;

    if-eqz v3, :cond_b

    .line 1009
    check-cast v21, Ljava/awt/image/DataBufferFloat;

    .end local v21           #out:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/awt/image/DataBufferFloat;->getData()[F

    move-result-object v19

    .line 1010
    .local v19, a:[F
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v11, v3, 0x4

    move-object/from16 v0, v19

    array-length v3, v0

    sub-int v3, v3, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object v12

    if-eqz p4, :cond_a

    move/from16 v17, v20

    :goto_6
    move v13, v5

    move-wide/from16 v14, p2

    move/from16 v16, v9

    invoke-static/range {v10 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;IDZI)V

    goto/16 :goto_4

    :cond_a
    const/16 v17, 0x0

    goto :goto_6

    .line 1011
    .end local v19           #a:[F
    .restart local v21       #out:Ljava/awt/image/DataBuffer;
    :cond_b
    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/awt/image/DataBufferInt;

    if-eqz v3, :cond_d

    .line 1012
    check-cast v21, Ljava/awt/image/DataBufferInt;

    .end local v21           #out:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object v19

    .line 1013
    .local v19, a:[I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v11, v3, 0x4

    move-object/from16 v0, v19

    array-length v3, v0

    sub-int v3, v3, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    move-result-object v12

    if-eqz p4, :cond_c

    move/from16 v17, v20

    :goto_7
    move v13, v5

    move-wide/from16 v14, p2

    move/from16 v16, v9

    invoke-static/range {v10 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/IntBuffer;ILjava/nio/IntBuffer;IDZI)V

    goto/16 :goto_4

    :cond_c
    const/16 v17, 0x0

    goto :goto_7

    .line 1014
    .end local v19           #a:[I
    .restart local v21       #out:Ljava/awt/image/DataBuffer;
    :cond_d
    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/awt/image/DataBufferShort;

    if-eqz v3, :cond_f

    .line 1015
    check-cast v21, Ljava/awt/image/DataBufferShort;

    .end local v21           #out:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/awt/image/DataBufferShort;->getData()[S

    move-result-object v19

    .line 1016
    .local v19, a:[S
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v11, v3, 0x2

    move-object/from16 v0, v19

    array-length v3, v0

    sub-int v3, v3, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v12

    const/4 v14, 0x1

    if-eqz p4, :cond_e

    move/from16 v18, v20

    :goto_8
    move v13, v5

    move-wide/from16 v15, p2

    move/from16 v17, v9

    invoke-static/range {v10 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V

    goto/16 :goto_4

    :cond_e
    const/16 v18, 0x0

    goto :goto_8

    .line 1017
    .end local v19           #a:[S
    .restart local v21       #out:Ljava/awt/image/DataBuffer;
    :cond_f
    move-object/from16 v0, v21

    instance-of v3, v0, Ljava/awt/image/DataBufferUShort;

    if-eqz v3, :cond_11

    .line 1018
    check-cast v21, Ljava/awt/image/DataBufferUShort;

    .end local v21           #out:Ljava/awt/image/DataBuffer;
    invoke-virtual/range {v21 .. v21}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object v19

    .line 1019
    .restart local v19       #a:[S
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    div-int/lit8 v11, v3, 0x2

    move-object/from16 v0, v19

    array-length v3, v0

    sub-int v3, v3, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v12

    const/4 v14, 0x0

    if-eqz p4, :cond_10

    move/from16 v18, v20

    :goto_9
    move v13, v5

    move-wide/from16 v15, p2

    move/from16 v17, v9

    invoke-static/range {v10 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V

    goto/16 :goto_4

    :cond_10
    const/16 v18, 0x0

    goto :goto_9

    .line 1021
    .end local v19           #a:[S
    .restart local v21       #out:Ljava/awt/image/DataBuffer;
    :cond_11
    sget-boolean v3, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public cvSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .locals 2

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v0

    return-object v0
.end method

.method public native dataOrder()I
.end method

.method public native dataOrder(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native depth()I
.end method

.method public native depth(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public getBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 2

    .prologue
    .line 1119
    const-wide/high16 v0, 0x3ff0

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getBufferedImage(D)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedImage(D)Ljava/awt/image/BufferedImage;
    .locals 1
    .parameter "gamma"

    .prologue
    .line 1122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getBufferedImage(DZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedImage(DZ)Ljava/awt/image/BufferedImage;
    .locals 1
    .parameter "gamma"
    .parameter "flipChannels"

    .prologue
    .line 1125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getBufferedImage(DZLjava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedImage(DZLjava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 17
    .parameter "gamma"
    .parameter "flipChannels"
    .parameter "cs"

    .prologue
    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getBufferedImageType()I

    move-result v15

    .line 1130
    .local v15, type:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    if-nez v5, :cond_0

    if-eqz v15, :cond_0

    if-nez p4, :cond_0

    .line 1131
    new-instance v5, Ljava/awt/image/BufferedImage;

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v8

    invoke-direct {v5, v7, v8, v15}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    .line 1134
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    if-nez v5, :cond_5

    .line 1135
    const/4 v6, 0x0

    .line 1136
    .local v6, alpha:Z
    const/4 v13, 0x0

    .line 1137
    .local v13, offsets:[I
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_7

    .line 1138
    const/4 v6, 0x0

    .line 1139
    if-nez p4, :cond_1

    .line 1140
    const/16 v5, 0x3eb

    invoke-static {v5}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p4

    .line 1142
    :cond_1
    const/4 v5, 0x1

    new-array v13, v5, [I

    .end local v13           #offsets:[I
    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v7, v13, v5

    .line 1161
    .restart local v13       #offsets:[I
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 1162
    .local v4, cm:Ljava/awt/image/ColorModel;
    const/16 v16, 0x0

    .line 1163
    .local v16, wr:Ljava/awt/image/WritableRaster;
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v5

    const v7, -0x7ffffff8

    if-ne v5, v7, :cond_c

    .line 1164
    :cond_3
    new-instance v4, Ljava/awt/image/ComponentColorModel;

    .end local v4           #cm:Ljava/awt/image/ColorModel;
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 1166
    .restart local v4       #cm:Ljava/awt/image/ColorModel;
    new-instance v7, Ljava/awt/image/ComponentSampleModel;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v12

    invoke-direct/range {v7 .. v13}, Ljava/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    const/4 v5, 0x0

    invoke-static {v7, v5}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v16

    .line 1203
    :cond_4
    :goto_1
    new-instance v5, Ljava/awt/image/BufferedImage;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-direct {v5, v4, v0, v7, v8}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    .line 1206
    .end local v4           #cm:Ljava/awt/image/ColorModel;
    .end local v6           #alpha:Z
    .end local v13           #offsets:[I
    .end local v16           #wr:Ljava/awt/image/WritableRaster;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v14

    .line 1208
    .local v14, roi:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    if-eqz v14, :cond_12

    .line 1209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    check-cast v5, Ljava/awt/image/BufferedImage;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->xOffset()I

    move-result v7

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->yOffset()I

    move-result v8

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v9

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v10

    invoke-virtual {v5, v7, v8, v9, v10}, Ljava/awt/image/BufferedImage;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyTo(Ljava/awt/image/BufferedImage;DZ)V

    .line 1215
    .end local v14           #roi:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    check-cast v5, Ljava/awt/image/BufferedImage;

    return-object v5

    .line 1143
    .restart local v6       #alpha:Z
    .restart local v13       #offsets:[I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_9

    .line 1144
    const/4 v6, 0x0

    .line 1145
    if-nez p4, :cond_8

    .line 1146
    const/16 v5, 0x3ec

    invoke-static {v5}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p4

    .line 1149
    :cond_8
    const/4 v5, 0x3

    new-array v13, v5, [I

    .end local v13           #offsets:[I
    fill-array-data v13, :array_0

    .restart local v13       #offsets:[I
    goto/16 :goto_0

    .line 1150
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_b

    .line 1151
    const/4 v6, 0x1

    .line 1152
    if-nez p4, :cond_a

    .line 1153
    const/16 v5, 0x3ec

    invoke-static {v5}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object p4

    .line 1156
    :cond_a
    const/4 v5, 0x4

    new-array v13, v5, [I

    .end local v13           #offsets:[I
    fill-array-data v13, :array_1

    .restart local v13       #offsets:[I
    goto/16 :goto_0

    .line 1158
    :cond_b
    sget-boolean v5, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1169
    .restart local v4       #cm:Ljava/awt/image/ColorModel;
    .restart local v16       #wr:Ljava/awt/image/WritableRaster;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v5

    const/16 v7, 0x10

    if-ne v5, v7, :cond_d

    .line 1170
    new-instance v4, Ljava/awt/image/ComponentColorModel;

    .end local v4           #cm:Ljava/awt/image/ColorModel;
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 1172
    .restart local v4       #cm:Ljava/awt/image/ColorModel;
    new-instance v7, Ljava/awt/image/ComponentSampleModel;

    const/4 v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v5

    div-int/lit8 v12, v5, 0x2

    invoke-direct/range {v7 .. v13}, Ljava/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    const/4 v5, 0x0

    invoke-static {v7, v5}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v16

    goto/16 :goto_1

    .line 1175
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v5

    const v7, -0x7ffffff0

    if-ne v5, v7, :cond_e

    .line 1176
    new-instance v4, Ljava/awt/image/ComponentColorModel;

    .end local v4           #cm:Ljava/awt/image/ColorModel;
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 1178
    .restart local v4       #cm:Ljava/awt/image/ColorModel;
    new-instance v7, Ljava/awt/image/ComponentSampleModel;

    const/4 v8, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v5

    div-int/lit8 v12, v5, 0x2

    invoke-direct/range {v7 .. v13}, Ljava/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    const/4 v5, 0x0

    invoke-static {v7, v5}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v16

    goto/16 :goto_1

    .line 1181
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v5

    const v7, -0x7fffffe0

    if-ne v5, v7, :cond_f

    .line 1182
    new-instance v4, Ljava/awt/image/ComponentColorModel;

    .end local v4           #cm:Ljava/awt/image/ColorModel;
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x3

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 1184
    .restart local v4       #cm:Ljava/awt/image/ColorModel;
    new-instance v7, Ljava/awt/image/ComponentSampleModel;

    const/4 v8, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v5

    div-int/lit8 v12, v5, 0x4

    invoke-direct/range {v7 .. v13}, Ljava/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    const/4 v5, 0x0

    invoke-static {v7, v5}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v16

    goto/16 :goto_1

    .line 1187
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v5

    const/16 v7, 0x20

    if-ne v5, v7, :cond_10

    .line 1188
    new-instance v4, Ljava/awt/image/ComponentColorModel;

    .end local v4           #cm:Ljava/awt/image/ColorModel;
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x4

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 1190
    .restart local v4       #cm:Ljava/awt/image/ColorModel;
    new-instance v7, Ljava/awt/image/ComponentSampleModel;

    const/4 v8, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v5

    div-int/lit8 v12, v5, 0x4

    invoke-direct/range {v7 .. v13}, Ljava/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    const/4 v5, 0x0

    invoke-static {v7, v5}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v16

    goto/16 :goto_1

    .line 1193
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v5

    const/16 v7, 0x40

    if-ne v5, v7, :cond_11

    .line 1194
    new-instance v4, Ljava/awt/image/ComponentColorModel;

    .end local v4           #cm:Ljava/awt/image/ColorModel;
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object/from16 v5, p4

    invoke-direct/range {v4 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 1196
    .restart local v4       #cm:Ljava/awt/image/ColorModel;
    new-instance v7, Ljava/awt/image/ComponentSampleModel;

    const/4 v8, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v5

    div-int/lit8 v12, v5, 0x8

    invoke-direct/range {v7 .. v13}, Ljava/awt/image/ComponentSampleModel;-><init>(IIIII[I)V

    const/4 v5, 0x0

    invoke-static {v7, v5}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v16

    goto/16 :goto_1

    .line 1200
    :cond_11
    sget-boolean v5, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1211
    .end local v4           #cm:Ljava/awt/image/ColorModel;
    .end local v6           #alpha:Z
    .end local v13           #offsets:[I
    .end local v16           #wr:Ljava/awt/image/WritableRaster;
    .restart local v14       #roi:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->bufferedImage:Ljava/lang/Object;

    check-cast v5, Ljava/awt/image/BufferedImage;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->copyTo(Ljava/awt/image/BufferedImage;DZ)V

    goto/16 :goto_2

    .line 1149
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1156
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getBufferedImageType()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    const v3, -0x7ffffff8

    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, type:I
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1099
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1100
    :cond_0
    const/16 v0, 0xa

    .line 1116
    :cond_1
    :goto_0
    return v0

    .line 1101
    :cond_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 1102
    const/16 v0, 0xb

    goto :goto_0

    .line 1104
    :cond_3
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 1105
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    if-eq v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1106
    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1108
    :cond_5
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1112
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    if-eq v1, v4, :cond_6

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1113
    :cond_6
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "index"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 611
    mul-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 610
    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 609
    mul-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 608
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public native height()I
.end method

.method public native height(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public highValue()D
    .locals 3

    .prologue
    .line 590
    const-wide/16 v0, 0x0

    .line 591
    .local v0, highValue:D
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 600
    sget-boolean v2, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 592
    :sswitch_0
    const-wide v0, 0x406fe00000000000L

    .line 602
    :cond_0
    :goto_0
    return-wide v0

    .line 593
    :sswitch_1
    const-wide v0, 0x40efffe000000000L

    goto :goto_0

    .line 594
    :sswitch_2
    const-wide v0, 0x405fc00000000000L

    goto :goto_0

    .line 595
    :sswitch_3
    const-wide v0, 0x40dfffc000000000L

    goto :goto_0

    .line 596
    :sswitch_4
    const-wide v0, 0x41dfffffffc00000L

    goto :goto_0

    .line 599
    :sswitch_5
    const-wide/high16 v0, 0x3ff0

    goto :goto_0

    .line 591
    :sswitch_data_0
    .sparse-switch
        -0x7ffffff8 -> :sswitch_2
        -0x7ffffff0 -> :sswitch_3
        -0x7fffffe0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_5
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method public native imageData()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native imageData(Ljava/nio/ByteBuffer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberSetter;
    .end annotation
.end method

.method public native imageDataOrigin()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native imageDataOrigin(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native imageId()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native imageId(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native imageSize()I
.end method

.method public native imageSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native maskROI()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native maskROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native nChannels()I
.end method

.method public native nChannels(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native nSize()I
.end method

.method public native nSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native origin()I
.end method

.method public native origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "position"

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->deallocate()V

    .line 551
    return-void
.end method

.method public native roi(Lcom/googlecode/javacv/cpp/opencv_core$IplROI;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
.end method

.method public native tileInfo(Lcom/googlecode/javacv/cpp/opencv_core$IplTileInfo;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native tileInfo()Lcom/googlecode/javacv/cpp/opencv_core$IplTileInfo;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    invoke-super {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1228
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IplImage[width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",nChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public native width()I
.end method

.method public native width(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native widthStep()I
.end method

.method public native widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
