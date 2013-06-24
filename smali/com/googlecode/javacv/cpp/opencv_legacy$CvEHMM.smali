.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvEHMM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 425
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create([I[II)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
    .locals 2
    .parameter "stateNumber"
    .parameter "numMix"
    .parameter "obsSize"

    .prologue
    .line 437
    invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreate2DHMM([I[II)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;

    move-result-object v0

    .line 438
    .local v0, p:Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
    if-eqz v0, :cond_0

    .line 439
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 441
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native level()I
.end method

.method public native level(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.end method

.method public native num_states()I
.end method

.method public native num_states(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.end method

.method public native obsProb()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "float**"
        }
    .end annotation
.end method

.method public native obsProb(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
    .locals 1
    .parameter "position"

    .prologue
    .line 433
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;->deallocate()V

    .line 446
    return-void
.end method

.method public native transP()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native transP(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.end method

.method public native u_ehmm()Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "u.ehmm"
        }
    .end annotation
.end method

.method public native u_ehmm(Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.end method

.method public native u_state(Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMMState;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMM;
.end method

.method public native u_state()Lcom/googlecode/javacv/cpp/opencv_legacy$CvEHMMState;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "u.state"
        }
    .end annotation
.end method
