.class public Lcom/googlecode/javacv/cpp/opencv_features2d$OpponentColorDescriptorExtractor;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;
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
    name = "OpponentColorDescriptorExtractor"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 759
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;)V
    .locals 0
    .parameter "descriptorExtractor"
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>()V

    .line 763
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$OpponentColorDescriptorExtractor;->allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;)V

    .line 764
    return-void
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method
