.class public Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVABufferSinkParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 972
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native all_channel_counts()I
.end method

.method public native all_channel_counts(I)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method

.method public native channel_counts()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native channel_counts(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method

.method public native channel_layouts()Lcom/googlecode/javacpp/LongPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native channel_layouts(Lcom/googlecode/javacpp/LongPointer;)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 971
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 980
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;

    return-object v0
.end method

.method public native sample_fmts()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const AVSampleFormat*"
        }
    .end annotation
.end method

.method public native sample_fmts(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method

.method public native sample_rates()Lcom/googlecode/javacpp/IntPointer;
.end method

.method public native sample_rates(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method
