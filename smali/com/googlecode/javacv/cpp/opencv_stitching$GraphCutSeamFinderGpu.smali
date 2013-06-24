.class public Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinderGpu;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$PairwiseSeamFinder;
.source "opencv_stitching.java"

# interfaces
.implements Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinderBase;


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
    not = {
        "android"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphCutSeamFinderGpu"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1086
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$PairwiseSeamFinder;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinderGpu;->allocate()V

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 0
    .parameter "cost_type"
    .parameter "terminal_cost"
    .parameter "bad_region_penalty"

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$PairwiseSeamFinder;-><init>()V

    .line 1090
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinderGpu;->allocate(IFF)V

    .line 1091
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1092
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$PairwiseSeamFinder;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IFF)V
.end method


# virtual methods
.method public native findInPair(JJLcom/googlecode/javacv/cpp/opencv_core$CvRect;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method
