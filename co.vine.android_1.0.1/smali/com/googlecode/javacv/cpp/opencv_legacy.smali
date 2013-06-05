.class public Lcom/googlecode/javacv/cpp/opencv_legacy;
.super Ljava/lang/Object;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/legacy/compat.hpp>",
                "<opencv2/legacy/legacy.hpp>",
                "<opencv2/legacy/blobtrack.hpp>",
                "opencv_adapters.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_legacy@.2.4",
                "opencv_ml@.2.4",
                "opencv_video@.2.4",
                "opencv_nonfree@.2.4",
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
            includepath = {
                "C:/opencv/build/include/"
            }
            link = {
                "opencv_legacy245",
                "opencv_ml245",
                "opencv_video245",
                "opencv_nonfree245",
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
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvProb;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvTracksTimePos;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAuto;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysisHeight;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CreateCvBlobTrackAnalysisOne;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysisOne;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackFVGen;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPredictor;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CreateCvBlobTrackPostProcOne;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProcOne;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProc;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamLH;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerParamMS;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CreateCvBlobTrackerOne;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerOne;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackGen;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvImageDrawer;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvDrawShape;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvObjectDetector;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobDetector;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackSeq;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrack;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobSeq;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDetector;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGModel;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGPoint;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGValues;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGPixelStat;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGPixelCCStatTable;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGPixelCStatTable;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvUpdateBGStatModel;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvReleaseBGStatModel;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSHOperations;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSH;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$PlanarObjectDetector;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$FernDescriptorMatcher;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$FloatCalonderDescriptorExtractor;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorObject;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorBase;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptor;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvAffinePose;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeClassifier;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$RTreeNode;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$RandomizedTree;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$BaseKeypoint;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$FernClassifier;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$LDetector;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$PatchGenerator;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvEM;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvEMParams;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamShiftTracker;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvCalibFilter;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvRandState;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMNode;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerCameraIntrinsics;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerCameraInfo;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvFace;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourOrientation;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvCliqueFinder;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedEdge;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMMState;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$Cv1DObsInfo;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvCallback;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;,
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    }
.end annotation


# static fields
.field public static final CLIQUE_END:I = 0x0

.field public static final CLIQUE_FOUND:I = 0x1

.field public static final CLIQUE_TIME_OFF:I = 0x2

.field public static final CV_ARRAY:I = 0x2

.field public static final CV_BGFG_FGD_ALPHA_1:F = 0.1f

.field public static final CV_BGFG_FGD_ALPHA_2:F = 0.0050f

.field public static final CV_BGFG_FGD_ALPHA_3:F = 0.1f

.field public static final CV_BGFG_FGD_BG_UPDATE_TRESH:F = 0.5f

.field public static final CV_BGFG_FGD_DELTA:F = 2.0f

.field public static final CV_BGFG_FGD_LC:I = 0x80

.field public static final CV_BGFG_FGD_LCC:I = 0x40

.field public static final CV_BGFG_FGD_MINAREA:F = 15.0f

.field public static final CV_BGFG_FGD_N1C:I = 0xf

.field public static final CV_BGFG_FGD_N1CC:I = 0x19

.field public static final CV_BGFG_FGD_N2C:I = 0x19

.field public static final CV_BGFG_FGD_N2CC:I = 0x28

.field public static final CV_BGFG_FGD_T:F = 0.9f

.field public static final CV_BGFG_MOG_BACKGROUND_THRESHOLD:D = 0.7

.field public static final CV_BGFG_MOG_MAX_NGAUSSIANS:I = 0x1f4

.field public static final CV_BGFG_MOG_MINAREA:D = 15.0

.field public static final CV_BGFG_MOG_NCOLORS:I = 0x3

.field public static final CV_BGFG_MOG_NGAUSSIANS:I = 0x5

.field public static final CV_BGFG_MOG_SIGMA_INIT:D = 30.0

.field public static final CV_BGFG_MOG_STD_THRESHOLD:D = 2.5

.field public static final CV_BGFG_MOG_WEIGHT_INIT:D = 0.05

.field public static final CV_BGFG_MOG_WINDOW_SIZE:I = 0xc8

.field public static final CV_BG_MODEL_FGD:I = 0x0

.field public static final CV_BG_MODEL_FGD_SIMPLE:I = 0x2

.field public static final CV_BG_MODEL_MOG:I = 0x1

.field public static final CV_BLOB_MINH:I = 0x5

.field public static final CV_BLOB_MINW:I = 0x5

.field public static final CV_CALIB_ETALON_CHECKERBOARD:I = 0x0

.field public static final CV_CALIB_ETALON_CHESSBOARD:I = 0x0

.field public static final CV_CALIB_ETALON_USER:I = -0x1

.field public static final CV_CAMERA_TO_WARP:I = 0x1

.field public static final CV_CONTOUR_TREES_MATCH_I1:I = 0x1

.field public static final CV_DISPARITY_BIRCHFIELD:I = 0x0

