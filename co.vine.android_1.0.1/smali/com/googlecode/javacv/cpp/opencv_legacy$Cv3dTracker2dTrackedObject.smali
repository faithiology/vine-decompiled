.class public Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cv3dTracker2dTrackedObject"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1067
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1068
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1070
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native id()I
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;
.end method

.method public native p()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native p(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1066
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;
    .locals 1
    .parameter "position"

    .prologue
    .line 1075
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTracker2dTrackedObject;

    return-object v0
.end method
