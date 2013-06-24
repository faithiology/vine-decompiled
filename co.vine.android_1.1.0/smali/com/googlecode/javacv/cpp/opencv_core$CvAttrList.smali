.class public Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvAttrList"
.end annotation


# static fields
.field public static final EMPTY:Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3335
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 3350
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;-><init>()V

    sput-object v0, Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;->EMPTY:Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3336
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3337
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3338
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native attr()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char**"
        }
    .end annotation
.end method

.method public native attr(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;
.end method

.method public native next()Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;)Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3334
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;
    .locals 1
    .parameter "position"

    .prologue
    .line 3343
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvAttrList;

    return-object v0
.end method
