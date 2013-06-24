.class public Lcom/googlecode/javacv/cpp/opencv_stitching$BestOf2NearestMatcher;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesMatcher;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BestOf2NearestMatcher"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 719
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesMatcher;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$BestOf2NearestMatcher;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesMatcher;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(ZFII)V
    .locals 0
    .parameter "try_use_gpu"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter "match_conf"
    .end parameter
    .parameter "num_matches_thresh1"
    .end parameter
    .parameter "num_matches_thresh2"
    .end parameter

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesMatcher;-><init>()V

    .line 723
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_stitching$BestOf2NearestMatcher;->allocate(ZFII)V

    .line 724
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(ZFII)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method
