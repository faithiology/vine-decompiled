.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSubdiv2D"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 584
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native bottomright()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native bottomright(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method

.method public native is_geometry_valid()I
.end method

.method public native is_geometry_valid(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
    .locals 1
    .parameter "x0"

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
    .locals 1
    .parameter "x0"

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
    .locals 1
    .parameter "position"

    .prologue
    .line 592
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;

    return-object v0
.end method

.method public native quad_edges()I
.end method

.method public native quad_edges(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method

.method public native recent_edge()J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvSubdiv2DEdge"
        }
    .end annotation
.end method

.method public native recent_edge(J)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method

.method public native topleft()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native topleft(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method