.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$End_frame;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "End_frame"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 486
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad$End_frame;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native call(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)I
.end method