.field public static final CV_DOMINANT_IPAN:I = 0x1

.field public static final CV_EIGOBJ_BOTH_CALLBACK:I = 0x3

.field public static final CV_EIGOBJ_INPUT_CALLBACK:I = 0x1

.field public static final CV_EIGOBJ_NO_CALLBACK:I = 0x0

.field public static final CV_EIGOBJ_OUTPUT_CALLBACK:I = 0x2

.field public static final CV_FACE_LEFT_EYE:I = 0x1

.field public static final CV_FACE_MOUTH:I = 0x0

.field public static final CV_FACE_RIGHT_EYE:I = 0x2

.field public static final CV_GLCMDESC_CLUSTERSHADE:I = 0x5

.field public static final CV_GLCMDESC_CLUSTERTENDENCY:I = 0x4

.field public static final CV_GLCMDESC_CONTRAST:I = 0x3

.field public static final CV_GLCMDESC_CORRELATION:I = 0x6

.field public static final CV_GLCMDESC_CORRELATIONINFO1:I = 0x7

.field public static final CV_GLCMDESC_CORRELATIONINFO2:I = 0x8

.field public static final CV_GLCMDESC_ENERGY:I = 0x1

.field public static final CV_GLCMDESC_ENTROPY:I = 0x0

.field public static final CV_GLCMDESC_HOMOGENITY:I = 0x2

.field public static final CV_GLCMDESC_MAXIMUMPROBABILITY:I = 0x9

.field public static final CV_GLCMDESC_OPTIMIZATION_ALLOWDOUBLENEST:I = 0xa

.field public static final CV_GLCMDESC_OPTIMIZATION_ALLOWTRIPLENEST:I = 0xb

.field public static final CV_GLCMDESC_OPTIMIZATION_HISTOGRAM:I = 0x4

.field public static final CV_GLCM_ALL:I = 0x0

.field public static final CV_GLCM_DESC:I = 0x2

.field public static final CV_GLCM_GLCM:I = 0x1

.field public static final CV_GLCM_OPTIMIZATION_HISTOGRAM:I = 0x0

.field public static final CV_GLCM_OPTIMIZATION_LUT:I = -0x1

.field public static final CV_GLCM_OPTIMIZATION_NONE:I = -0x2

.field public static final CV_IDP_BIRCHFIELD_PARAM1:I = 0x19

.field public static final CV_IDP_BIRCHFIELD_PARAM2:I = 0x5

.field public static final CV_IDP_BIRCHFIELD_PARAM3:I = 0xc

.field public static final CV_IDP_BIRCHFIELD_PARAM4:I = 0xf

.field public static final CV_IDP_BIRCHFIELD_PARAM5:I = 0x19

.field public static final CV_LEE_AUTO:I = -0x1

.field public static final CV_LEE_DOUBLE:I = 0x2

.field public static final CV_LEE_ERODE:I = 0x0

.field public static final CV_LEE_FLOAT:I = 0x1

.field public static final CV_LEE_INT:I = 0x0

.field public static final CV_LEE_NON:I = 0x2

.field public static final CV_LEE_ZOOM:I = 0x1

.field public static final CV_NOISE_GAUSSIAN:I = 0x1

.field public static final CV_NOISE_NONE:I = 0x0

.field public static final CV_NOISE_SALT_AND_PEPPER:I = 0x4

.field public static final CV_NOISE_SPECKLE:I = 0x3

.field public static final CV_NOISE_UNIFORM:I = 0x2

.field public static final CV_NOT_WEIGHTED:I = 0x0

.field public static final CV_NUM_FACE_ELEMENTS:I = 0x3

.field public static final CV_STEREO_GC_OCCLUDED:I = 0x7fff

.field public static final CV_UNDEF_SC_PARAM:I = 0x3039

.field public static final CV_VALUE:I = 0x1

.field public static final CV_WARP_TO_CAMERA:I = 0x2

.field public static final CV_WEIGHTED_ALL:I = 0x3

.field public static final CV_WEIGHTED_EDGE:I = 0x2

.field public static final CV_WEIGHTED_VTX:I = 0x1

.field public static final PROFILE_DOG:I = 0x1

.field public static final PROFILE_EPANECHNIKOV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_calib3d;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_features2d;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_nonfree;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_video;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_ml;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3472
    return-void
.end method

