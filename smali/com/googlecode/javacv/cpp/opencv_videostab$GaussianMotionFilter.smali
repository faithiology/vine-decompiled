.class public Lcom/googlecode/javacv/cpp/opencv_videostab$GaussianMotionFilter;
.super Lcom/googlecode/javacv/cpp/opencv_videostab$MotionFilterBase;
.source "opencv_videostab.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::videostab"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_videostab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GaussianMotionFilter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 277
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$MotionFilterBase;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$GaussianMotionFilter;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_videostab$MotionFilterBase;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native setStdev(F)V
.end method

.method public native stdev()F
.end method
