.class public Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avformat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVProgram"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1307
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1308
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVProgram;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVProgram;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1310
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native discard()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDiscard"
        }
    .end annotation
.end method

.method public native discard(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public native id()I
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public native metadata(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public native metadata()Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method

.method public native nb_stream_indexes()I
.end method

.method public native nb_stream_indexes(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public native pcr_pid()I
.end method

.method public native pcr_pid(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public native pmt_pid()I
.end method

.method public native pmt_pid(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVProgram;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
    .locals 1
    .parameter "position"

    .prologue
    .line 1315
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVProgram;

    return-object v0
.end method

.method public native program_num()I
.end method

.method public native program_num(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public native stream_index()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned int*"
        }
    .end annotation
.end method

.method public native stream_index(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method
