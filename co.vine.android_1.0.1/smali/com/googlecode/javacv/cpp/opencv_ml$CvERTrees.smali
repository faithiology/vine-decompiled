.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvERTrees;
.super Lcom/googlecode/javacv/cpp/opencv_ml$CvRTrees;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvERTrees"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1102
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTrees;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvERTrees;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvRTrees;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method
