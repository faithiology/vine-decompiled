.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvLatentSvmDetector"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 293
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native b()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native b(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
.end method

.method public native filters()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "CvLSVMFilterObject**"
        }
    .end annotation
.end method

.method public native filters(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
.end method

.method public native num_components()I
.end method

.method public native num_components(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
.end method

.method public native num_filters()I
.end method

.method public native num_filters(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
.end method

.method public native num_part_filters()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native num_part_filters(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;->position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
    .locals 1
    .parameter "position"

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;

    return-object v0
.end method

.method public native score_threshold()F
.end method

.method public native score_threshold(F)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvLatentSvmDetector;
.end method
