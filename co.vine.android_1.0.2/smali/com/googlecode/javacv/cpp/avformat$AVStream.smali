.class public Lcom/googlecode/javacv/cpp/avformat$AVStream;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avformat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVStream"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1184
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1186
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1187
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native attached_pic()Lcom/googlecode/javacv/cpp/avcodec$AVPacket;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native attached_pic(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native avg_frame_rate(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native avg_frame_rate()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end method

.method public native codec(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native discard()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDiscard"
        }
    .end annotation
.end method

.method public native discard(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native disposition()I
.end method

.method public native disposition(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native duration()J
.end method

.method public native duration(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native id()I
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native index()I
.end method

.method public native index(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native metadata(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native metadata()Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method

.method public native nb_frames()J
.end method

.method public native nb_frames(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1183
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
    .locals 1
    .parameter "position"

    .prologue
    .line 1192
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVStream;

    return-object v0
.end method

.method public native priv_data()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native priv_data(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native pts()Lcom/googlecode/javacv/cpp/avformat$AVFrac;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native pts(Lcom/googlecode/javacv/cpp/avformat$AVFrac;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native r_frame_rate(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native r_frame_rate()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native sample_aspect_ratio(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native sample_aspect_ratio()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native start_time()J
.end method

.method public native start_time(J)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native time_base(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public native time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method
