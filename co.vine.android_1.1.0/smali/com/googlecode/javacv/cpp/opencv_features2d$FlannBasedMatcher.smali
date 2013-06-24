.class public Lcom/googlecode/javacv/cpp/opencv_features2d$FlannBasedMatcher;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;
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
    name = "FlannBasedMatcher"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 981
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$FlannBasedMatcher;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;)V
    .locals 0
    .parameter "indexParams"
    .parameter "searchParams"

    .prologue
    .line 984
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;-><init>()V

    .line 985
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_features2d$FlannBasedMatcher;->allocate(Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;)V

    .line 986
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;)V
.end method
