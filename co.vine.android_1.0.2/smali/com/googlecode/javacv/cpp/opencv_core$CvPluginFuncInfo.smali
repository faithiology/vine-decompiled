.class public Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvPluginFuncInfo"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3520
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3521
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3522
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3523
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native default_func_addr()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native default_func_addr(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;
.end method

.method public native func_addr()Lcom/googlecode/javacpp/PointerPointer;
.end method

.method public native func_addr(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;
.end method

.method public native func_names()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public native func_names(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;
.end method

.method public native loaded_from()I
.end method

.method public native loaded_from(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3519
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 3528
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;

    return-object v0
.end method

.method public native search_modules()I
.end method

.method public native search_modules(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPluginFuncInfo;
.end method
