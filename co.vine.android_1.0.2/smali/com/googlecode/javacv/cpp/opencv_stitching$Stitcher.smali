.class public Lcom/googlecode/javacv/cpp/opencv_stitching$Stitcher;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stitcher"
.end annotation


# static fields
.field public static final ERR_NEED_MORE_IMGS:I = 0x1

.field public static final OK:I = 0x0

.field public static final ORIG_RESOL:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1174
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1176
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public static native createDefault(Z)Lcom/googlecode/javacv/cpp/opencv_stitching$Stitcher;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method


# virtual methods
.method public native blender()Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native bundleAdjuster()Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterBase;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native cameras()Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native component()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native composePanorama(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
.end method

.method public native composePanorama(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
.end method

.method public native compositingResol()D
.end method

.method public native estimateTransform(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native estimateTransform(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;Lcom/googlecode/javacv/cpp/opencv_core$RectVectorVector;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native exposureCompensator()Lcom/googlecode/javacv/cpp/opencv_stitching$ExposureCompensator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native featuresFinder()Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native featuresMatcher()Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesMatcher;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native matchingMask()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native panoConfidenceThresh()D
.end method

.method public native registrationResol()D
.end method

.method public native seamEstimationResol()D
.end method

.method public native seamFinder()Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native setBlender(Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setBundleAdjuster(Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterBase;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setCompositingResol(D)V
.end method

.method public native setExposureCompensator(Lcom/googlecode/javacv/cpp/opencv_stitching$ExposureCompensator;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setFeaturesFinder(Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setFeaturesMatcher(Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesMatcher;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setMatchingMask(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public native setPanoConfidenceThresh(D)V
.end method

.method public native setRegistrationResol(D)V
.end method

.method public native setSeamEstimationResol(D)V
.end method

.method public native setSeamFinder(Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setWarper(Lcom/googlecode/javacv/cpp/opencv_stitching$WarperCreator;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setWaveCorrectKind(I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cv::detail::WaveCorrectKind"
            }
        .end annotation
    .end parameter
.end method

.method public native setWaveCorrection(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native stitch(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
.end method

.method public native stitch(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;Lcom/googlecode/javacv/cpp/opencv_core$RectVectorVector;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
.end method

.method public native warper()Lcom/googlecode/javacv/cpp/opencv_stitching$WarperCreator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native waveCorrectKind()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "cv::detail::WaveCorrectKind"
        }
    .end annotation
.end method

.method public native waveCorrection()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native workScale()D
.end method
