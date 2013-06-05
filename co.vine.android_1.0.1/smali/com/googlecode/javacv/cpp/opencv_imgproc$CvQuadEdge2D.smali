.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvQuadEdge2D"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 525
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static cvSubdiv2DRotateEdge(JI)J
    .locals 6
    .parameter "edge"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvSubdiv2DEdge"
            }
        .end annotation
    .end parameter
    .parameter "rotate"
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvSubdiv2DEdge"
        }
    .end annotation

    .prologue
    .line 551
    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    int-to-long v2, p2

    add-long/2addr v2, p0

    const-wide/16 v4, 0x3

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static cvSubdiv2DSymEdge(J)J
    .locals 2
    .parameter "edge"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvSubdiv2DEdge"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvSubdiv2DEdge"
        }
    .end annotation

    .prologue
    .line 560
    const-wide/16 v0, 0x2

    xor-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public CV_SUBDIV2D_NEXT_EDGE(J)J
    .locals 2
    .parameter "edge"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvSubdiv2DEdge"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvSubdiv2DEdge"
        }
    .end annotation

    .prologue
    .line 541
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;->next(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public cvSubdiv2DEdgeDst(J)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;
    .locals 1
    .parameter "edge"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvSubdiv2DEdge"
            }
        .end annotation
    .end parameter

    .prologue
    .line 557
    long-to-int v0, p1

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;->pt(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;

    move-result-object v0

    return-object v0
.end method

.method public cvSubdiv2DEdgeOrg(J)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;
    .locals 1
    .parameter "edge"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvSubdiv2DEdge"
            }
        .end annotation
    .end parameter

    .prologue
    .line 554
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;->pt(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;

    move-result-object v0

    return-object v0
.end method

.method public cvSubdiv2DGetEdge(JI)J
    .locals 6
    .parameter "edge"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvSubdiv2DEdge"
            }
        .end annotation
    .end parameter
    .parameter "type"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvNextEdgeType"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvSubdiv2DEdge"
        }
    .end annotation

    .prologue
    .line 547
    long-to-int v0, p1

    add-int/2addr v0, p3

    and-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;->next(I)J

    move-result-wide p1

    .line 548
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    shr-int/lit8 v2, p3, 0x4

    int-to-long v2, v2

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public cvSubdiv2DNextEdge(J)J
    .locals 2
    .parameter "edge"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "CvSubdiv2DEdge"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvSubdiv2DEdge"
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;->CV_SUBDIV2D_NEXT_EDGE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;
.end method

.method public native next(I)J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvSubdiv2DEdge"
        }
    .end annotation
.end method

.method public native next(IJ)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;
    .locals 1
    .parameter "position"

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;

    return-object v0
.end method

.method public native pt(ILcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvQuadEdge2D;
.end method

.method public native pt(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DPoint;
.end method
