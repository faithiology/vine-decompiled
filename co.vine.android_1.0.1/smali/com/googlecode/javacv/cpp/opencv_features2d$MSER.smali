.class public Lcom/googlecode/javacv/cpp/opencv_features2d$MSER;
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
    name = "MSER"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 410
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$MSER;->allocate()V

    return-void
.end method

.method public constructor <init>(IIIDDIDDI)V
    .locals 0
    .parameter "_delta"
    .parameter "_min_area"
    .parameter "_max_area"
    .parameter "_max_variation"
    .parameter "_min_diversity"
    .parameter "_max_evolution"
    .parameter "_area_threshold"
    .parameter "_min_margin"
    .parameter "_edge_blur_size"

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    .line 417
    invoke-direct/range {p0 .. p13}, Lcom/googlecode/javacv/cpp/opencv_features2d$MSER;->allocate(IIIDDIDDI)V

    .line 419
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIIDDIDDI)V
.end method
