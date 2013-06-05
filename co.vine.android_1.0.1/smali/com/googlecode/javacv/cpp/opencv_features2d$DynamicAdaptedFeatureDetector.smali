.class public Lcom/googlecode/javacv/cpp/opencv_features2d$DynamicAdaptedFeatureDetector;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;
.source "opencv_features2d.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_features2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicAdaptedFeatureDetector"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 668
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;III)V
    .locals 0
    .parameter "adjuster"
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter "min_features"
    .end parameter
    .parameter "max_features"
    .end parameter
    .parameter "max_iters"
    .end parameter

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    .line 673
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_features2d$DynamicAdaptedFeatureDetector;->allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;III)V

    .line 674
    return-void
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;III)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method
