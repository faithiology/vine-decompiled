.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
.source "opencv_legacy.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvDetectedBlob"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3059
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3060
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3061
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3062
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3058
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3058
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;
    .locals 1
    .parameter "position"

    .prologue
    .line 3067
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;

    return-object v0
.end method

.method public native response()F
.end method

.method public native response(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDetectedBlob;
.end method
