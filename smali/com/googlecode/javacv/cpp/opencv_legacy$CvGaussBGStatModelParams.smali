.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvGaussBGStatModelParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2713
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2714
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2715
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2716
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native bg_threshold()D
.end method

.method public native bg_threshold(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
.end method

.method public native minArea()D
.end method

.method public native minArea(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
.end method

.method public native n_gauss()I
.end method

.method public native n_gauss(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2712
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2712
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 2721
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;

    return-object v0
.end method

.method public native std_threshold()D
.end method

.method public native std_threshold(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
.end method

.method public native variance_init()D
.end method

.method public native variance_init(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
.end method

.method public native weight_init()D
.end method

.method public native weight_init(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
.end method

.method public native win_size()I
.end method

.method public native win_size(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
.end method
