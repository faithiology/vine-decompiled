.class public Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;
.super Lcom/googlecode/javacpp/Pointer;
.source "PGRFlyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/PGRFlyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlyCaptureImagePlus"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2478
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2479
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2480
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2481
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native image()Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native image(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2477
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;->position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;
    .locals 1
    .parameter "position"

    .prologue
    .line 2486
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;

    return-object v0
.end method

.method public native uiBufSeqNum()I
.end method

.method public native uiBufSeqNum(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;
.end method

.method public native uiBufferIndex()I
.end method

.method public native uiBufferIndex(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;
.end method

.method public native uiSeqNum()I
.end method

.method public native uiSeqNum(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;
.end method

.method public native ulReserved(I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulReserved(II)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;
.end method
