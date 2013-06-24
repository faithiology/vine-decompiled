.class public Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
.super Lcom/googlecode/javacpp/Pointer;
.source "PGRFlyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/PGRFlyCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlyCaptureSystemTime"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3382
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3383
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3384
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3385
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
    .line 3381
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;->position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
    .locals 1
    .parameter "position"

    .prologue
    .line 3390
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;

    return-object v0
.end method

.method public native usHour(S)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
.end method

.method public native usHour()S
.end method

.method public native usMilliseconds(S)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
.end method

.method public native usMilliseconds()S
.end method

.method public native usMinute(S)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
.end method

.method public native usMinute()S
.end method

.method public native usSecond(S)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;
.end method

.method public native usSecond()S
.end method
