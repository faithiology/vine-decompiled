.class public Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cv3dTrackerTrackedObject"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1090
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1093
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

.method public native id(I)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;
.end method

.method public native p()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native p(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1089
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;
    .locals 1
    .parameter "position"

    .prologue
    .line 1098
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$Cv3dTrackerTrackedObject;

    return-object v0
.end method
