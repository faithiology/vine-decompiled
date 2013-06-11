.class public Lcom/googlecode/javacv/cpp/opencv_stitching$PaniniWarper;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$WarperCreator;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaniniWarper"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 528
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$WarperCreator;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$PaniniWarper;->allocate()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "A"
    .parameter "B"

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$WarperCreator;-><init>()V

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_stitching$PaniniWarper;->allocate(FF)V

    .line 532
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$WarperCreator;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(FF)V
.end method
