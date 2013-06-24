.class public Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinder;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;
.source "opencv_stitching.java"

# interfaces
.implements Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinderBase;


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GraphCutSeamFinder"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1070
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinder;->allocate()V

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 0
    .parameter "cost_type"
    .parameter "terminal_cost"
    .parameter "bad_region_penalty"

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;-><init>()V

    .line 1074
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_stitching$GraphCutSeamFinder;->allocate(IFF)V

    .line 1075
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$SeamFinder;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IFF)V
.end method
