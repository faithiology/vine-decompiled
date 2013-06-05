.class public Lcom/googlecode/javacv/cpp/opencv_core$Cv_iplDeallocate;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "opencv_core.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Convention;
    value = "CV_STDCALL"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cv_iplDeallocate"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 4449
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 4451
    invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$Cv_iplDeallocate;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 4450
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native call(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V
.end method
