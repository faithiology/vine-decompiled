.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvHaarStageClassifier"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 149
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native child()I
.end method

.method public native child(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
.end method

.method public native classifier()Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifier;
.end method

.method public native classifier(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifier;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
.end method

.method public native count()I
.end method

.method public native count(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
.end method

.method public native next()I
.end method

.method public native next(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
.end method

.method public native parent()I
.end method

.method public native parent(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;->position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
    .locals 1
    .parameter "position"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;

    return-object v0
.end method

.method public native threshold()F
.end method

.method public native threshold(F)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
.end method
