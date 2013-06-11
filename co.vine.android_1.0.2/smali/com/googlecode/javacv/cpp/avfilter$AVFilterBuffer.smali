.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFilterBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer$Free;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 139
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native data(I)Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t*"
        }
    .end annotation
.end method

.method public native data(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method

.method public native extended_data()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint8_t**"
        }
    .end annotation
.end method

.method public native extended_data(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method

.method public native format()I
.end method

.method public native format(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method

.method public native free()Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer$Free;
.end method

.method public native free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer$Free;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method

.method public native h()I
.end method

.method public native h(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method

.method public native linesize(I)I
.end method

.method public native linesize(II)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
    .locals 1
    .parameter "position"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;

    return-object v0
.end method

.method public native priv()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native priv(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method

.method public native refcount()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native refcount(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method

.method public native w()I
.end method

.method public native w(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;
.end method
