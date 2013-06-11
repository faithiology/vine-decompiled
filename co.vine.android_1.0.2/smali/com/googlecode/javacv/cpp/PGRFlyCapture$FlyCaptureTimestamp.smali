.class public Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
.super Lcom/googlecode/javacpp/Pointer;
.source "PGRFlyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/PGRFlyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlyCaptureTimestamp"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 631
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;->position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
    .locals 1
    .parameter "position"

    .prologue
    .line 639
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;

    return-object v0
.end method

.method public native ulCycleCount()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulCycleCount(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
.end method

.method public native ulCycleOffset()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulCycleOffset(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
.end method

.method public native ulCycleSeconds()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulCycleSeconds(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
.end method

.method public native ulMicroSeconds()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulMicroSeconds(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
.end method

.method public native ulSeconds()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned long"
        }
    .end annotation
.end method

.method public native ulSeconds(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
.end method
