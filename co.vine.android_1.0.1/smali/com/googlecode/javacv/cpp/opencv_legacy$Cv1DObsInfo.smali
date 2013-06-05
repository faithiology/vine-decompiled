.class public Lcom/googlecode/javacv/cpp/opencv_legacy$Cv1DObsInfo;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Opaque;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cv1DObsInfo"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 400
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvImgObsInfo;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method
