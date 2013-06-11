.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvLCMEdge"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1276
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1277
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1278
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native chain()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method

.method public native chain(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;
.end method

.method public native index1()I
.end method

.method public native index1(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;
.end method

.method public native index2()I
.end method

.method public native index2(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1275
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1275
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;
    .locals 1
    .parameter "position"

    .prologue
    .line 1284
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;

    return-object v0
.end method

.method public native width()F
.end method

.method public native width(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvLCMEdge;
.end method
