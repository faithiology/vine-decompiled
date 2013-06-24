.class public Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;
.super Lcom/googlecode/javacpp/LongPointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvRNG"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 356
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvRNG;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/LongPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method
