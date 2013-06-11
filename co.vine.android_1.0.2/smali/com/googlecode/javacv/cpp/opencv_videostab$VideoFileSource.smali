.class public Lcom/googlecode/javacv/cpp/opencv_videostab$VideoFileSource;
.super Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;
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
    name = "VideoFileSource"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 315
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_videostab$VideoFileSource;->allocate(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "path"
    .end parameter
    .parameter "volatileFrame"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;-><init>()V

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_videostab$VideoFileSource;->allocate(Ljava/lang/String;Z)V

    .line 319
    return-void
.end method

.method private native allocate(Ljava/lang/String;)V
.end method

.method private native allocate(Ljava/lang/String;Z)V
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


# virtual methods
.method public native fps()D
.end method

.method public native frameCount()I
.end method
