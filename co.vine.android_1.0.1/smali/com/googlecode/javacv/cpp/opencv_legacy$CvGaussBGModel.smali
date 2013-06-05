.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvGaussBGModel"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2768
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2769
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2770
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2771
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native countFrames()I
.end method

.method public native countFrames(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;
.end method

.method public native g_point(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGPoint;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;
.end method

.method public native g_point()Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGPoint;
.end method

.method public native params(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;
.end method

.method public native params()Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2767
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2767
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;
    .locals 1
    .parameter "position"

    .prologue
    .line 2776
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;

    return-object v0
.end method
