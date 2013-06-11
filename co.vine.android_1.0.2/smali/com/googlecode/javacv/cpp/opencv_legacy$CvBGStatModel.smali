.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBGStatModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2518
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2519
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2520
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2521
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
    .locals 2
    .parameter "first_frame"
    .parameter "parameters"

    .prologue
    .line 2530
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreateFGDStatModel(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;

    move-result-object v0

    .line 2531
    .local v0, m:Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
    if-eqz v0, :cond_0

    .line 2532
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 2534
    :cond_0
    return-object v0
.end method

.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
    .locals 2
    .parameter "first_frame"
    .parameter "parameters"

    .prologue
    .line 2537
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreateGaussianBGModel(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;

    move-result-object v0

    .line 2538
    .local v0, m:Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
    if-eqz v0, :cond_0

    .line 2539
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 2541
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native background()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native background(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public native foreground()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native foreground(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public native foreground_regions()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native foreground_regions(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public native layer_count()I
.end method

.method public native layer_count(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public native layers()Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;
.end method

.method public native layers(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2517
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
    .locals 1
    .parameter "position"

    .prologue
    .line 2526
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;

    return-object v0
.end method

.method public native release(Lcom/googlecode/javacv/cpp/opencv_legacy$CvReleaseBGStatModel;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public native release()Lcom/googlecode/javacv/cpp/opencv_legacy$CvReleaseBGStatModel;
.end method

.method public release2()V
    .locals 0

    .prologue
    .line 2545
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->deallocate()V

    .line 2546
    return-void
.end method

.method public native storage()Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;
.end method

.method public native storage(Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public native type()I
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public native update(Lcom/googlecode/javacv/cpp/opencv_legacy$CvUpdateBGStatModel;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public native update()Lcom/googlecode/javacv/cpp/opencv_legacy$CvUpdateBGStatModel;
.end method
