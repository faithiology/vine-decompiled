.class public Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.super Lcom/googlecode/javacpp/Pointer;
.source "PGRFlyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/PGRFlyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlyCaptureImage"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 664
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native bStippled(Z)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public native bStippled()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->pData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->iRowInc()I

    move-result v1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->iRows()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public native iCols()I
.end method

.method public native iCols(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public native iNumImages()I
.end method

.method public native iNumImages(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public native iRowInc()I
.end method

.method public native iRowInc(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public native iRows()I
.end method

.method public native iRows(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public native pData()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned char*"
        }
    .end annotation
.end method

.method public native pData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public native pixelFormat()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCapturePixelFormat"
        }
    .end annotation
.end method

.method public native pixelFormat(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
    .locals 1
    .parameter "position"

    .prologue
    .line 672
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    return-object v0
.end method

.method public native timeStamp(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public native timeStamp()Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native ulReserved(I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulReserved(II)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method

.method public native videoMode()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureVideoMode"
        }
    .end annotation
.end method

.method public native videoMode(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
.end method
