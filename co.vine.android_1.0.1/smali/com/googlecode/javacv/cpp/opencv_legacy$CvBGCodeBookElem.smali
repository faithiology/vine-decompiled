.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBGCodeBookElem"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2790
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2791
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2792
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2793
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native boxMax(I)B
.end method

.method public native boxMax(IB)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method

.method public native boxMin(I)B
.end method

.method public native boxMin(IB)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method

.method public native learnMax(I)B
.end method

.method public native learnMax(IB)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method

.method public native learnMin(I)B
.end method

.method public native learnMin(IB)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2789
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
    .locals 1
    .parameter "position"

    .prologue
    .line 2798
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;

    return-object v0
.end method

.method public native stale()I
.end method

.method public native stale(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method

.method public native tLastUpdate()I
.end method

.method public native tLastUpdate(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGCodeBookElem;
.end method
