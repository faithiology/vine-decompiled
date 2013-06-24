.class public Lcom/googlecode/javacv/cpp/opencv_stitching;
.super Ljava/lang/Object;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/stitching/stitcher.hpp>",
                "<opencv2/stitching/detail/autocalib.hpp>",
                "opencv_adapters.h"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_stitching@.2.4",
                "opencv_gpu@.2.4",
                "opencv_video@.2.4",
                "opencv_legacy@.2.4",
                "opencv_ml@.2.4",
                "opencv_photo@.2.4",
                "opencv_nonfree@.2.4",
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
                "opencv_stitching",
                "opencv_video",
                "opencv_legacy",
                "opencv_ml",
                "opencv_photo",
                "opencv_nonfree",
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
                "opencv_stitching245",
                "opencv_gpu245",
                "opencv_video245",
                "opencv_legacy245",
                "opencv_ml245",
                "opencv_photo245",
                "opencv_nonfree245",
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
        Lcom/googlecode/javacv/cpp/opencv_stitching$Stitcher;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$MultiBandBlender;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$FeatherBlender;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$Blender;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinderGpu;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinderBase;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DpSeamFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$VoronoiSeamFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$PairwiseSeamFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$NoSeamFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$BlocksGainCompensator;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$GainCompensator;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$NoExposureCompensator;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$ExposureCompensator;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$MatBytePairVector;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterRay;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterReproj;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterBase;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$HomographyBasedEstimator;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$Estimator;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$Graph;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$GraphEdge;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DisjointSets;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$BestOf2NearestMatcher;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesMatcher;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$SurfFeaturesFinderGpu;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$OrbFeaturesFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$SurfFeaturesFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$ImageFeatures;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$SphericalWarperGpu;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$CylindricalWarperGpu;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$PlaneWarperGpu;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$TransverseMercatorWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$MercatorWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$PaniniPortraitWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$PaniniWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$CompressedRectilinearPortraitWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$CompressedRectilinearWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$StereographicWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$FisheyeWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$SphericalWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$CylindricalWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$PlaneWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$WarperCreator;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$PlanePortraitWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$CylindricalPortraitWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCylindricalWarperGpu;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailSphericalWarperGpu;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailPlaneWarperGpu;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailTransverseMercatorWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailMercatorWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailPaniniPortraitWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailPaniniWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCompressedRectilinearPortraitWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCompressedRectilinearWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailStereographicWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailFisheyeWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCylindricalWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailSphericalWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$DetailPlaneWarper;,
        Lcom/googlecode/javacv/cpp/opencv_stitching$RotationWarper;
    }
.end annotation


# static fields
.field public static final WAVE_CORRECT_HORIZ:I = 0x0

.field public static final WAVE_CORRECT_VERT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_calib3d;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_features2d;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_objdetect;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_nonfree;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 101
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_photo;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_ml;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_legacy;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    const-class v0, Lcom/googlecode/javacv/cpp/opencv_video;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    return-void
.end method

.method public static native calibrateRotatingCamera(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native createLaplacePyr(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$MatVector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native createLaplacePyrGpu(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$MatVector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native createWeightMap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;FLcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native estimateFocal(Lcom/googlecode/javacv/cpp/opencv_stitching$ImageFeatures;Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;[D)V
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native findMaxSpanningTree(ILcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;Lcom/googlecode/javacv/cpp/opencv_stitching$Graph;[I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native focalsFromHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[D[D[Z[Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native leaveBiggestComponent(Lcom/googlecode/javacv/cpp/opencv_stitching$ImageFeatures;Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;F)Lcom/googlecode/javacpp/IntPointer;
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
        value = "cv::detail"
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public static native matchesGraphAsString(Lcom/googlecode/javacv/cpp/opencv_core$StringVector;Lcom/googlecode/javacv/cpp/opencv_stitching$MatchesInfo;F)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native normalizeUsingWeightMap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native overlapRoi(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Z
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
            value = "RectAdapter"
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native restoreImageFromLaplacePyr(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native restoreImageFromLaplacePyrGpu(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native resultRoi(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvSize,cv::Size"
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native resultRoi(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$MatVector;)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native resultTl(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvPoint,cv::Point"
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native selectRandomSubset(II[I)V
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native stitchingLogLevel()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method

.method public static native waveCorrect(Lcom/googlecode/javacv/cpp/opencv_core$MatVector;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cv::detail::WaveCorrectKind"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
        value = "cv::detail"
    .end annotation
.end method
