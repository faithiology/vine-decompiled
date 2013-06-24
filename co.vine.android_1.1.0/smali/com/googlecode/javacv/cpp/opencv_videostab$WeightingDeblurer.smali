.class public Lcom/googlecode/javacv/cpp/opencv_videostab$WeightingDeblurer;
.super Lcom/googlecode/javacv/cpp/opencv_videostab$DeblurerBase;
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
    name = "WeightingDeblurer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 535
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$DeblurerBase;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$WeightingDeblurer;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_videostab$DeblurerBase;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native sensitivity()F
.end method

.method public native setSensitivity(F)V
.end method
