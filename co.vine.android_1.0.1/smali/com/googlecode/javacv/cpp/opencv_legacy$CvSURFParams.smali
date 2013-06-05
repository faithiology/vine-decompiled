.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSURFParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 166
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native extended()I
.end method

.method public native extended(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;
.end method

.method public native hessianThreshold()D
.end method

.method public native hessianThreshold(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;
.end method

.method public native nOctaveLayers()I
.end method

.method public native nOctaveLayers(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;
.end method

.method public native nOctaves()I
.end method

.method public native nOctaves(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;

    return-object v0
.end method

.method public native upright()I
.end method

.method public native upright(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvSURFParams;
.end method
