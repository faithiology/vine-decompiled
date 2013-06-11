.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvDefParam"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2865
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2866
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2867
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2868
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native Double()D
.end method

.method public native Double(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native Float()F
.end method

.method public native Float(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native Int()I
.end method

.method public native Int(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native Str()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native Str(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native pComment()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native pComment(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native pDouble()Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native pDouble(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native pFloat()Lcom/googlecode/javacpp/FloatPointer;
.end method

.method public native pFloat(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native pInt()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native pInt(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native pName()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native pName(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public native pStr()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char**"
        }
    .end annotation
.end method

.method public native pStr(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2864
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;
    .locals 1
    .parameter "position"

    .prologue
    .line 2873
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvDefParam;

    return-object v0
.end method
