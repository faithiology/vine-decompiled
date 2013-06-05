.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvAvgComp"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 216
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native neighbors()I
.end method

.method public native neighbors(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;->position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;
    .locals 1
    .parameter "position"

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;

    return-object v0
.end method

.method public native rect()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native rect(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvAvgComp;
.end method
