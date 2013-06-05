.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvCamera"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 677
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native distortion()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native imgSize()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native matrix()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 676
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;
    .locals 1
    .parameter "position"

    .prologue
    .line 685
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;

    return-object v0
.end method

.method public native rotMatr()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native transVect()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method
