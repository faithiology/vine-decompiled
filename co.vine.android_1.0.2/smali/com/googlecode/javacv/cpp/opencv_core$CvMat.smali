.class public Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvMat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private doubleBuffer:Ljava/nio/DoubleBuffer;

.field private floatBuffer:Ljava/nio/FloatBuffer;

.field private fullSize:I

.field private intBuffer:Ljava/nio/IntBuffer;

.field private shortBuffer:Ljava/nio/ShortBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1363
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_core;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1364
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V

    .line 1522
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    .line 1524
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 1525
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 1526
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;

    .line 1527
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 1528
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;

    .line 1364
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 1365
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V

    .line 1522
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    .line 1524
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 1525
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 1526
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;

    .line 1527
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 1528
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;

    .line 1365
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 2
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    .line 1366
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 1522
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    .line 1524
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 1525
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 1526
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;

    .line 1527
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 1528
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;

    .line 1366
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "rows"
    .parameter "cols"

    .prologue
    .line 1386
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static create(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "rows"
    .parameter "cols"
    .parameter "type"

    .prologue
    .line 1375
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateMat(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    .line 1376
    .local v0, m:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->size()I

    move-result v1

    iput v1, v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    .line 1378
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 1380
    :cond_0
    return-object v0
.end method

.method public static create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "rows"
    .parameter "cols"
    .parameter "depth"
    .parameter "channels"

    .prologue
    .line 1383
    invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static createHeader(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "rows"
    .parameter "cols"

    .prologue
    .line 1401
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static createHeader(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "rows"
    .parameter "cols"
    .parameter "type"

    .prologue
    .line 1390
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateMatHeader(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    .line 1391
    .local v0, m:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->size()I

    move-result v1

    iput v1, v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    .line 1393
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 1395
    :cond_0
    return-object v0
.end method

.method public static createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "rows"
    .parameter "cols"
    .parameter "depth"
    .parameter "channels"

    .prologue
    .line 1398
    invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeader(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static createHeaderThreadLocal(II)Ljava/lang/ThreadLocal;
    .locals 2
    .parameter "rows"
    .parameter "cols"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1425
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeaderThreadLocal(IIII)Ljava/lang/ThreadLocal;

    move-result-object v0

    return-object v0
.end method

.method public static createHeaderThreadLocal(III)Ljava/lang/ThreadLocal;
    .locals 1
    .parameter "rows"
    .parameter "cols"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1417
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;-><init>(III)V

    return-object v0
.end method

.method public static createHeaderThreadLocal(IIII)Ljava/lang/ThreadLocal;
    .locals 1
    .parameter "rows"
    .parameter "cols"
    .parameter "depth"
    .parameter "channels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1422
    invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeaderThreadLocal(III)Ljava/lang/ThreadLocal;

    move-result-object v0

    return-object v0
.end method

.method public static createThreadLocal(II)Ljava/lang/ThreadLocal;
    .locals 2
    .parameter "rows"
    .parameter "cols"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1413
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(IIII)Ljava/lang/ThreadLocal;

    move-result-object v0

    return-object v0
.end method

.method public static createThreadLocal(III)Ljava/lang/ThreadLocal;
    .locals 1
    .parameter "rows"
    .parameter "cols"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1405
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;-><init>(III)V

    return-object v0
.end method

.method public static createThreadLocal(IIII)Ljava/lang/ThreadLocal;
    .locals 1
    .parameter "rows"
    .parameter "cols"
    .parameter "depth"
    .parameter "channels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1410
    invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(III)Ljava/lang/ThreadLocal;

    move-result-object v0

    return-object v0
.end method

.method private fullSize()I
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->size()I

    move-result v0

    iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    goto :goto_0
.end method


# virtual methods
.method public asIplImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 1739
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;-><init>()V

    .line 1740
    .local v0, image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetImage(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 1741
    return-object v0
.end method

.method public channels()I
    .locals 1

    .prologue
    .line 1473
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I

    move-result v0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAT_CN(I)I

    move-result v0

    return v0
.end method

.method public clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2

    .prologue
    .line 1429
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCloneMat(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    .line 1430
    .local v0, m:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    if-eqz v0, :cond_0

    .line 1431
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 1433
    :cond_0
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
    .line 1363
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public native cols()I
.end method

.method public native cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public cvSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .locals 2

    .prologue
    .line 1511
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v1

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v0

    return-object v0
.end method

.method public native data_db()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.db"
        }
    .end annotation
.end method

.method public native data_db(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native data_fl()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.fl"
        }
    .end annotation
.end method

.method public native data_fl(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native data_i()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.i"
        }
    .end annotation
.end method

.method public native data_i(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native data_ptr()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.ptr"
        }
    .end annotation
.end method

.method public native data_ptr(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native data_s()Lcom/googlecode/javacpp/ShortPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "data.s"
        }
    .end annotation
.end method

.method public native data_s(Lcom/googlecode/javacpp/ShortPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public depth()I
    .locals 1

    .prologue
    .line 1470
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I

    move-result v0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAT_DEPTH(I)I

    move-result v0

    return v0
.end method

.method public elemSize()I
    .locals 1

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1490
    sget-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1484
    :pswitch_0
    const/4 v0, 0x1

    .line 1492
    :goto_0
    return v0

    .line 1486
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1488
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 1489
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 1492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public empty()Z
    .locals 1

    .prologue
    .line 1501
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)D
    .locals 2
    .parameter "i"

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1574
    sget-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1567
    :pswitch_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-double v0, v0

    .line 1576
    :goto_0
    return-wide v0

    .line 1568
    :pswitch_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 1569
    :pswitch_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-double v0, v0

    goto :goto_0

    .line 1570
    :pswitch_3
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 1571
    :pswitch_4
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 1572
    :pswitch_5
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    .line 1573
    :pswitch_6
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v0

    goto :goto_0

    .line 1576
    :cond_0
    const-wide/high16 v0, 0x7ff8

    goto :goto_0

    .line 1566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public get(II)D
    .locals 2
    .parameter "i"
    .parameter "j"

    .prologue
    .line 1579
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I

    move-result v1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public get(III)D
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "k"

    .prologue
    .line 1583
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I

    move-result v1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public get(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "index"
    .parameter "vv"

    .prologue
    .line 1635
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 9
    .parameter "index"
    .parameter "vv"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1586
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I

    move-result v1

    .line 1587
    .local v1, d:I
    packed-switch v1, :pswitch_data_0

    .line 1630
    sget-boolean v6, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    .end local v1           #d:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1590
    .restart local v1       #d:I
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1591
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1592
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p4, :cond_2

    .line 1593
    if-nez v1, :cond_0

    .line 1594
    add-int v6, v3, p3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-double v7, v7

    aput-wide v7, p2, v6

    .line 1592
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1596
    :cond_0
    add-int v6, v3, p3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    int-to-double v7, v7

    aput-wide v7, p2, v6

    goto :goto_1

    .line 1602
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v3           #i:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 1603
    .local v5, sb:Ljava/nio/ShortBuffer;
    invoke-virtual {v5, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1604
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, p4, :cond_2

    .line 1605
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 1606
    add-int v6, v3, p3

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    int-to-double v7, v7

    aput-wide v7, p2, v6

    .line 1604
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1608
    :cond_1
    add-int v6, v3, p3

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S

    move-result v7

    int-to-double v7, v7

    aput-wide v7, p2, v6

    goto :goto_3

    .line 1613
    .end local v3           #i:I
    .end local v5           #sb:Ljava/nio/ShortBuffer;
    :pswitch_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    .line 1614
    .local v4, ib:Ljava/nio/IntBuffer;
    invoke-virtual {v4, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 1615
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, p4, :cond_2

    .line 1616
    add-int v6, v3, p3

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->get()I

    move-result v7

    int-to-double v7, v7

    aput-wide v7, p2, v6

    .line 1615
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1620
    .end local v3           #i:I
    .end local v4           #ib:Ljava/nio/IntBuffer;
    :pswitch_3
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 1621
    .local v2, fb:Ljava/nio/FloatBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1622
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, p4, :cond_2

    .line 1623
    add-int v6, v3, p3

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F

    move-result v7

    float-to-double v7, v7

    aput-wide v7, p2, v6

    .line 1622
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1627
    .end local v2           #fb:Ljava/nio/FloatBuffer;
    .end local v3           #i:I
    :pswitch_4
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 1628
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v6

    invoke-virtual {v6, p2, p3, p4}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1632
    :cond_2
    monitor-exit p0

    return-object p0

    .line 1587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public get([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "vv"

    .prologue
    .line 1638
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public get()[D
    .locals 3

    .prologue
    .line 1641
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I

    move-result v2

    div-int/2addr v1, v2

    new-array v0, v1, [D

    .line 1642
    .local v0, vv:[D
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 1643
    return-object v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 1531
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_ptr()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1534
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 2

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;

    if-nez v0, :cond_0

    .line 1559
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_db()Lcom/googlecode/javacpp/DoublePointer;

    move-result-object v0

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/DoublePointer;->capacity(I)Lcom/googlecode/javacpp/DoublePointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/DoublePointer;->asBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 1562
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public getFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_fl()Lcom/googlecode/javacpp/FloatPointer;

    move-result-object v0

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/FloatPointer;->capacity(I)Lcom/googlecode/javacpp/FloatPointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/FloatPointer;->asBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1555
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getIntBuffer()Ljava/nio/IntBuffer;
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    .line 1545
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_i()Lcom/googlecode/javacpp/IntPointer;

    move-result-object v0

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/IntPointer;->capacity(I)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/IntPointer;->asBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 1548
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getShortBuffer()Ljava/nio/ShortBuffer;
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_0

    .line 1538
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_s()Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v0

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/ShortPointer;->capacity(I)Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/ShortPointer;->asBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1541
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public native hdr_refcount()I
.end method

.method public native hdr_refcount(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public isContinuous()Z
    .locals 1

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I

    move-result v0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_IS_MAT_CONT(I)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 1495
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public nChannels()I
    .locals 1

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I

    move-result v0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAT_CN(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1363
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "position"

    .prologue
    .line 1371
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "i"
    .parameter "v"

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1655
    sget-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1649
    :pswitch_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    double-to-int v1, p2

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 1657
    :cond_0
    :goto_0
    return-object p0

    .line 1651
    :pswitch_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    double-to-int v1, p2

    int-to-short v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 1652
    :pswitch_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    double-to-int v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 1653
    :pswitch_3
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    double-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 1654
    :pswitch_4
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    goto :goto_0

    .line 1647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "v"

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I

    move-result v1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public put(IIID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "k"
    .parameter "v"

    .prologue
    .line 1663
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I

    move-result v1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0, v0, p4, p5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(IIILcom/googlecode/javacv/cpp/opencv_core$CvMat;III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 13
    .parameter "dsti"
    .parameter "dstj"
    .parameter "dstk"
    .parameter "mat"
    .parameter "srci"
    .parameter "srcj"
    .parameter "srck"

    .prologue
    .line 1718
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I

    move-result v2

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    if-nez p7, :cond_1

    .line 1720
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1721
    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1722
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    :cond_0
    monitor-exit p0

    return-object p0

    .line 1724
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v2

    sub-int v2, v2, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1725
    .local v12, w:I
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v2

    sub-int v2, v2, p6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1726
    .local v8, h:I
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I

    move-result v1

    sub-int v1, v1, p3

    invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I

    move-result v2

    sub-int v2, v2, p7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1727
    .local v7, d:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 1728
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    if-ge v10, v8, :cond_3

    .line 1729
    const/4 v11, 0x0

    .local v11, k:I
    :goto_2
    if-ge v11, v7, :cond_2

    .line 1730
    add-int v2, v9, p1

    add-int v3, v10, p2

    add-int v4, v11, p3

    add-int v1, v9, p5

    add-int v5, v10, p6

    add-int v6, v11, p7

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IIID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1729
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1728
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1727
    .end local v11           #k:I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1718
    .end local v7           #d:I
    .end local v8           #h:I
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v12           #w:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 2
    .parameter "index"
    .parameter "vv"

    .prologue
    .line 1707
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 8
    .parameter "index"
    .parameter "vv"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1666
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1702
    sget-boolean v6, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1669
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1670
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1671
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 1672
    add-int v6, v3, p3

    aget-wide v6, p2, v6

    double-to-int v6, v6

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1671
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1677
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v3           #i:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 1678
    .local v5, sb:Ljava/nio/ShortBuffer;
    invoke-virtual {v5, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1679
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, p4, :cond_0

    .line 1680
    add-int v6, v3, p3

    aget-wide v6, p2, v6

    double-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 1679
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1684
    .end local v3           #i:I
    .end local v5           #sb:Ljava/nio/ShortBuffer;
    :pswitch_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    .line 1685
    .local v4, ib:Ljava/nio/IntBuffer;
    invoke-virtual {v4, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 1686
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, p4, :cond_0

    .line 1687
    add-int v6, v3, p3

    aget-wide v6, p2, v6

    double-to-int v6, v6

    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 1686
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1691
    .end local v3           #i:I
    .end local v4           #ib:Ljava/nio/IntBuffer;
    :pswitch_3
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 1692
    .local v2, fb:Ljava/nio/FloatBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1693
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, p4, :cond_0

    .line 1694
    add-int v6, v3, p3

    aget-wide v6, p2, v6

    double-to-float v6, v6

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1693
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1698
    .end local v2           #fb:Ljava/nio/FloatBuffer;
    .end local v3           #i:I
    :pswitch_4
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    .line 1699
    .local v1, db:Ljava/nio/DoubleBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 1700
    invoke-virtual {v1, p2, p3, p4}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1704
    .end local v1           #db:Ljava/nio/DoubleBuffer;
    :cond_0
    monitor-exit p0

    return-object p0

    .line 1666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public put(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 8
    .parameter "mat"

    .prologue
    const/4 v1, 0x0

    .line 1714
    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IIILcom/googlecode/javacv/cpp/opencv_core$CvMat;III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public varargs put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "vv"

    .prologue
    .line 1710
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public native raw_type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "type"
        }
    .end annotation
.end method

.method public native raw_type(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native refcount()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native refcount(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public release()V
    .locals 0

    .prologue
    .line 1437
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->deallocate()V

    .line 1438
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1514
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I

    .line 1515
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 1516
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 1517
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;

    .line 1518
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 1519
    iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;

    .line 1520
    return-void
.end method

.method public native rows()I
.end method

.method public native rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1504
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v1

    mul-int/2addr v0, v1

    .line 1508
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public native step()I
.end method

.method public native step(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1745
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 9
    .parameter "indent"

    .prologue
    const/4 v8, 0x1

    .line 1748
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[ "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1749
    .local v4, s:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I

    move-result v0

    .line 1750
    .local v0, channels:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 1751
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 1752
    invoke-static {p0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGet2D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;II)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v5

    .line 1753
    .local v5, v:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    if-le v0, v8, :cond_0

    .line 1754
    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    :cond_0
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 1757
    invoke-virtual {v5, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->val(I)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1758
    add-int/lit8 v6, v0, -0x1

    if-ge v3, v6, :cond_1

    .line 1759
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1762
    :cond_2
    if-le v0, v8, :cond_3

    .line 1763
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    :cond_3
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    .line 1766
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1769
    .end local v3           #k:I
    .end local v5           #v:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
    :cond_5
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    .line 1770
    const-string v6, "\n  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_6

    .line 1772
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1771
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1750
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1776
    .end local v2           #j:I
    :cond_7
    const-string v6, " ]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public total()I
    .locals 2

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->raw_type()I

    move-result v0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAT_TYPE(I)I

    move-result v0

    return v0
.end method

.method public type(II)V
    .locals 2
    .parameter "depth"
    .parameter "cn"

    .prologue
    .line 1467
    invoke-static {p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I

    move-result v0

    const/high16 v1, 0x4242

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->raw_type(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 1468
    return-void
.end method
