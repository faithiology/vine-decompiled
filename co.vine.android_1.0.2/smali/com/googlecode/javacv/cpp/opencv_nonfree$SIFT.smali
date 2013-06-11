.class public Lcom/googlecode/javacv/cpp/opencv_nonfree$SIFT;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;
.source "opencv_nonfree.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_nonfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIFT"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 96
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_nonfree$SIFT;->allocate()V

    return-void
.end method

.method public constructor <init>(IIDDD)V
    .locals 0
    .parameter "nfeatures"
    .parameter "nOctaveLayers"
    .parameter "contrastThreshold"
    .parameter "edgeThreshold"
    .parameter "sigma"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>()V

    .line 101
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_nonfree$SIFT;->allocate(IIDDD)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$Feature2D;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIDDD)V
.end method


# virtual methods
.method public native buildDoGPyramid(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
            value = true
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "IplImage*,cv::Mat"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
            value = true
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "IplImage*,cv::Mat"
        .end annotation
    .end parameter
.end method

.method public native buildGaussianPyramid(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
            value = true
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "IplImage*,cv::Mat"
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native descriptorSize()I
.end method

.method public native descriptorType()I
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native findScaleSpaceExtrema(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
            value = true
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "IplImage*,cv::Mat"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
            value = true
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "IplImage*,cv::Mat"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
.end method

.method public native info()Lcom/googlecode/javacv/cpp/opencv_core$AlgorithmInfo;
.end method
