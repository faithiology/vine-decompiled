.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackPredictor;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackPredictor"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3286
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3287
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3288
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvVSModule;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native Predict()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.end method

.method public native Update(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)V
.end method
