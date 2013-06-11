.class public Lcom/googlecode/javacv/cpp/opencv_objdetect;
.super Ljava/lang/Object;
.source "opencv_objdetect.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/objdetect/objdetect.hpp>",
                "opencv_adapters.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_objdetect@.2.4",
                "opencv_highgui@.2.4",
                "opencv_imgproc@.2.4",
                "opencv_core@.2.4"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/opencv/build/include/"
            }
            link = {
                "opencv_objdetect245",
                "opencv_highgui245",
                "opencv_imgproc245",
                "opencv_core245"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            linkpath = {
                "C:/opencv/build/x86/vc10/lib/"
            }
            preloadpath = {
                "C:/opencv/build/x86/vc10/bin/"
            }
            value = {
                "windows-x86"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            linkpath = {
                "C:/opencv/build/x64/vc10/lib/"
            }
            preloadpath = {
                "C:/opencv/build/x64/vc10/bin/"
            }
            value = {
                "windows-x86_64"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "../include/"
            }
            linkpath = {
                "../lib/"
            }
            value = {
                "android"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_objdetect$Detector;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$Match;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$DepthNormal;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$ColorGradient;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$QuantizedPyramid;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$Template;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$Feature;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCodeDeque;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCode;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$HOGDescriptor;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$DetectionROI;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CascadeClassifier;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$FeatureEvaluator;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvObjectDetection;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterPosition;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHidHaarClassifierCascade;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifier;,
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarFeature;
    }
.end annotation


# static fields
.field public static final CV_HAAR_DO_CANNY_PRUNING:I = 0x1

.field public static final CV_HAAR_DO_ROUGH_SEARCH:I = 0x8

.field public static final CV_HAAR_FEATURE_MAX:I = 0x3

.field public static final CV_HAAR_FIND_BIGGEST_OBJECT:I = 0x4

.field public static final CV_HAAR_MAGIC_VAL:I = 0x42500000

.field public static final CV_HAAR_SCALE_IMAGE:I = 0x2

.field public static final CV_TYPE_NAME_HAAR:Ljava/lang/String; = "opencv-haar-classifier"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_imgproc;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_highgui;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    return-void
.end method

.method public static CV_IS_HAAR_CLASSIFIER(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;)Z
    .locals 2
    .parameter "haar"

    .prologue
    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;->flags()I

    move-result v0

    const/high16 v1, -0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x4250

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native cvFindDataMatrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvDataMatrixCodeDeque;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static cvHaarDetectObjects(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;DII)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .locals 9
    .parameter "image"
    .parameter "cascade"
    .parameter "storage"
    .parameter "scale_factor"
    .parameter "min_neighbors"
    .parameter "flags"

    .prologue
    .line 244
    sget-object v7, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    sget-object v8, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_objdetect;->cvHaarDetectObjects(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;DIILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v0

    return-object v0
.end method

.method public static native cvHaarDetectObjects(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;DIILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
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
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvHaarDetectObjectsForROC(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/DoublePointer;DIILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Z)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public static native cvLatentSvmDetectObjects(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;FI)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
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
.end method

.method public static native cvLoadHaarClassifierCascade(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvLoadLatentSvmDetector(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
.end method

.method public static native cvReleaseHaarClassifierCascade(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseLatentSvmDetector(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvRunHaarClassifierCascade(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvSetImagesForHaarClassifierCascade(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;D)V
.end method

.method public static native drawDataMatrixCodes(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$StringVector;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native findDataMatrix(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$StringVector;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMatArray;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
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
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native getDefaultLINE()Lcom/googlecode/javacv/cpp/opencv_objdetect$Detector;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::linemod"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native getDefaultLINEMOD()Lcom/googlecode/javacv/cpp/opencv_objdetect$Detector;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::linemod"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native groupRectangles(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;ID)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native groupRectangles(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;IDLcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/DoublePointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native groupRectangles(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacpp/IntPointer;ID)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native groupRectangles(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/DoublePointer;ID)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native groupRectangles_meanshift(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;DLcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method
