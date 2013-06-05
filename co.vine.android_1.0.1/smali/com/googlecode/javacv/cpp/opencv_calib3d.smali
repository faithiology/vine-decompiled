.class public Lcom/googlecode/javacv/cpp/opencv_calib3d;
.super Ljava/lang/Object;
.source "opencv_calib3d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/calib3d/calib3d.hpp>",
                "opencv_adapters.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
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
        Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoSGBM;,
        Lcom/googlecode/javacv/cpp/opencv_calib3d$StereoBM;,
        Lcom/googlecode/javacv/cpp/opencv_calib3d$CvLevMarq;,
        Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;,
        Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;
    }
.end annotation


# static fields
.field public static final CALIB_CB_ASYMMETRIC_GRID:I = 0x2

.field public static final CALIB_CB_CLUSTERING:I = 0x4

.field public static final CALIB_CB_SYMMETRIC_GRID:I = 0x1

.field public static final CV_CALIB_CB_ADAPTIVE_THRESH:I = 0x1

.field public static final CV_CALIB_CB_FAST_CHECK:I = 0x8

.field public static final CV_CALIB_CB_FILTER_QUADS:I = 0x4

.field public static final CV_CALIB_CB_NORMALIZE_IMAGE:I = 0x2

.field public static final CV_CALIB_FIX_ASPECT_RATIO:I = 0x2

.field public static final CV_CALIB_FIX_FOCAL_LENGTH:I = 0x10

.field public static final CV_CALIB_FIX_INTRINSIC:I = 0x100

.field public static final CV_CALIB_FIX_K1:I = 0x20

.field public static final CV_CALIB_FIX_K2:I = 0x40

.field public static final CV_CALIB_FIX_K3:I = 0x80

.field public static final CV_CALIB_FIX_K4:I = 0x800

.field public static final CV_CALIB_FIX_K5:I = 0x1000

.field public static final CV_CALIB_FIX_K6:I = 0x2000

.field public static final CV_CALIB_FIX_PRINCIPAL_POINT:I = 0x4

.field public static final CV_CALIB_RATIONAL_MODEL:I = 0x4000

.field public static final CV_CALIB_SAME_FOCAL_LENGTH:I = 0x200

.field public static final CV_CALIB_USE_INTRINSIC_GUESS:I = 0x1

.field public static final CV_CALIB_ZERO_DISPARITY:I = 0x400

.field public static final CV_CALIB_ZERO_TANGENT_DIST:I = 0x8

.field public static final CV_EPNP:I = 0x1

.field public static final CV_FM_7POINT:I = 0x1

.field public static final CV_FM_8POINT:I = 0x2

.field public static final CV_FM_LMEDS:I = 0x4

.field public static final CV_FM_LMEDS_ONLY:I = 0x4

.field public static final CV_FM_RANSAC:I = 0x8

.field public static final CV_FM_RANSAC_ONLY:I = 0x8

.field public static final CV_ITERATIVE:I = 0x0

.field public static final CV_LMEDS:I = 0x4

.field public static final CV_P3P:I = 0x2

.field public static final CV_RANSAC:I = 0x8

.field public static final CV_STEREO_BM_BASIC:I = 0x0

.field public static final CV_STEREO_BM_FISH_EYE:I = 0x1

.field public static final CV_STEREO_BM_NARROW:I = 0x2

.field public static final CV_STEREO_BM_NORMALIZED_RESPONSE:I = 0x0

.field public static final CV_STEREO_BM_XSOBEL:I = 0x1

.field public static final EPNP:I = 0x1

.field public static final ITERATIVE:I = 0x0

.field public static final P3P:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_highgui;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_flann;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_features2d;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    return-void
.end method

