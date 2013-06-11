.class public Lcom/googlecode/javacv/ProCamTransformer$Parameters;
.super Ljava/lang/Object;
.source "ProCamTransformer.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageTransformer$Parameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ProCamTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# instance fields
.field private H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

.field private surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

.field private t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field private tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field final synthetic this$0:Lcom/googlecode/javacv/ProCamTransformer;


# direct methods
.method protected constructor <init>(Lcom/googlecode/javacv/ProCamTransformer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 340
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 349
    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 350
    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 351
    invoke-static {v1, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->reset(Z)V

    .line 342
    return-void
.end method

.method protected constructor <init>(Lcom/googlecode/javacv/ProCamTransformer;Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;)V
    .locals 3
    .parameter
    .parameter "surfaceParameters"
    .parameter "projectorParameters"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 344
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 349
    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 350
    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 351
    invoke-static {v1, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 345
    invoke-virtual {p0, p2, p3}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->reset(Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;)V

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method static synthetic access$002(Lcom/googlecode/javacv/ProCamTransformer$Parameters;[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->tempImage:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object p1
.end method

.method static synthetic access$100(Lcom/googlecode/javacv/ProCamTransformer$Parameters;)Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    return-object v0
.end method

.method private getSizeForProjector()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->size()I

    move-result v0

    return v0
.end method

.method private getSizeForSurface()I
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->size()I

    move-result v0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getNumGains()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getNumBiases()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getSubspaceInternal()[D
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 507
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->frontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v1, :cond_0

    .line 518
    :goto_0
    return-object v0

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getK1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProCamTransformer;->frontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 511
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 512
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getInvK2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 514
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/JavaCV;->HtoRt(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 515
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v1, v2, v0}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvRodrigues2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I

    .line 516
    const/4 v1, 0x6

    new-array v0, v1, [D

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    aput-wide v1, v0, v4

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    aput-wide v1, v0, v5

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    aput-wide v1, v0, v6

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v2, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 518
    .local v0, p:[D
    goto :goto_0
.end method

.method private varargs setSubspaceInternal([D)[D
    .locals 13
    .parameter "p"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->invFrontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v0, :cond_0

    .line 470
    const/4 v12, 0x0

    .line 503
    :goto_0
    return-object v12

    .line 472
    :cond_0
    const/16 v0, 0xb

    new-array v12, v0, [D

    .line 473
    .local v12, dst:[D
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-wide v6, p1, v6

    aput-wide v6, v1, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-wide v6, p1, v6

    aput-wide v6, v1, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-wide v6, p1, v6

    aput-wide v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 474
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvRodrigues2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I

    .line 475
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v5, 0x0

    const/4 v6, 0x3

    aget-wide v6, p1, v6

    aput-wide v6, v1, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    aget-wide v6, p1, v6

    aput-wide v6, v1, v5

    const/4 v5, 0x2

    const/4 v6, 0x5

    aget-wide v6, p1, v6

    aput-wide v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 478
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v1, 0x9

    new-array v1, v1, [D

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v6

    aput-wide v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 481
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->invFrontoParallelH:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 482
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getK2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 483
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getInvK1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 486
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v2, 0x3ff0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 487
    const-wide/high16 v0, 0x3ff0

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v5

    div-double v2, v0, v5

    .line 488
    .local v2, scale:D
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x3

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 489
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 492
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getReferencePoints2()[D

    move-result-object v4

    .line 493
    .local v4, src:[D
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getInvK1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v6

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getK2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getR()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v8

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getT()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v9

    iget-object v10, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v11, 0x1

    move-object v5, v12

    invoke-static/range {v4 .. v11}, Lcom/googlecode/javacv/JavaCV;->perspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V

    .line 496
    const/16 v0, 0x8

    const/4 v1, 0x0

    aget-wide v5, v12, v1

    aput-wide v5, v12, v0

    .line 497
    const/16 v0, 0x9

    const/4 v1, 0x2

    aget-wide v5, v12, v1

    aput-wide v5, v12, v0

    .line 498
    const/16 v0, 0xa

    const/4 v1, 0x4

    aget-wide v5, v12, v1

    aput-wide v5, v12, v0

    .line 501
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getReferencePoints1()[D

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v12, v1}, Lcom/googlecode/javacv/JavaCV;->perspectiveTransform([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    goto/16 :goto_0

    .line 488
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
    .end array-data
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/googlecode/javacv/ImageTransformer$Parameters;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;-><init>(Lcom/googlecode/javacv/ProCamTransformer;)V

    .line 568
    .local v0, p:Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 569
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 570
    return-object v0

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->clone()Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lcom/googlecode/javacv/ImageTransformer$Parameters;ZLcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 2
    .parameter "p1"
    .parameter "inverse1"
    .parameter "p2"
    .parameter "inverse2"

    .prologue
    .line 445
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compose operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)D
    .locals 2
    .parameter "i"

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSizeForSurface()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->get(I)D

    move-result-wide v0

    .line 382
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-direct {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSizeForSurface()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->get(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public get()[D
    .locals 4

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->size()I

    move-result v2

    new-array v1, v2, [D

    .line 373
    .local v1, p:[D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 374
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->get(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    return-object v1
.end method

.method public getConstraintError()D
    .locals 3

    .prologue
    .line 439
    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v2, v2, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 440
    .local v0, error:D
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->update()V

    .line 441
    return-wide v0

    .line 439
    .end local v0           #error:D
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getConstraintError()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getN()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 13

    .prologue
    .line 522
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getReferencePoints2()[D

    move-result-object v12

    .line 523
    .local v12, src:[D
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getReferencePoints1()[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 524
    .local v11, dst:[D
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->get(I)D

    move-result-wide v1

    aput-wide v1, v11, v0

    .line 525
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->get(I)D

    move-result-wide v1

    aput-wide v1, v11, v0

    .line 526
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->get(I)D

    move-result-wide v1

    aput-wide v1, v11, v0

    .line 531
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getR()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvTranspose(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 532
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getT()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    const-wide/high16 v2, -0x4010

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 533
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getInvK2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v2

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getK1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object v0, v12

    move-object v1, v11

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/JavaCV;->getPlaneParameters([D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 535
    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v3, v3, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v3}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getT()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvDotProduct(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    move-result-wide v2

    add-double v9, v0, v2

    .line 536
    .local v9, d:D
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const-wide/high16 v2, 0x3ff0

    div-double/2addr v2, v9

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 538
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method public getN0()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x3ff0

    const-wide/16 v5, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getN()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 543
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 563
    :goto_0
    return-object v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->camera:Lcom/googlecode/javacv/CameraDevice;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->get()[D

    move-result-object v1

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v8, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v0, v1, v7, v8}, Lcom/googlecode/javacv/CameraDevice;->getFrontoParallelH([DLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 550
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getH()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)D

    .line 551
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getK2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 552
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 553
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getInvK1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 555
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v0, v1, v7}, Lcom/googlecode/javacv/JavaCV;->HtoRt(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 558
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 559
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->t:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 560
    .local v2, scale:D
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v1, 0x3

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 561
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v7, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGEMM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 563
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->n:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0

    .line 560
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
    .end array-data
.end method

.method public getProjectorParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    return-object v0
.end method

.method public getSubspace()[D
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSubspaceInternal()[D

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    return-object v0
.end method

.method public preoptimize()Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 449
    invoke-direct {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSubspaceInternal()[D

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->setSubspaceInternal([D)[D

    move-result-object v0

    .line 450
    .local v0, p:[D
    if-eqz v0, :cond_0

    .line 451
    aget-wide v1, v0, v3

    invoke-virtual {p0, v3, v1, v2}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->set(ID)V

    .line 452
    aget-wide v1, v0, v4

    invoke-virtual {p0, v4, v1, v2}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->set(ID)V

    .line 453
    aget-wide v1, v0, v5

    invoke-virtual {p0, v5, v1, v2}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->set(ID)V

    .line 454
    const/4 v1, 0x1

    .line 456
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset(Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;)V
    .locals 1
    .parameter "surfaceParameters"
    .parameter "projectorParameters"

    .prologue
    .line 410
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->createParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object p1

    .line 413
    :cond_0
    if-nez p2, :cond_1

    .line 414
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v0, v0, Lcom/googlecode/javacv/ProCamTransformer;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->createParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object p2

    .line 416
    :cond_1
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 417
    iput-object p2, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 419
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSubspace()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->setSubspace([D)V

    .line 420
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "asIdentity"

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, v0, v0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->reset(Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;)V

    .line 407
    return-void
.end method

.method public set(ID)V
    .locals 2
    .parameter "i"
    .parameter "p"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSizeForSurface()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v0, p1, p2, p3}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->set(ID)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-direct {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSizeForSurface()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->set(ID)V

    goto :goto_0
.end method

.method public set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 398
    move-object v0, p1

    check-cast v0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    .line 399
    .local v0, pcp:Lcom/googlecode/javacv/ProCamTransformer$Parameters;
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->this$0:Lcom/googlecode/javacv/ProCamTransformer;

    iget-object v1, v1, Lcom/googlecode/javacv/ProCamTransformer;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSurfaceParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 401
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->resetColor(Z)V

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getProjectorParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->set(Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 404
    return-void
.end method

.method public varargs set([D)V
    .locals 3
    .parameter "p"

    .prologue
    .line 386
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 387
    aget-wide v1, p1, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->set(ID)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public varargs setSubspace([D)V
    .locals 1
    .parameter "p"

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->setSubspaceInternal([D)[D

    move-result-object v0

    .line 460
    .local v0, dst:[D
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->set([D)V

    .line 463
    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSizeForSurface()I

    move-result v0

    invoke-direct {p0}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->getSizeForProjector()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->surfaceParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->projectorParameters:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
