.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvVoronoiDiagram2D"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1249
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1251
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>(Lcom/googlecode/javacpp/Pointer;)V

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
    .line 1248
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1248
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1248
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1248
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;
    .locals 1
    .parameter "position"

    .prologue
    .line 1257
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;

    return-object v0
.end method

.method public native sites()Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.end method

.method public native sites(Lcom/googlecode/javacv/cpp/opencv_core$CvSet;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiDiagram2D;
.end method