.method public static native cvCalcMatMulDeriv(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvCalibrateCamera2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)D
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
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCalibrateCamera2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)D
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
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvCalibrationMatrixValues(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DD[D[D[DLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;[D)V
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvCheckChessboard(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native cvComposeRT(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvComputeCorrespondEpilines(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvConvertPointsHomogeneous(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvCorrectMatches(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvCreatePOSITObject(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;
.end method

.method public static native cvCreateStereoBMState(II)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public static native cvDecomposeProjectionMatrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)V
.end method

.method public static native cvDrawChessboardCorners(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;II)V
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

.method public static native cvFindChessboardCorners(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;[II)I
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

.method public static cvFindExtrinsicCameraParams2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 7
    .parameter "object_points"
    .parameter "image_points"
    .parameter "camera_matrix"
    .parameter "distortion_coeffs"
    .parameter "rotation_vector"
    .parameter "translation_vector"

    .prologue
    .line 202
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvFindExtrinsicCameraParams2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)V

    .line 204
    return-void
.end method

.method public static native cvFindExtrinsicCameraParams2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)V
.end method

.method public static native cvFindFundamentalMat(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDDLcom/googlecode/javacv/cpp/opencv_core$CvMat;)I
.end method

.method public static cvFindHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I
    .locals 7
    .parameter "src_points"
    .parameter "dst_points"
    .parameter "homography"

    .prologue
    .line 164
    const/4 v3, 0x0

    const-wide/high16 v4, 0x4008

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvFindHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDLcom/googlecode/javacv/cpp/opencv_core$CvMat;)I

    move-result v0

    return v0
.end method

.method public static native cvFindHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDLcom/googlecode/javacv/cpp/opencv_core$CvMat;)I
.end method

.method public static native cvFindStereoCorrespondenceBM(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;)V
.end method

.method public static native cvGetOptimalNewCameraMatrix(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DLcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;I)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native cvGetValidDisparityROI(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;III)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static cvInitIntrinsicParams2D(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 7
    .parameter "object_points"
    .end parameter
    .parameter "image_points"
    .end parameter
    .parameter "npoints"
    .end parameter
    .parameter "image_size"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "camera_matrix"
    .end parameter

    .prologue
    .line 211
    const-wide/high16 v5, -0x4010

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvInitIntrinsicParams2D(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;D)V

    .line 212
    return-void
.end method

.method public static native cvInitIntrinsicParams2D(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;D)V
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
.end method

.method public static native cvPOSIT(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;DLcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/FloatPointer;)V
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
.end method

.method public static native cvPOSIT(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;DLcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;[F[F)V
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
.end method

.method public static cvProjectPoints2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 13
    .parameter "object_points"
    .parameter "rotation_vector"
    .parameter "translation_vector"
    .parameter "intrinsic_matrix"
    .parameter "distortion_coeffs"
    .parameter "image_points"

    .prologue
    .line 189
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v12}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvProjectPoints2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;D)V

    .line 192
    return-void
.end method

.method public static native cvProjectPoints2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;D)V
.end method

.method public static native cvRANSACUpdateNumIters(DDII)I
.end method

.method public static native cvRQDecomp3x3(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D64f;)V
.end method

.method public static native cvReleasePOSITObject(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvPOSITObject;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseStereoBMState(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static cvReprojectImageTo3D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 1
    .parameter "disparityImage"
    .parameter "_3dImage"
    .parameter "Q"

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvReprojectImageTo3D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)V

    .line 356
    return-void
.end method

.method public static native cvReprojectImageTo3D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)V
.end method

.method public static native cvRodrigues2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)I
.end method

.method public static native cvStereoCalibrate(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;I)D
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

.method public static native cvStereoRectify(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;IDLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V
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
    .end parameter
.end method

.method public static native cvStereoRectifyUncalibrated(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;D)I
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
.end method

.method public static native cvTriangulatePoints(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public static native cvValidateDisparity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;III)V
.end method

.method public static native estimateAffine3D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;DD)I
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native filterSpeckles(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;DIDLcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
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
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native find4QuadCornerSubpix(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Z
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native findCirclesGrid(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native findCirclesGridDefault(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native rectify3Collinear(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$Point2fVectorVector;Lcom/googlecode/javacv/cpp/opencv_core$Point2fVectorVector;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;DLcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;I)F
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
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
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "RectAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "RectAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method

.method public static native solvePnP(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ZI)Z
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
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
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

.method public static native solvePnPRansac(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ZIFILcom/googlecode/javacv/cpp/opencv_core$CvMat;I)V
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
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputArray;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv"
    .end annotation
.end method
