.class public Lcom/googlecode/javacv/cpp/opencv_legacy$PlanarObjectDetector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlanarObjectDetector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2314
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$PlanarObjectDetector;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2315
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
    .locals 0
    .parameter "fs"
    .parameter "node"

    .prologue
    .line 2316
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy$PlanarObjectDetector;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;IIIIILcom/googlecode/javacv/cpp/opencv_legacy$LDetector;Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)V
    .locals 0
    .parameter "pyr"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
            value = true
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "IplImage*,cv::Mat"
        .end annotation
    .end parameter
    .parameter "_npoints"
    .end parameter
    .parameter "_patchSize"
    .end parameter
    .parameter "_nstructs"
    .end parameter
    .parameter "_structSize"
    .end parameter
    .parameter "_nviews"
    .end parameter
    .parameter "detector"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter "patchGenerator"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter

    .prologue
    .line 2323
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 2324
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_legacy$PlanarObjectDetector;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;IIIIILcom/googlecode/javacv/cpp/opencv_legacy$LDetector;Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)V

    .line 2326
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            argc = 0x2
            value = "FileNodeAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;IIIIILcom/googlecode/javacv/cpp/opencv_legacy$LDetector;Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)V
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint2D32f,cv::Point2f"
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native detect(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacpp/IntPointer;)Z
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
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint2D32f,cv::Point2f"
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

.method public native getModelPoints()Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            argc = 0x2
            value = "FileNodeAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native setVerbose(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;IIIIILcom/googlecode/javacv/cpp/opencv_legacy$LDetector;Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)V
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native train(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_features2d$KeyPoint;IIIILcom/googlecode/javacv/cpp/opencv_legacy$LDetector;Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;)V
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
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native write(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "FileStorageAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
