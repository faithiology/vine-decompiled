.class public Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector;
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
    name = "SimpleBlobDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 516
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;)V
    .locals 0
    .parameter "parameters"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;-><init>()V

    .line 520
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector;->allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;)V

    .line 521
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$SimpleBlobDetector$Params;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method
