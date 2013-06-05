.class public Lcom/googlecode/javacv/cpp/ARToolKitPlus$Tracker;
.super Lcom/googlecode/javacpp/Pointer;
.source "ARToolKitPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/ARToolKitPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tracker"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 186
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native activateAutoThreshold(Z)V
.end method

.method public native activateBinaryMarker(I)V
.end method

.method public native activateVignettingCompensation(ZIII)V
.end method

.method public native arDetectMarker(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native arDetectMarker(Ljava/nio/ByteBuffer;ILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native arDetectMarker([BILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native arDetectMarkerLite(Lcom/googlecode/javacpp/BytePointer;ILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native arDetectMarkerLite(Ljava/nio/ByteBuffer;ILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native arDetectMarkerLite([BILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native arFreePatt(I)I
.end method

.method public native arGetTransMat(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[DD[D)D
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARFloat(*)[4]"
            }
        .end annotation
    .end parameter
.end method

.method public native arGetTransMatCont(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[D[DD[D)D
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARFloat(*)[4]"
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
                "ARFloat(*)[4]"
            }
        .end annotation
    .end parameter
.end method

.method public native arLoadPatt(Ljava/lang/String;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
.end method

.method public native arMultiFreeConfig(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;)I
.end method

.method public native arMultiGetTransMat(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;ILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;)D
.end method

.method public native arMultiReadConfigFile(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;
.end method

.method public native calcOpenGLMatrixFromMarker(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[DD[D)D
.end method

.method public native changeCameraSize(II)V
.end method

.method public native executeMultiMarkerPoseEstimator(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;ILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;)D
.end method

.method public native executeSingleMarkerPoseEstimator(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[DD[D)D
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARFloat(*)[4]"
            }
        .end annotation
    .end parameter
.end method

.method public native getBitsPerPixel()I
.end method

.method public native getCamera()Lcom/googlecode/javacv/cpp/ARToolKitPlus$Camera;
.end method

.method public native getDescription()Ljava/lang/String;
.end method

.method public native getModelViewMatrix()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native getNumLoadablePatterns()I
.end method

.method public native getPixelFormat()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "ARToolKitPlus::PIXEL_FORMAT"
        }
    .end annotation
.end method

.method public native getProfiler()Lcom/googlecode/javacv/cpp/ARToolKitPlus$Profiler;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native getProjectionMatrix()Lcom/googlecode/javacpp/DoublePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native getThreshold()I
.end method

.method public native isAutoThresholdActivated()Z
.end method

.method public native loadCameraFile(Ljava/lang/String;DD)Z
.end method

.method public native rppGetTransMat(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;[DD[D)D
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARFloat(*)[4]"
            }
        .end annotation
    .end parameter
.end method

.method public native rppMultiGetTransMat(Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;ILcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;)D
.end method

.method public native setBorderWidth(D)V
.end method

.method public native setCamera(Lcom/googlecode/javacv/cpp/ARToolKitPlus$Camera;)V
.end method

.method public native setCamera(Lcom/googlecode/javacv/cpp/ARToolKitPlus$Camera;DD)V
.end method

.method public native setImageProcessingMode(I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::IMAGE_PROC_MODE"
            }
        .end annotation
    .end parameter
.end method

.method public native setLoadUndistLUT(Z)V
.end method

.method public native setLogger(Lcom/googlecode/javacv/cpp/ARToolKitPlus$Logger;)V
.end method

.method public native setMarkerMode(I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::MARKER_MODE"
            }
        .end annotation
    .end parameter
.end method

.method public native setNumAutoThresholdRetries(I)V
.end method

.method public native setPixelFormat(I)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::PIXEL_FORMAT"
            }
        .end annotation
    .end parameter
.end method

.method public native setPoseEstimator(I)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::POSE_ESTIMATOR"
            }
        .end annotation
    .end parameter
.end method

.method public native setThreshold(I)V
.end method

.method public native setUndistortionMode(I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::UNDIST_MODE"
            }
        .end annotation
    .end parameter
.end method
