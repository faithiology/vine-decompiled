.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvCalibFilter;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvCalibFilter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1430
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1431
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCalibFilter;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1432
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native DrawPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)V
.end method

.method public native DrawPoints(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;)V
.end method

.method public native FindEtalon(Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)Z
.end method

.method public native FindEtalon(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;)Z
.end method

.method public native GetCameraCount()I
.end method

.method public native GetCameraParams(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native GetEtalon([ILcom/googlecode/javacpp/PointerPointer;[ILcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const double**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const CvPoint2D32f**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvCalibEtalonType"
        }
    .end annotation
.end method

.method public native GetFrameCount([I)I
.end method

.method public native GetLatestPoints(ILcom/googlecode/javacpp/PointerPointer;[I[Z)Z
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvPoint2D32f**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
.end method

.method public native GetStereoParams()Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native IsCalibrated()Z
.end method

.method public native LoadCameraParams(Ljava/lang/String;)Z
.end method

.method public native Push(Lcom/googlecode/javacpp/PointerPointer;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const CvPoint2D32f**"
            }
        .end annotation
    .end parameter
.end method

.method public native Rectify(Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)Z
.end method

.method public native Rectify(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;)Z
.end method

.method public native SaveCameraParams(Ljava/lang/String;)Z
.end method

.method public native SetCameraCount(I)V
.end method

.method public native SetCameraParams(Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;)Z
.end method

.method public native SetEtalon(I[DILcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvCalibEtalonType"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native SetFrames(I)Z
.end method

.method public native Stop(Z)V
.end method

.method public native Undistort(Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)Z
.end method

.method public native Undistort(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;)Z
.end method
