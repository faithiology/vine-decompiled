.class public Lcom/googlecode/javacv/cpp/opencv_contrib;
.super Ljava/lang/Object;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/contrib/contrib.hpp>",
                "<opencv2/contrib/detection_based_tracker.hpp>",
                "<opencv2/contrib/hybridtracker.hpp>",
                "opencv_adapters.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_contrib@.2.4",
                "opencv_ml@.2.4",
                "opencv_video@.2.4",
                "opencv_objdetect@.2.4",
                "opencv_calib3d@.2.4",
                "opencv_features2d@.2.4",
                "opencv_flann@.2.4",
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
                "opencv_contrib245",
                "opencv_ml245",
                "opencv_video245",
                "opencv_objdetect245",
                "opencv_calib3d245",
                "opencv_features2d245",
                "opencv_flann245",
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
        Lcom/googlecode/javacv/cpp/opencv_contrib$BOWMSCTrainer;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$ChowLiuTree;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap2;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$FabMapFBO;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$FabMapLUT;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap1;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$FabMap;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$IMatch;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTracker;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTracker;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvMeanShiftTracker;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvHybridTrackerParams;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvFeatureTrackerParams;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvMeanShiftTrackerParams;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvMotionModel;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$RectIntPairVector;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$Retina;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$FaceRecognizer;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$LDA;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$LogPolar_Adjacent;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$LogPolar_Overlapping;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$LogPolar_Interp;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$Directory;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$StereoVar;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$SelfSimDescriptor;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$TickMeter;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$SpinImageModel;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$Vec2iVectorVector;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$Mesh3D;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$Octree;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyMeanShiftTracker;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyController;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyRule;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyFunction;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyCurve;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvFuzzyPoint;,
        Lcom/googlecode/javacv/cpp/opencv_contrib$CvAdaptiveSkinDetector;
    }
.end annotation


# static fields
.field public static final COLORMAP_AUTUMN:I = 0x0

.field public static final COLORMAP_BONE:I = 0x1

.field public static final COLORMAP_COOL:I = 0x8

.field public static final COLORMAP_HOT:I = 0xb

.field public static final COLORMAP_HSV:I = 0x9

.field public static final COLORMAP_JET:I = 0x2

.field public static final COLORMAP_OCEAN:I = 0x5

.field public static final COLORMAP_PINK:I = 0xa

.field public static final COLORMAP_RAINBOW:I = 0x4

.field public static final COLORMAP_SPRING:I = 0x7

.field public static final COLORMAP_SUMMER:I = 0x6

.field public static final COLORMAP_WINTER:I = 0x3

.field public static final RETINA_COLOR_BAYER:I = 0x2

.field public static final RETINA_COLOR_DIAGONAL:I = 0x1

.field public static final RETINA_COLOR_RANDOM:I = 0x0

.field public static final RIGID_BODY_MOTION:I = 0x4

.field public static final ROTATION:I = 0x1

.field public static final TRANSLATION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_calib3d;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_objdetect;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_video;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_ml;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_contrib;->initModule_contrib()Z

    .line 108
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1473
    return-void
.end method

.method public static native RGBDOdometry(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;FFFLcom/googlecode/javacpp/IntPointer;Lcom/googlecode/javacpp/FloatPointer;I)Z
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native applyColorMap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
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
.end method

.method public static native chamerMatching(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$PointVectorVector;Lcom/googlecode/javacpp/FloatPointer;DIDIIIDDDD)I
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
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

.method public static native createEigenFaceRecognizer()Lcom/googlecode/javacv/cpp/opencv_contrib$FaceRecognizer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createEigenFaceRecognizer(ID)Lcom/googlecode/javacv/cpp/opencv_contrib$FaceRecognizer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createFisherFaceRecognizer()Lcom/googlecode/javacv/cpp/opencv_contrib$FaceRecognizer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createFisherFaceRecognizer(ID)Lcom/googlecode/javacv/cpp/opencv_contrib$FaceRecognizer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createLBPHFaceRecognizer()Lcom/googlecode/javacv/cpp/opencv_contrib$FaceRecognizer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native createLBPHFaceRecognizer(IIIID)Lcom/googlecode/javacv/cpp/opencv_contrib$FaceRecognizer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public static native generateColors(Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;JJ)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvScalar,cv::Scalar"
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

.method public static native initModule_contrib()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native polyfit(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native subspaceProject(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public static native subspaceReconstruct(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method
