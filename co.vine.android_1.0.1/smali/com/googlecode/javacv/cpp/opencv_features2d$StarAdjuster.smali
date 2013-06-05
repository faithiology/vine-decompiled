.class public Lcom/googlecode/javacv/cpp/opencv_features2d$StarAdjuster;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;
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
    name = "StarAdjuster"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 707
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$StarAdjuster;->allocate()V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .parameter "initial_thresh"
    .parameter "min_thresh"
    .parameter "max_thresh"

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;-><init>()V

    .line 711
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_features2d$StarAdjuster;->allocate(DDD)V

    .line 712
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(DDD)V
.end method