.method public static CV_BLOB_CENTER(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .locals 4
    .parameter "pB"

    .prologue
    .line 2975
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->x()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->y()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPoint2D32f(DD)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    return-object v0
.end method

.method public static CV_BLOB_ID(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)I
    .locals 1
    .parameter "pB"

    .prologue
    .line 2974
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->ID()I

    move-result v0

    return v0
.end method

.method public static CV_BLOB_RECT(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .locals 4
    .parameter "pB"

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->x()F

    move-result v0

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->CV_BLOB_RX(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->y()F

    move-result v1

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->CV_BLOB_RY(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->CV_BLOB_WX(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->CV_BLOB_WY(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvRect(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    return-object v0
.end method

.method public static CV_BLOB_RX(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F
    .locals 2
    .parameter "pB"

    .prologue
    .line 2980
    const/high16 v0, 0x3f00

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->CV_BLOB_WX(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static CV_BLOB_RY(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F
    .locals 2
    .parameter "pB"

    .prologue
    .line 2981
    const/high16 v0, 0x3f00

    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->CV_BLOB_WY(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static CV_BLOB_WX(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F
    .locals 1
    .parameter "pB"

    .prologue
    .line 2978
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->w()F

    move-result v0

    return v0
.end method

.method public static CV_BLOB_WY(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F
    .locals 1
    .parameter "pB"

    .prologue
    .line 2979
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->h()F

    move-result v0

    return v0
.end method

.method public static CV_BLOB_X(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F
    .locals 1
    .parameter "pB"

    .prologue
    .line 2976
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->x()F

    move-result v0

    return v0
.end method

.method public static CV_BLOB_Y(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)F
    .locals 1
    .parameter "pB"

    .prologue
    .line 2977
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->y()F

    move-result v0

    return v0
.end method

.method public static CV_COUNT_OBS(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
    .locals 2
    .parameter "roi"
    .parameter "win"
    .parameter "delta"
    .parameter "numObs"

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    .line 482
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    .line 483
    return-void
.end method

.method public static CV_CURRENT_INT(Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;)I
    .locals 2
    .parameter "reader"

    .prologue
    .line 535
    new-instance v0, Lcom/googlecode/javacpp/IntPointer;

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;->ptr()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/IntPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    invoke-virtual {v0}, Lcom/googlecode/javacpp/IntPointer;->get()I

    move-result v0

    return v0
.end method

.method public static CV_FIRST_VORONOIEDGE2D(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;
    .locals 1
    .parameter "SITE"

    .prologue
    .line 1175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->edge(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;

    move-result-object v0

    return-object v0
.end method

.method public static CV_LAST_VORONOIEDGE2D(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;
    .locals 1
    .parameter "SITE"

    .prologue
    .line 1178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->edge(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;

    move-result-object v0

    return-object v0
.end method

.method public static CV_NEXT_VORONOIEDGE2D(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;
    .locals 2
    .parameter "EDGE"
    .parameter "SITE"

    .prologue
    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->next(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;

    move-result-object v0

    return-object v0
.end method

.method public static CV_NEXT_VORONOISITE2D(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
    .locals 3
    .parameter "SITE"

    .prologue
    const/4 v0, 0x0

    .line 1169
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->edge(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->edge(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v0

    return-object v0
.end method

.method public static CV_PREV_INT(Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;)I
    .locals 2
    .parameter "reader"

    .prologue
    .line 536
    new-instance v0, Lcom/googlecode/javacpp/IntPointer;

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSeqReader;->prev_elem()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/javacpp/IntPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    invoke-virtual {v0}, Lcom/googlecode/javacpp/IntPointer;->get()I

    move-result v0

    return v0
.end method

.method public static CV_PREV_VORONOIEDGE2D(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;
    .locals 2
    .parameter "EDGE"
    .parameter "SITE"

    .prologue
    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->next(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;

    move-result-object v0

    return-object v0
.end method

.method public static CV_PREV_VORONOISITE2D(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
    .locals 4
    .parameter "SITE"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1172
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->edge(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->edge(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v3

    if-ne v3, p0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static CV_TWIN_VORONOISITE2D(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
    .locals 2
    .parameter "SITE"
    .parameter "EDGE"

    .prologue
    const/4 v0, 0x0

    .line 1193
    invoke-virtual {p1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v0

    return-object v0
.end method

.method public static CV_VORONOIEDGE2D_BEGINNODE(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;
    .locals 2
    .parameter "EDGE"
    .parameter "SITE"

    .prologue
    const/4 v0, 0x0

    .line 1187
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->node(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;

    move-result-object v0

    return-object v0
.end method

.method public static CV_VORONOIEDGE2D_ENDNODE(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;
    .locals 2
    .parameter "EDGE"
    .parameter "SITE"

    .prologue
    const/4 v0, 0x0

    .line 1190
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->site(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;->node(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;

    move-result-object v0

    return-object v0
.end method

.method public static native LSHSize(Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSH;)I
.end method

.method public static cv3dTracker2dTrackedObject(ILcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;
    .locals 1
    .parameter "id"
    .parameter "p"

    .prologue
    .line 1083
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;-><init>()V

    .line 1084
    .local v0, r:Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;
    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;->id(I)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;

    .line 1085
    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;->p(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;

    .line 1086
    return-object v0
.end method

.method public static native cv3dTrackerCalibrateCameras(ILcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerCameraIntrinsics;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;FLcom/googlecode/javacv/cpp/opencv_core$IplImageArray;Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerCameraInfo;)Z
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
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cv3dTrackerLocateObjects(IILcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerCameraInfo;Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;)I
.end method

.method public static cv3dTrackerTrackedObject(ILcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;
    .locals 1
    .parameter "id"
    .parameter "p"

    .prologue
    .line 1106
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;-><init>()V

    .line 1107
    .local v0, r:Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;
    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;->id(I)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;

    .line 1108
    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;->p(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;

    .line 1109
    return-object v0
.end method

.method public static native cvBGCodeBookClearStale(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;ILcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
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
.end method

.method public static native cvBGCodeBookDiff(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)I
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
.end method

.method public static native cvBGCodeBookUpdate(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
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
.end method

.method public static cvBlob(FFFF)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2968
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;-><init>()V

    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->x(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->y(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->w(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->h(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->ID(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v0

    return-object v0
.end method

.method public static native cvCalcCovarMatrixEx(ILcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
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

.method public static native cvCalcCovarMatrixEx(ILcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
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

.method public static cvCalcCovarMatrixEx(I[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V
    .locals 8
    .parameter "nObjects"
    .end parameter
    .parameter "input"
    .end parameter
    .parameter "ioFlags"
    .end parameter
    .parameter "ioBufSize"
    .end parameter
    .parameter "buffer"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter "userData"
    .end parameter
    .parameter "avg"
    .end parameter
    .parameter "covarMatrix"
    .end parameter

    .prologue
    .line 339
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v1, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCalcCovarMatrixEx(ILcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V

    .line 340
    return-void
.end method

.method public static cvCalcCovarMatrixEx(I[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V
    .locals 8
    .parameter "nObjects"
    .end parameter
    .parameter "input"
    .end parameter
    .parameter "ioFlags"
    .end parameter
    .parameter "ioBufSize"
    .end parameter
    .parameter "buffer"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter "userData"
    .end parameter
    .parameter "avg"
    .end parameter
    .parameter "covarMatrix"
    .end parameter

    .prologue
    .line 312
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v1, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCalcCovarMatrixEx(ILcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V

    .line 313
    return-void
.end method

.method public static native cvCalcDecompCoeff(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)D
.end method

.method public static native cvCalcEigenObjects(ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V
.end method

.method public static native cvCalcEigenObjects(ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V
.end method

.method public static cvCalcEigenObjects(I[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V
    .locals 9
    .parameter "nObjects"
    .parameter "input"
    .parameter "output"
    .parameter "ioFlags"
    .parameter "ioBufSize"
    .parameter "userData"
    .parameter "calcLimit"
    .parameter "avg"
    .parameter "eigVals"

    .prologue
    .line 345
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v1, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    new-instance v2, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v2, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCalcEigenObjects(ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V

    .line 347
    return-void
.end method

.method public static cvCalcEigenObjects(I[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V
    .locals 9
    .parameter "nObjects"
    .parameter "input"
    .parameter "output"
    .parameter "ioFlags"
    .parameter "ioBufSize"
    .parameter "userData"
    .parameter "calcLimit"
    .parameter "avg"
    .parameter "eigVals"

    .prologue
    .line 318
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v1, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    new-instance v2, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v2, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCalcEigenObjects(ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V

    .line 320
    return-void
.end method

.method public static native cvCalcImageHomography(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/FloatPointer;)V
.end method

.method public static native cvCalcImageHomography([FLcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;[F[F)V
.end method

.method public static native cvCalcOpticalFlowBM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCalcOpticalFlowHS(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DLcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)V
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
.end method

.method public static native cvCalcOpticalFlowLK(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
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
    .end parameter
.end method

.method public static native cvCalcPGH(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;)V
.end method

.method public static native cvCalcSubdivVoronoi2D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;)V
.end method

.method public static native cvChangeDetection(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I
.end method

.method public static native cvClearSubdivVoronoi2D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;)V
.end method

.method public static native cvComputePerspectiveMap(Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[3]"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvComputePerspectiveMap([DLcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[3]"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvConDensInitSampleSet(Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvConDensUpdateByTime(Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;)V
.end method

.method public static native cvContourFromContourTree(Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvCreate2DHMM([I[II)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.end method

.method public static native cvCreateBGCodeBookModel()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;
.end method

.method public static native cvCreateBlobDetectorCC()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobDetector;
.end method

.method public static native cvCreateBlobDetectorSimple()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobDetector;
.end method

.method public static native cvCreateBlobTrackAnalysisList(Lcom/googlecode/javacv/cpp/opencv_legacy$CreateCvBlobTrackAnalysisOne;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.end method

.method public static native cvCreateBlobTrackPostProcList(Lcom/googlecode/javacv/cpp/opencv_legacy$CreateCvBlobTrackPostProcOne;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProc;
.end method

.method public static native cvCreateBlobTrackerAuto(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAuto;
.end method

.method public static native cvCreateBlobTrackerAuto1(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAutoParam1;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAuto;
.end method

.method public static native cvCreateBlobTrackerCC()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.end method

.method public static native cvCreateBlobTrackerCCMSPF()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.end method

.method public static native cvCreateBlobTrackerList(Lcom/googlecode/javacv/cpp/opencv_legacy$CreateCvBlobTrackerOne;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.end method

.method public static native cvCreateBlobTrackerMS()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.end method

.method public static native cvCreateBlobTrackerMSFG()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.end method

.method public static native cvCreateBlobTrackerMSFGS()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.end method

.method public static native cvCreateBlobTrackerMSPF()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;
.end method

.method public static native cvCreateConDensation(III)Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;
.end method

.method public static native cvCreateContourTree(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;
.end method

.method public static native cvCreateFGDStatModel(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public static native cvCreateFGDetectorBase(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDetector;
.end method

.method public static native cvCreateGLCM(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I[III)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;
.end method

.method public static native cvCreateGLCMDescriptors(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;I)V
.end method

.method public static native cvCreateGLCMImage(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static native cvCreateGaussianBGModel(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvGaussBGStatModelParams;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.end method

.method public static native cvCreateHandMask(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V
.end method

.method public static native cvCreateKDTree(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvFeatureTree;
.end method

.method public static native cvCreateLSH(Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSHOperations;IIIIDJ)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSH;
.end method

.method public static native cvCreateMemoryLSH(IIIIIDJ)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSH;
.end method

.method public static native cvCreateModuleBlobTrackAnalysisHistP()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.end method

.method public static native cvCreateModuleBlobTrackAnalysisHistPV()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.end method

.method public static native cvCreateModuleBlobTrackAnalysisHistPVS()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.end method

.method public static native cvCreateModuleBlobTrackAnalysisHistSS()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.end method

.method public static native cvCreateModuleBlobTrackAnalysisIOR()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.end method

.method public static native cvCreateModuleBlobTrackAnalysisTrackDist()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.end method

.method public static native cvCreateModuleBlobTrackGen1()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackGen;
.end method

.method public static native cvCreateModuleBlobTrackGenYML()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackGen;
.end method

.method public static native cvCreateModuleBlobTrackPostProcKalman()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProc;
.end method

.method public static native cvCreateModuleBlobTrackPostProcTimeAverExp()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProc;
.end method

.method public static native cvCreateModuleBlobTrackPostProcTimeAverRect()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProc;
.end method

.method public static native cvCreateModuleBlobTrackPredictKalman()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPredictor;
.end method

.method public static native cvCreateObsInfo(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCreateSpillTree(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDD)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvFeatureTree;
.end method

.method public static native cvCreateStereoGCState(II)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public static native cvCreateSubdiv2D(IIIILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method

.method public static cvCreateSubdivDelaunay2D(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
    .locals 5
    .parameter "rect"
    .parameter "storage"

    .prologue
    .line 2382
    const/16 v1, 0x2000

    const-class v2, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;

    invoke-static {v2}, Lcom/googlecode/javacpp/Loader;->sizeof(Ljava/lang/Class;)I

    move-result v2

    const-class v3, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;

    invoke-static {v3}, Lcom/googlecode/javacpp/Loader;->sizeof(Ljava/lang/Class;)I

    move-result v3

    const-class v4, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;

    invoke-static {v4}, Lcom/googlecode/javacpp/Loader;->sizeof(Ljava/lang/Class;)I

    move-result v4

    invoke-static {v1, v2, v3, v4, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreateSubdiv2D(IIIILcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;

    move-result-object v0

    .line 2384
    .local v0, subdiv:Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
    invoke-static {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvInitSubdivDelaunay2D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    .line 2385
    return-object v0
.end method

.method public static native cvCreateTestSeq(Ljava/lang/String;Lcom/googlecode/javacpp/PointerPointer;IFID)Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
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

.method public static native cvDeInterlace(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvDeleteMoire(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public static cvDetectedBlob(FFFFIF)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "ID"
    .parameter "response"

    .prologue
    .line 3074
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;-><init>()V

    .line 3075
    .local v0, b:Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;
    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;->x(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->y(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->w(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->h(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->ID(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    invoke-virtual {v0, p5}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;->response(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;

    .line 3076
    return-object v0
.end method

.method public static native cvDynamicCorrespondMulti(I[I[I[I[I[I[I)V
.end method

.method public static native cvEViterbi(Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)F
.end method

.method public static native cvEigenDecomposite(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ILcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V
.end method

.method public static native cvEigenDecomposite(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ILcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V
.end method

.method public static cvEigenDecomposite(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V
    .locals 7
    .parameter "obj"
    .parameter "nEigObjs"
    .parameter "eigInput"
    .parameter "ioFlags"
    .parameter "userData"
    .parameter "avg"
    .parameter "coeffs"

    .prologue
    .line 352
    new-instance v2, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v2, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvEigenDecomposite(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ILcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/FloatPointer;)V

    .line 353
    return-void
.end method

.method public static cvEigenDecomposite(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V
    .locals 7
    .parameter "obj"
    .parameter "nEigObjs"
    .parameter "eigInput"
    .parameter "ioFlags"
    .parameter "userData"
    .parameter "avg"
    .parameter "coeffs"

    .prologue
    .line 326
    new-instance v2, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v2, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvEigenDecomposite(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;ILcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[F)V

    .line 327
    return-void
.end method

.method public static native cvEigenProjection(Lcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public static native cvEigenProjection(Lcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/Pointer;[FLcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public static cvEigenProjection([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 7
    .parameter "eigInput"
    .parameter "nEigObjs"
    .parameter "ioFlags"
    .parameter "userData"
    .parameter "coeffs"
    .parameter "avg"
    .parameter "proj"

    .prologue
    .line 358
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvEigenProjection(Lcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 359
    return-void
.end method

.method public static cvEigenProjection([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;IILcom/googlecode/javacpp/Pointer;[FLcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 7
    .parameter "eigInput"
    .parameter "nEigObjs"
    .parameter "ioFlags"
    .parameter "userData"
    .parameter "coeffs"
    .parameter "avg"
    .parameter "proj"

    .prologue
    .line 332
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImageArray;-><init>([Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvEigenProjection(Lcom/googlecode/javacpp/Pointer;IILcom/googlecode/javacpp/Pointer;[FLcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 333
    return-void
.end method

.method public static native cvEstimateHMMStateParams(Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvImgObsInfo**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvEstimateObsProb(Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V
.end method

.method public static native cvEstimateTransProb(Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvImgObsInfo**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvExtractSURF(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
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

.method public static native cvFindDominantPoints(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;IDDDD)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvFindFeatures(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvFeatureTree;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;II)V
.end method

.method public static native cvFindFeaturesBoxed(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvFeatureTree;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I
.end method

.method public static native cvFindHandRegion(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvFindHandRegion(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvSeq;[FLcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvFindHandRegionA(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvFindHandRegionA(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvSeq;[FLcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;ILcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvFindNearestPoint2D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvFindRuns(ILcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;[I[I[I[I[I[I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
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
.end method

.method public static native cvFindStereoCorrespondence(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvArr;IDDDDD)V
.end method

.method public static native cvFindStereoCorrespondenceGC(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;I)V
.end method

.method public static native cvGetGLCMDescriptor(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;II)D
.end method

.method public static native cvGetGLCMDescriptorStatistics(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;I[D[D)V
.end method

.method public static cvGetHistValue_1D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;I)Lcom/googlecode/javacpp/Pointer;
    .locals 2
    .parameter "hist"
    .parameter "idx0"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPtr1D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I[I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public static cvGetHistValue_2D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;II)Lcom/googlecode/javacpp/Pointer;
    .locals 2
    .parameter "hist"
    .parameter "idx0"
    .parameter "idx1"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPtr2D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;II[I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public static cvGetHistValue_3D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;III)Lcom/googlecode/javacpp/Pointer;
    .locals 2
    .parameter "hist"
    .parameter "idx0"
    .parameter "idx1"
    .parameter "idx2"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPtr3D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;III[I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public static cvGetHistValue_nD(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;I[I)Lcom/googlecode/javacpp/Pointer;
    .locals 3
    .parameter "hist"
    .parameter "idx0"
    .parameter "idx"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v2, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvPtrND(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[I[II[I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public static cvGetStarKeypoints(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .locals 1
    .parameter "image"
    .parameter "storage"

    .prologue
    .line 284
    invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvStarDetectorParams()Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvGetStarKeypoints(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;

    move-result-object v0

    return-object v0
.end method

.method public static native cvGetStarKeypoints(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvImgToObs_DCT(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvImgToObs_DCT(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[FLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvInitFaceTracker(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;
.end method

.method public static native cvInitMixSegm(Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvImgObsInfo**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvInitPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[3]"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvInitPerspectiveTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;[DLcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[3]"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvInitSubdivDelaunay2D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvLSHAdd(Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSH;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvLSHQuery(Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSH;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;II)V
.end method

.method public static native cvLSHRemove(Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSH;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvLinearContorModelFromVoronoiDiagram(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;F)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.end method

.method public static native cvMakeAlphaScanlines([I[I[I[IIF)V
.end method

.method public static native cvMakeScanlines(Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;[I[I[I[I[I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvMatrix3*"
            }
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvMakeScanlines([FLcom/googlecode/javacv/cpp/opencv_core$CvSize;[I[I[I[I[I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvMatrix3*"
            }
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvMatchContourTrees(Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;Lcom/googlecode/javacv/cpp/opencv_legacy$CvContourTree;ID)D
.end method

.method public static native cvMixSegmL2(Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvImgObsInfo**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvMorphEpilinesMulti(ILcom/googlecode/javacpp/BytePointer;[ILcom/googlecode/javacpp/BytePointer;[ILcom/googlecode/javacpp/BytePointer;[IF[I[I[I[I[I[I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
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
.end method

.method public static native cvPostWarpImage(ILcom/googlecode/javacpp/BytePointer;[ILcom/googlecode/javacv/cpp/opencv_core$IplImage;[I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
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

.method public static native cvPreWarpImage(ILcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacpp/BytePointer;[I[I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvPyrSegmentation(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;IDD)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvQueryHistValue_1D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;I)F
    .locals 2
    .parameter "hist"
    .parameter "idx0"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetReal1D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static cvQueryHistValue_2D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;II)F
    .locals 2
    .parameter "hist"
    .parameter "idx0"
    .parameter "idx1"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetReal2D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static cvQueryHistValue_3D(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;III)F
    .locals 2
    .parameter "hist"
    .parameter "idx0"
    .parameter "idx1"
    .parameter "idx2"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetReal3D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;III)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static cvQueryHistValue_nD(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;I[I)F
    .locals 2
    .parameter "hist"
    .parameter "idx0"
    .parameter "idx"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvHistogram;->bins()Lcom/googlecode/javacv/cpp/opencv_core$CvArr;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetRealND(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static native cvReadStructByName(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;)V
.end method

.method public static native cvRectIntersection(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvRefineForegroundMaskBySegm(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;)V
.end method

.method public static native cvRelease2DHMM(Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBGCodeBookModel(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookModel;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBGStatModel(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBlobDetector(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobDetector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBlobTrackAnalysis(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBlobTrackGen(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackGen;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBlobTrackPostProc(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPostProc;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBlobTracker(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTracker;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBlobTrackerAuto(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerAuto;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseBlobTrackerOne(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackerOne;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseConDensation(Lcom/googlecode/javacv/cpp/opencv_legacy$CvConDensation;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseFGDetector(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDetector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseFaceTracker(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseFeatureTree(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvFeatureTree;)V
.end method

.method public static native cvReleaseGLCM(Lcom/googlecode/javacv/cpp/opencv_legacy$CvGLCM;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvReleaseLSH(Lcom/googlecode/javacv/cpp/opencv_legacy$CvLSH;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseLinearContorModelStorage(Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseObsInfo(Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseProb(Lcom/googlecode/javacv/cpp/opencv_legacy$CvProb;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseStereoGCState(Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseTestSeq(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseVoronoiStorage(Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvSURFParams(DI)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static cvSURFPoint(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;II)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    .locals 1
    .parameter "pt"
    .parameter "laplacian"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-static {p0, p1, p2, v0, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvSURFPoint(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;IIFF)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    move-result-object v0

    return-object v0
.end method

.method public static cvSURFPoint(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;IIFF)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    .locals 1
    .parameter "pt"
    .parameter "laplacian"
    .parameter "size"
    .parameter "dir"
    .parameter "hessian"

    .prologue
    .line 156
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;-><init>()V

    .line 157
    .local v0, kp:Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;
    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->pt(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 158
    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->laplacian(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 159
    invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->size(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 160
    invoke-virtual {v0, p3}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->dir(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 161
    invoke-virtual {v0, p4}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;->hessian(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFPoint;

    .line 162
    return-object v0
.end method

.method public static native cvSegmentFGMask(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;IFLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
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
.end method

.method public static native cvSegmentImage(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DDLcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public static native cvSnakeImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;ILcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/FloatPointer;ILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;I)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvSnakeImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;I[F[F[FILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;I)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvStarDetectorParams()Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
    .locals 5

    .prologue
    .line 280
    const/16 v0, 0x2d

    const/16 v1, 0x1e

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvStarDetectorParams(IIIII)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    move-result-object v0

    return-object v0
.end method

.method public static cvStarDetectorParams(IIIII)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
    .locals 1
    .parameter "maxSize"
    .parameter "responseThreshold"
    .parameter "lineThresholdProjected"
    .parameter "lineThresholdBinarized"
    .parameter "suppressNonmaxSize"

    .prologue
    .line 271
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;-><init>()V

    .line 272
    .local v0, params:Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;->maxSize(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    .line 273
    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;->responseThreshold(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    .line 274
    invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;->lineThresholdProjected(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    .line 275
    invoke-virtual {v0, p3}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;->lineThresholdBinarized(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    .line 276
    invoke-virtual {v0, p4}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;->suppressNonmaxSize(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    .line 277
    return-object v0
.end method

.method public static cvStarKeypoint(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;IF)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;
    .locals 1
    .parameter "pt"
    .parameter "size"
    .parameter "response"

    .prologue
    .line 243
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;-><init>()V

    .line 244
    .local v0, kpt:Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;
    invoke-virtual {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;->pt(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;

    .line 245
    invoke-virtual {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;->size(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;

    .line 246
    invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;->response(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarKeypoint;

    .line 247
    return-object v0
.end method

.method public static native cvSubdiv2DEdgeDst(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvSubdiv2DEdgeOrg(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvSubdiv2DGetEdge(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvNextEdgeType"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvSubdiv2DLocate(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacpp/SizeTPointer;Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvSubdiv2DEdge*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static cvSubdiv2DNextEdge(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;
    .locals 1
    .parameter "edge"

    .prologue
    .line 2395
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->CV_SUBDIV2D_NEXT_EDGE(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;

    move-result-object v0

    return-object v0
.end method

.method public static native cvSubdiv2DRotateEdge(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvSubdiv2DSymEdge(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvSubdivDelaunay2DInsert(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvTestSeqAddIntensityVariation(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;FFF)V
.end method

.method public static native cvTestSeqAddNoise(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;ID)V
.end method

.method public static native cvTestSeqFrameNum(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;)I
.end method

.method public static native cvTestSeqGetFGMask(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static native cvTestSeqGetImage(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static native cvTestSeqGetImageSize(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native cvTestSeqGetObjectNum(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;)I
.end method

.method public static native cvTestSeqGetObjectPos(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;ILcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)I
.end method

.method public static native cvTestSeqGetObjectSize(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;ILcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)I
.end method

.method public static native cvTestSeqQueryFrame(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static native cvTestSeqSetFrame(Lcom/googlecode/javacv/cpp/opencv_legacy$CvTestSeq;I)V
.end method

.method public static native cvTrackFace(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFaceTracker;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;ILcom/googlecode/javacv/cpp/opencv_core$CvPoint;[D)I
.end method

.method public static native cvTriangleArea(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)D
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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

.method public static native cvUniformImgSegm(Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V
.end method

.method public static native cvUpdateBGStatModel(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;D)I
.end method

.method public static native cvVoronoiDiagramFromContour(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;III)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvLeeParameters"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvVoronoiDiagramFromImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;IF)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvLeeParameters"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvWriteStruct(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Ljava/lang/String;I)V
.end method

.method public static native icvComCoeffForLine(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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
.end method

.method public static native icvComCoeffForLine(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[D[D[D[D[D[DLcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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
.end method

.method public static native icvCompute3DPoint(DDLcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)I
.end method

.method public static native icvComputeCoeffForStereo(Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;)I
.end method

.method public static native icvComputeRestStereoParams(Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;)I
.end method

.method public static native icvComputeStereoLineCoeffs(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;DLcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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

.method public static native icvComputeStereoParamsForCameras(Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;)V
.end method

.method public static native icvComputeeInfiniteProject1(Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)V
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
.end method

.method public static native icvComputeeInfiniteProject1([D[D[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)V
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
.end method

.method public static native icvComputeeInfiniteProject2(Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)V
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
.end method

.method public static native icvComputeeInfiniteProject2([D[D[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)V
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
.end method

.method public static native icvConvertPointSystem(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvConvertPointSystem(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;[D[D)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvConvertWarpCoordinates(Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[3]"
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

.method public static native icvConvertWarpCoordinates([DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[3]"
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

.method public static native icvCreateConvertMatrVect(Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;)I
.end method

.method public static native icvCreateConvertMatrVect([D[D[D[D[D[D)I
.end method

.method public static native icvCreateIsometricImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static native icvDefinePointPosition(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)F
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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

.method public static native icvDrawMosaic(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public static native icvGetAngleLine(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)I
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

.method public static native icvGetCoefForPiece(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[D[D[D[I)V
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
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetCrossDirectDirect(Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[I)V
.end method

.method public static native icvGetCrossDirectDirect([D[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[I)V
.end method

.method public static native icvGetCrossLineDirect(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;FFFLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)I
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
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetCrossLines(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetCrossPieceDirect(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;DDDLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[I)V
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetCrossPiecePiece(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetCrossPieceVector(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetCrossRectDirect(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DDDLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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
.end method

.method public static native icvGetCutPiece(Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[I)V
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

.method public static native icvGetCutPiece([D[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[I)V
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

.method public static native icvGetDirectionForPoint(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetDirectionForPoint(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetDistanceFromPointToDirect(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacpp/DoublePointer;[D)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetDistanceFromPointToDirect(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[D[D)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetMiddleAnglePoint(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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

.method public static native icvGetNormalDirect(Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacpp/DoublePointer;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetNormalDirect([DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[D)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvGetPieceLength(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[D)V
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

.method public static native icvGetPieceLength3D(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;[D)V
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

.method public static native icvGetQuadsTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[2]"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[2]"
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

.method public static native icvGetQuadsTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;[D[D[D[D[D[DLcom/googlecode/javacv/cpp/opencv_core$CvSize;[D[D[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[2]"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "double(*)[2]"
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

.method public static native icvGetQuadsTransformStruct(Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;)V
.end method

.method public static native icvGetSymPoint3D(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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

.method public static native icvGetVect(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)D
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
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

.method public static native icvProjectPointToDirect(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvProjectPointToDirect(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvProjectPointToImage(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacpp/DoublePointer;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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

.method public static native icvProjectPointToImage(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;[D[D[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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

.method public static icvSqDist2D32f(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)D
    .locals 8
    .parameter "pt1"
    .parameter "pt2"

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 529
    .local v0, dx:D
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 531
    .local v2, dy:D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    return-wide v4
.end method

.method public static native icvStereoCalibration(I[ILcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;)I
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
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native icvSubdiv2DCheck(Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;)I
.end method

.method public static iplHeight(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I
    .locals 1
    .parameter "img"

    .prologue
    .line 1419
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v0

    goto :goto_0
.end method

.method public static iplWidth(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I
    .locals 1
    .parameter "img"

    .prologue
    .line 1415
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v0

    goto :goto_0
.end method
