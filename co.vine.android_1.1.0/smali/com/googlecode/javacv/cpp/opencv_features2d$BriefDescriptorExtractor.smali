.class public Lcom/googlecode/javacv/cpp/opencv_features2d$BriefDescriptorExtractor;
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
    name = "BriefDescriptorExtractor"
.end annotation


# static fields
.field public static final KERNEL_SIZE:I = 0x9

.field public static final PATCH_SIZE:I = 0x30


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 781
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$BriefDescriptorExtractor;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>()V

    .line 789
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$BriefDescriptorExtractor;->allocate(I)V

    .line 790
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(I)V
.end method
