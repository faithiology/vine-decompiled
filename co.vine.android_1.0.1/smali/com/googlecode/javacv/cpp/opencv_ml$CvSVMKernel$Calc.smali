.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel$Calc;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "opencv_ml.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "CvSVMKernel"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calc"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 322
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native call(Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMKernel;IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/FloatPointer;Lcom/googlecode/javacpp/FloatPointer;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const float**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
