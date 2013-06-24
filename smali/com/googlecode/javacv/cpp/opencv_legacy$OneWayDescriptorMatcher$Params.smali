.class public Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field public static final PATCH_HEIGHT:I = 0x18

.field public static final PATCH_WIDTH:I = 0x18

.field public static final POSE_COUNT:I = 0x1f4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2178
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2187
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2193
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(ILcom/googlecode/javacv/cpp/opencv_core$CvSize;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 0
    .parameter "poseCount"
    .end parameter
    .parameter "patchSize"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "pcaFilename"
    .end parameter
    .parameter "trainPath"
    .end parameter
    .parameter "trainImagesList"
    .end parameter
    .parameter "minScale"
    .end parameter
    .parameter "maxScale"
    .end parameter
    .parameter "stepScale"
    .end parameter

    .prologue
    .line 2190
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 2191
    invoke-direct/range {p0 .. p8}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;->allocate(ILcom/googlecode/javacv/cpp/opencv_core$CvSize;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 2192
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2194
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public static native GET_MAX_SCALE()F
.end method

.method public static native GET_MIN_SCALE()F
.end method

.method public static native GET_STEP_SCALE()F
.end method

.method private native allocate()V
.end method

.method private native allocate(ILcom/googlecode/javacv/cpp/opencv_core$CvSize;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native maxScale()F
.end method

.method public native maxScale(F)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.end method

.method public native minScale()F
.end method

.method public native minScale(F)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.end method

.method public native patchSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native patchSize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.end method

.method public native pcaFilename(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.end method

.method public native pcaFilename()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native poseCount()I
.end method

.method public native poseCount(I)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2177
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
    .locals 1
    .parameter "position"

    .prologue
    .line 2202
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;

    return-object v0
.end method

.method public native stepScale()F
.end method

.method public native stepScale(F)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.end method

.method public native trainImagesList(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.end method

.method public native trainImagesList()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native trainPath(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_legacy$OneWayDescriptorMatcher$Params;
.end method

.method public native trainPath()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method
