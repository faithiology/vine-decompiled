.class public Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.super Lcom/googlecode/javacpp/Pointer;
.source "PGRFlyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/PGRFlyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlyCaptureInfoEx"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 432
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native CameraMaxBusSpeed()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureBusSpeed"
        }
    .end annotation
.end method

.method public native CameraMaxBusSpeed(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native CameraModel()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureCameraModel"
        }
    .end annotation
.end method

.method public native CameraModel(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native CameraType()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureCameraType"
        }
    .end annotation
.end method

.method public native CameraType(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native SerialNumber()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureCameraSerialNumber"
        }
    .end annotation
.end method

.method public native SerialNumber(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native iBusNum()I
.end method

.method public native iBusNum(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native iDCAMVer()I
.end method

.method public native iDCAMVer(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native iNodeNum()I
.end method

.method public native iNodeNum(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;->position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
    .locals 1
    .parameter "position"

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;

    return-object v0
.end method

.method public native pszModelName(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native pszModelName()Ljava/lang/String;
.end method

.method public native pszSensorInfo(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native pszSensorInfo()Ljava/lang/String;
.end method

.method public native pszVendorName(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method

.method public native pszVendorName()Ljava/lang/String;
.end method

.method public native ulReserved(I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulReserved(II)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
.end method
