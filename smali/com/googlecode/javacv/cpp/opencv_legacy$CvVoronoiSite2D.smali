.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvVoronoiSite2D"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1197
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1200
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native edge(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;
.end method

.method public native edge(ILcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiEdge2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
.end method

.method public native next(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
.end method

.method public native next(ILcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
.end method

.method public native node(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;
.end method

.method public native node(ILcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiNode2D;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1196
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;
    .locals 1
    .parameter "position"

    .prologue
    .line 1205
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVoronoiSite2D;

    return-object v0
.end method
