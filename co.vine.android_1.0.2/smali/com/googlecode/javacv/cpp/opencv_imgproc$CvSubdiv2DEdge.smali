.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2DEdge;
.super Lcom/googlecode/javacpp/SizeTPointer;
.source "opencv_imgproc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSubdiv2DEdge"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 516
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/SizeTPointer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/SizeTPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method
