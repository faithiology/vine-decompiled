.class public Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.super Lcom/googlecode/javacpp/Pointer;
.source "avformat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avformat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFormatContext"
.end annotation


# static fields
.field public static final AVFMT_FLAG_CUSTOM_IO:I = 0x80

.field public static final AVFMT_FLAG_DISCARD_CORRUPT:I = 0x100

.field public static final AVFMT_FLAG_GENPTS:I = 0x1

.field public static final AVFMT_FLAG_IGNDTS:I = 0x8

.field public static final AVFMT_FLAG_IGNIDX:I = 0x2

.field public static final AVFMT_FLAG_KEEP_SIDE_DATA:I = 0x40000

.field public static final AVFMT_FLAG_MP4A_LATM:I = 0x8000

.field public static final AVFMT_FLAG_NOBUFFER:I = 0x40

.field public static final AVFMT_FLAG_NOFILLIN:I = 0x10

.field public static final AVFMT_FLAG_NONBLOCK:I = 0x4

.field public static final AVFMT_FLAG_NOPARSE:I = 0x20

.field public static final AVFMT_FLAG_PRIV_OPT:I = 0x20000

.field public static final AVFMT_FLAG_SORT_DTS:I = 0x10000

.field public static final FF_FDEBUG_TS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1375
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1377
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native audio_codec_id()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native audio_codec_id(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native audio_preload()I
.end method

.method public native audio_preload(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native av_class(Lcom/googlecode/javacv/cpp/avutil$AVClass;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native av_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native avio_flags()I
.end method

.method public native avio_flags(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native avoid_negative_ts()I
.end method

.method public native avoid_negative_ts(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native bit_rate()I
.end method

.method public native bit_rate(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native chapters()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVChapter**"
        }
    .end annotation
.end method

.method public native chapters(I)Lcom/googlecode/javacv/cpp/avformat$AVChapter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native chapters(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native correct_ts_overflow()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native correct_ts_overflow(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native ctx_flags()I
.end method

.method public native ctx_flags(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native debug()I
.end method

.method public native debug(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native duration()J
.end method

.method public native duration(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native duration_estimation_method()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDurationEstimationMethod"
        }
    .end annotation
.end method

.method public native duration_estimation_method(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native error_recognition()I
.end method

.method public native error_recognition(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native filename(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native filename()Ljava/lang/String;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native fps_probe_size()I
.end method

.method public native fps_probe_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native iformat(Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native iformat()Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public native interrupt_callback(Lcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native interrupt_callback()Lcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native key()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const uint8_t*"
        }
    .end annotation
.end method

.method public native key(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native keylen()I
.end method

.method public native keylen(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native max_analyze_duration()I
.end method

.method public native max_analyze_duration(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native max_chunk_duration()I
.end method

.method public native max_chunk_duration(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native max_chunk_size()I
.end method

.method public native max_chunk_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native max_delay()I
.end method

.method public native max_delay(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native max_index_size()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native max_index_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native max_picture_buffer()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native max_picture_buffer(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native metadata(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native metadata()Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
.end method

.method public native nb_chapters()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native nb_chapters(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native nb_programs()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native nb_programs(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native nb_streams()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native nb_streams(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native oformat(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native oformat()Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public native packet_size()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native packet_size(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native pb(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native pb()Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1374
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->position(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
    .locals 1
    .parameter "position"

    .prologue
    .line 1383
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    return-object v0
.end method

.method public native priv_data()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native priv_data(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native probesize()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native probesize(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native programs()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVProgram**"
        }
    .end annotation
.end method

.method public native programs(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native programs(I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native seek2any()I
.end method

.method public native seek2any(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native skip_initial_bytes()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native skip_initial_bytes(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native start_time()J
.end method

.method public native start_time(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native start_time_realtime()J
.end method

.method public native start_time_realtime(J)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native streams()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVStream**"
        }
    .end annotation
.end method

.method public native streams(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native subtitle_codec_id()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native subtitle_codec_id(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native ts_id()I
.end method

.method public native ts_id(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native use_wallclock_as_timestamps()I
.end method

.method public native use_wallclock_as_timestamps(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public native video_codec_id()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native video_codec_id(I)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method
