.class public Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1021
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native maxObjectSize()I
.end method

.method public native maxObjectSize(I)Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
.end method

.method public native maxTrackLifetime()I
.end method

.method public native maxTrackLifetime(I)Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
.end method

.method public native minDetectionPeriod()I
.end method

.method public native minDetectionPeriod(I)Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
.end method

.method public native minNeighbors()I
.end method

.method public native minNeighbors(I)Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
.end method

.method public native minObjectSize()I
.end method

.method public native minObjectSize(I)Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
.end method

.method public native scaleFactor()D
.end method

.method public native scaleFactor(D)Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
.end method
