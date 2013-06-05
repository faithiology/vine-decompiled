.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvConvexityDefect"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 638
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native depth()F
.end method

.method public native depth(F)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;
.end method

.method public native depth_point()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.end method

.method public native depth_point(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;
.end method

.method public native end()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.end method

.method public native end(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;
    .locals 1
    .parameter "position"

    .prologue
    .line 646
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;

    return-object v0
.end method

.method public native start()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.end method

.method public native start(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConvexityDefect;
.end method
