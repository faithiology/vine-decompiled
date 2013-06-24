.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvHaarClassifierCascade"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 176
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static load(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
    .locals 2
    .parameter "directory"
    .parameter "orig_window_size"

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect;->cvLoadHaarClassifierCascade(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;

    move-result-object v0

    .line 191
    .local v0, h:Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
    if-eqz v0, :cond_0

    .line 192
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 194
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native count()I
.end method

.method public native count(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.end method

.method public native hid_cascade(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHidHaarClassifierCascade;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.end method

.method public native hid_cascade()Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHidHaarClassifierCascade;
.end method

.method public native orig_window_size()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native orig_window_size(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;->position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
    .locals 1
    .parameter "position"

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;

    return-object v0
.end method

.method public native real_window_size()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native real_window_size(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.end method

.method public release()V
    .locals 0

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;->deallocate()V

    .line 199
    return-void
.end method

.method public native scale()D
.end method

.method public native scale(D)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.end method

.method public native stage_classifier(Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;)Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarClassifierCascade;
.end method

.method public native stage_classifier()Lcom/googlecode/javacv/cpp/opencv_objdetect$CvHaarStageClassifier;
.end method
