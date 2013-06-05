.class public Lcom/googlecode/javacv/cpp/opencv_video;
.super Ljava/lang/Object;
.source "opencv_video.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/video/video.hpp>",
                "opencv_adapters.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_video@.2.4",
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
                "opencv_video245",
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
        Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;,
        Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorMOG2;,
        Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorMOG;,
        Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;,
        Lcom/googlecode/javacv/cpp/opencv_video$DenseOpticalFlow;,
        Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
    }
.end annotation


# static fields
.field public static final CV_LKFLOW_GET_MIN_EIGENVALS:I = 0x8

.field public static final CV_LKFLOW_INITIAL_GUESSES:I = 0x4

.field public static final CV_LKFLOW_PYR_A_READY:I = 0x1

.field public static final CV_LKFLOW_PYR_B_READY:I = 0x2

.field public static final OPTFLOW_FARNEBACK_GAUSSIAN:I = 0x100

.field public static final OPTFLOW_LK_GET_MIN_EIGENVALS:I = 0x8

.field public static final OPTFLOW_USE_INITIAL_FLOW:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_imgproc;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_video;->initModule_video()Z

    .line 93
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    return-void
.end method

.method public static native buildOpticalFlowPyramid(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;IZIIZ)I
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native calcOpticalFlowFarneback(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DIIIIDI)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
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
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native calcOpticalFlowPyrLK(Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;ID)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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

.method public static native calcOpticalFlowSF(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;III)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native calcOpticalFlowSF(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IIIDDIDDDIDDD)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
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
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native createOptFlow_DualTVL1()Lcom/googlecode/javacv/cpp/opencv_video$DenseOpticalFlow;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native cvCalcAffineFlowPyrLK(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacpp/FloatPointer;ILcom/googlecode/javacv/cpp/opencv_core$CvSize;I[BLcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;I)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCalcAffineFlowPyrLK(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;[FILcom/googlecode/javacv/cpp/opencv_core$CvSize;I[B[FLcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;I)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCalcGlobalOrientation(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)D
.end method

.method public static native cvCalcMotionGradient(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDI)V
.end method

.method public static native cvCalcOpticalFlowFarneback(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DIIIIDI)V
.end method

.method public static native cvCalcOpticalFlowPyrLK(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvSize;I[BLcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;I)V
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
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCalcOpticalFlowPyrLK(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvSize;I[B[FLcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;I)V
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
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCamShift(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;Lcom/googlecode/javacv/cpp/opencv_core$CvBox2D;)I
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
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCreateKalman(III)Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;
.end method

.method public static native cvEstimateRigidTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)I
.end method

.method public static native cvKalmanCorrect(Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native cvKalmanPredict(Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static cvKalmanUpdateByMeasurement(Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "kalman"
    .parameter "measurement"

    .prologue
    .line 210
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_video;->cvKalmanCorrect(Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static cvKalmanUpdateByTime(Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "kalman"
    .parameter "control"

    .prologue
    .line 207
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_video;->cvKalmanPredict(Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static native cvMeanShift(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvConnectedComp;)I
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
    .end parameter
.end method

.method public static native cvReleaseKalman(Lcom/googlecode/javacv/cpp/opencv_video$CvKalman;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvSegmentMotion(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;DD)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvUpdateMotionHistory(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DD)V
.end method

.method public static native estimateRigidTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Z)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public static native initModule_video()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method
