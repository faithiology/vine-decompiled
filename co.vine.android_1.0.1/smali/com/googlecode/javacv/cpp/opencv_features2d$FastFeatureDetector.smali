.class public Lcom/googlecode/javacv/cpp/opencv_features2d$FastFeatureDetector;
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
    name = "FastFeatureDetector"
.end annotation


# static fields
.field public static final TYPE_5_8:I = 0x0

.field public static final TYPE_7_12:I = 0x1

.field public static final TYPE_9_16:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 474
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .parameter "threshold"
    .parameter "nonmaxSuppression"

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_features2d$FastFeatureDetector;->allocate(IZ)V

    .line 480
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(IZ)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method
