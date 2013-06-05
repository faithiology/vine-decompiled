.class public Lcom/googlecode/javacv/cpp/opencv_features2d$VectorDescriptorMatcher;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$GenericDescriptorMatcher;
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
    name = "VectorDescriptorMatcher"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1101
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1102
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$GenericDescriptorMatcher;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1106
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$GenericDescriptorMatcher;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;)V
    .locals 0
    .parameter "extractor"
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter "matcher"
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$GenericDescriptorMatcher;-><init>()V

    .line 1104
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_features2d$VectorDescriptorMatcher;->allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;)V

    .line 1105
    return-void
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorMatcher;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method
