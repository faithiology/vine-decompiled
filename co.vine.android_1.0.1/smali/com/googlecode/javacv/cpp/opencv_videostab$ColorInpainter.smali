.class public Lcom/googlecode/javacv/cpp/opencv_videostab$ColorInpainter;
.super Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;
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
    name = "ColorInpainter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 478
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$ColorInpainter;->allocate()V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0
    .parameter "method"
    .parameter "radius"

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_videostab$ColorInpainter;->allocate(ID)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(ID)V
.end method
