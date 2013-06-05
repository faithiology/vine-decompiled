.class public Lcom/googlecode/javacv/cpp/opencv_legacy$FloatCalonderDescriptorExtractor;
.super Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "cv::CalonderDescriptorExtractor<float>"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatCalonderDescriptorExtractor"
.end annotation


# static fields
.field protected static final BORDER_SIZE:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2153
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2154
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2155
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "classifierFile"

    .prologue
    .line 2156
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_features2d$DescriptorExtractor;-><init>()V

    .line 2157
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$FloatCalonderDescriptorExtractor;->allocate(Ljava/lang/String;)V

    .line 2158
    return-void
.end method

.method private native allocate(Ljava/lang/String;)V
.end method
