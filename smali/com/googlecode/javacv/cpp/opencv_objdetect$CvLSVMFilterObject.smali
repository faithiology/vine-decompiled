.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvLSVMFilterObject"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 273
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native H()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native H(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;
.end method

.method public native V(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterPosition;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;
.end method

.method public native V()Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterPosition;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native fineFunction(I)F
.end method

.method public native fineFunction(IF)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;
.end method

.method public native numFeatures()I
.end method

.method public native numFeatures(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;->position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;
    .locals 1
    .parameter "position"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;

    return-object v0
.end method

.method public native sizeX()I
.end method

.method public native sizeX(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;
.end method

.method public native sizeY()I
.end method

.method public native sizeY(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLSVMFilterObject;
.end method
