.class public Lcom/googlecode/javacv/cpp/opencv_flann$HierarchicalClusteringIndexParams;
.super Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;
.source "opencv_flann.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::flann"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_flann;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HierarchicalClusteringIndexParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 186
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$HierarchicalClusteringIndexParams;->allocate()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "branching"
    .parameter "centers_init"
    .parameter "trees"
    .parameter "leaf_size"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_flann$HierarchicalClusteringIndexParams;->allocate(IIII)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIII)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cvflann::flann_centers_init_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method
