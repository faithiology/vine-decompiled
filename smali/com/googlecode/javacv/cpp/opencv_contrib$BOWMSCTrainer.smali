.class public Lcom/googlecode/javacv/cpp/opencv_contrib$BOWMSCTrainer;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$BOWTrainer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::of2"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BOWMSCTrainer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1474
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1475
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWTrainer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_contrib$BOWMSCTrainer;->allocate()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .parameter "clusterSize"

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWTrainer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_contrib$BOWMSCTrainer;->allocate(D)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$BOWTrainer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(D)V
.end method
