.class public Lcom/googlecode/javacv/cpp/opencv_videostab;
.super Ljava/lang/Object;
.source "opencv_videostab.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/videostab/videostab.hpp>",
                "opencv_adapters.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_videostab@.2.4",
                "opencv_gpu@.2.4",
                "opencv_legacy@.2.4",
                "opencv_ml@.2.4",
                "opencv_video@.2.4",
                "opencv_nonfree@.2.4",
                "opencv_photo@.2.4",
                "opencv_objdetect@.2.4",
                "opencv_features2d@.2.4",
                "opencv_flann@.2.4",
                "opencv_calib3d@.2.4",
                "opencv_highgui@.2.4",
                "opencv_imgproc@.2.4",
                "opencv_core@.2.4"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            link = {
                "opencv_videostab",
                "opencv_legacy",
                "opencv_ml",
                "opencv_video",
                "opencv_nonfree",
                "opencv_photo",
                "opencv_objdetect",
                "opencv_features2d",
                "opencv_flann",
                "opencv_calib3d",
                "opencv_highgui",
                "opencv_imgproc",
                "opencv_core"
            }
            value = {
                "android"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/opencv/build/include/"
            }
            link = {
                "opencv_videostab245",
                "opencv_gpu245",
                "opencv_legacy245",
                "opencv_ml245",
                "opencv_video245",
                "opencv_nonfree245",
                "opencv_photo245",
                "opencv_objdetect245",
                "opencv_features2d245",
                "opencv_flann245",
                "opencv_calib3d245",
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
        Lcom/googlecode/javacv/cpp/opencv_videostab$TwoPassStabilizer;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$OnePassStabilizer;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$StabilizerBase;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$WeightingDeblurer;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$NullDeblurer;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$DeblurerBase;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$ColorInpainter;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$ColorAverageInpainter;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$MotionInpainter;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$ConsistentMosaicInpainter;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$InpaintingPipeline;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$NullInpainter;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$LogToStdout;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$NullLog;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$ILog;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$VideoFileSource;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$NullFrameSource;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$GaussianMotionFilter;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$MotionFilterBase;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$IMotionStabilizer;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$PyrLkRobustMotionEstimator;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$IGlobalMotionEstimator;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$DensePyrLkOptFlowEstimatorGpu;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$SparsePyrLkOptFlowEstimator;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$PyrLkOptFlowEstimatorBase;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$IDenseOptFlowEstimator;,
        Lcom/googlecode/javacv/cpp/opencv_videostab$ISparseOptFlowEstimator;
    }
.end annotation


# static fields
.field public static final AFFINE:I = 0x3

.field public static final LINEAR_SIMILARITY:I = 0x2

.field public static final TRANSLATION:I = 0x0

.field public static final TRANSLATION_AND_SCALE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_calib3d;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_features2d;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_objdetect;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_photo;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 96
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_nonfree;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_video;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_ml;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_legacy;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    return-void
.end method

.method public static native calcBlurriness(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)F
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::videostab"
    .end annotation
.end method

.method public static native calcFlowMask(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;FLcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
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
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::videostab"
    .end annotation
.end method

.method public static native castIDenseOptFlowEstimator(Lcom/googlecode/javacv/cpp/opencv_videostab$DensePyrLkOptFlowEstimatorGpu;)Lcom/googlecode/javacv/cpp/opencv_videostab$IDenseOptFlowEstimator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dynamic_cast<cv::videostab::IDenseOptFlowEstimator*>"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        not = {
            "android"
        }
    .end annotation
.end method

.method public static native castIFrameSource(Lcom/googlecode/javacv/cpp/opencv_videostab$OnePassStabilizer;)Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dynamic_cast<cv::videostab::IFrameSource*>"
        }
    .end annotation
.end method

.method public static native castIFrameSource(Lcom/googlecode/javacv/cpp/opencv_videostab$TwoPassStabilizer;)Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dynamic_cast<cv::videostab::IFrameSource*>"
        }
    .end annotation
.end method

.method public static native castISparseOptFlowEstimator(Lcom/googlecode/javacv/cpp/opencv_videostab$SparsePyrLkOptFlowEstimator;)Lcom/googlecode/javacv/cpp/opencv_videostab$ISparseOptFlowEstimator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dynamic_cast<cv::videostab::ISparseOptFlowEstimator*>"
        }
    .end annotation
.end method

.method public static native castPyrLkOptFlowEstimatorBase(Lcom/googlecode/javacv/cpp/opencv_videostab$DensePyrLkOptFlowEstimatorGpu;)Lcom/googlecode/javacv/cpp/opencv_videostab$PyrLkOptFlowEstimatorBase;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dynamic_cast<cv::videostab::PyrLkOptFlowEstimatorBase*>"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        not = {
            "android"
        }
    .end annotation
.end method

.method public static native castPyrLkOptFlowEstimatorBase(Lcom/googlecode/javacv/cpp/opencv_videostab$SparsePyrLkOptFlowEstimator;)Lcom/googlecode/javacv/cpp/opencv_videostab$PyrLkOptFlowEstimatorBase;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dynamic_cast<cv::videostab::PyrLkOptFlowEstimatorBase*>"
        }
    .end annotation
.end method

.method public static native castStabilizerBase(Lcom/googlecode/javacv/cpp/opencv_videostab$OnePassStabilizer;)Lcom/googlecode/javacv/cpp/opencv_videostab$StabilizerBase;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dynamic_cast<cv::videostab::StabilizerBase*>"
        }
    .end annotation
.end method

.method public static native castStabilizerBase(Lcom/googlecode/javacv/cpp/opencv_videostab$TwoPassStabilizer;)Lcom/googlecode/javacv/cpp/opencv_videostab$StabilizerBase;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dynamic_cast<cv::videostab::StabilizerBase*>"
        }
    .end annotation
.end method

.method public static native completeFrameAccordingToFlow(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;FLcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
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
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::videostab"
    .end annotation
.end method

.method public static native ensureInclusionConstraint(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;F)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::videostab"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public static native estimateGlobalMotionLeastSquares(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;I[F)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint2D32f,cv::Point2f"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint2D32f,cv::Point2f"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::videostab"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public static native estimateGlobalMotionRobust(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;ILcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;[F[I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint2D32f,cv::Point2f"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint2D32f,cv::Point2f"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::videostab"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public static native estimateOptimalTrimRatio(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)F
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::videostab"
    .end annotation
.end method

.method public static native getMotion(IILcom/googlecode/javacv/cpp/opencv_core$MatVector;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::videostab"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method
