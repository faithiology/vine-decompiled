.class public Lcom/googlecode/javacv/cpp/opencv_features2d$FastAdjuster;
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
    name = "FastAdjuster"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 684
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FastAdjuster;->allocate()V

    return-void
.end method

.method public constructor <init>(IZII)V
    .locals 0
    .parameter "init_thresh"
    .parameter "nonmax"
    .parameter "min_thresh"
    .parameter "max_thresh"

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;-><init>()V

    .line 688
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_features2d$FastAdjuster;->allocate(IZII)V

    .line 689
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$AdjusterAdapter;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IZII)V
    .parameter
    .end parameter
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
.end method
