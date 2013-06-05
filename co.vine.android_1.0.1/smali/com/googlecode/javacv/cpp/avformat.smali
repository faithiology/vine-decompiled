.class public Lcom/googlecode/javacv/cpp/avformat;
.super Ljava/lang/Object;
.source "avformat.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libavformat/avformat.h>"
            }
            define = {
                "__STDC_CONSTANT_MACROS"
            }
            includepath = {
                "/usr/local/include/ffmpeg/:/usr/local/include/:/opt/local/include/ffmpeg/:/opt/local/include/:/usr/include/ffmpeg/"
            }
            link = {
                "avformat@.54",
                "avcodec@.54",
                "avutil@.52"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/MinGW/local/include/ffmpeg/;C:/MinGW/include/ffmpeg/;C:/MinGW/local/include/;src/main/resources/com/googlecode/javacv/cpp/"
            }
            linkpath = {
                "C:/MinGW/local/lib/;C:/MinGW/lib/"
            }
            preload = {
                "avformat-54"
            }
            preloadpath = {
                "C:/MinGW/local/bin/;C:/MinGW/bin/"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "../include/"
            }
            linkpath = {
                "../lib/"
            }
            value = {
                "android"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avformat$AVPacketList;,
        Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;,
        Lcom/googlecode/javacv/cpp/avformat$AVChapter;,
        Lcom/googlecode/javacv/cpp/avformat$AVProgram;,
        Lcom/googlecode/javacv/cpp/avformat$AVStream;,
        Lcom/googlecode/javacv/cpp/avformat$AVIndexEntry;,
        Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;,
        Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;,
        Lcom/googlecode/javacv/cpp/avformat$AVProbeData;,
        Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;,
        Lcom/googlecode/javacv/cpp/avformat$AVFrac;,
        Lcom/googlecode/javacv/cpp/avformat$AVIOContext;,
        Lcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;
    }
.end annotation


# static fields
.field public static final AVFMTCTX_NOHEADER:I = 0x1

.field public static final AVFMT_ALLOW_FLUSH:I = 0x10000

.field public static final AVFMT_DURATION_FROM_BITRATE:I = 0x2

.field public static final AVFMT_DURATION_FROM_PTS:I = 0x0

.field public static final AVFMT_DURATION_FROM_STREAM:I = 0x1

.field public static final AVFMT_GENERIC_INDEX:I = 0x100

.field public static final AVFMT_GLOBALHEADER:I = 0x40

.field public static final AVFMT_NEEDNUMBER:I = 0x2

.field public static final AVFMT_NOBINSEARCH:I = 0x2000

.field public static final AVFMT_NODIMENSIONS:I = 0x800

.field public static final AVFMT_NOFILE:I = 0x1

.field public static final AVFMT_NOGENSEARCH:I = 0x4000

.field public static final AVFMT_NOSTREAMS:I = 0x1000

.field public static final AVFMT_NOTIMESTAMPS:I = 0x80

.field public static final AVFMT_NO_BYTE_SEEK:I = 0x8000

.field public static final AVFMT_RAWPICTURE:I = 0x20

.field public static final AVFMT_SEEK_TO_PTS:I = 0x4000000

.field public static final AVFMT_SHOW_IDS:I = 0x8

.field public static final AVFMT_TS_DISCONT:I = 0x200

.field public static final AVFMT_TS_NONSTRICT:I = 0x8020000

.field public static final AVFMT_VARIABLE_FPS:I = 0x400

.field public static final AVIO_FLAG_DIRECT:I = 0x8000

.field public static final AVIO_FLAG_NONBLOCK:I = 0x8

.field public static final AVIO_FLAG_READ:I = 0x1

.field public static final AVIO_FLAG_READ_WRITE:I = 0x3

.field public static final AVIO_FLAG_WRITE:I = 0x2

.field public static final AVIO_SEEKABLE_NORMAL:I = 0x1

.field public static final AVPROBE_PADDING_SIZE:I = 0x20

.field public static final AVPROBE_SCORE_MAX:I = 0x64

.field public static final AVPROBE_SCORE_RETRY:I = 0x19

.field public static final AVSEEK_FLAG_ANY:I = 0x4

.field public static final AVSEEK_FLAG_BACKWARD:I = 0x1

.field public static final AVSEEK_FLAG_BYTE:I = 0x2

.field public static final AVSEEK_FLAG_FRAME:I = 0x8

.field public static final AVSEEK_FORCE:I = 0x20000

.field public static final AVSEEK_SIZE:I = 0x10000

.field public static final AVSTREAM_PARSE_FULL:I = 0x1

.field public static final AVSTREAM_PARSE_FULL_ONCE:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final AVSTREAM_PARSE_FULL_RAW:I = 0x0

.field public static final AVSTREAM_PARSE_HEADERS:I = 0x2

.field public static final AVSTREAM_PARSE_NONE:I = 0x0

.field public static final AVSTREAM_PARSE_TIMESTAMPS:I = 0x3

.field public static final AV_DISPOSITION_ATTACHED_PIC:I = 0x400

.field public static final AV_DISPOSITION_CLEAN_EFFECTS:I = 0x200

.field public static final AV_DISPOSITION_COMMENT:I = 0x8

.field public static final AV_DISPOSITION_DEFAULT:I = 0x1

.field public static final AV_DISPOSITION_DUB:I = 0x2

.field public static final AV_DISPOSITION_FORCED:I = 0x40

.field public static final AV_DISPOSITION_HEARING_IMPAIRED:I = 0x80

.field public static final AV_DISPOSITION_KARAOKE:I = 0x20

.field public static final AV_DISPOSITION_LYRICS:I = 0x10

.field public static final AV_DISPOSITION_ORIGINAL:I = 0x4

.field public static final AV_DISPOSITION_VISUAL_IMPAIRED:I = 0x100

.field public static final AV_PROGRAM_RUNNING:I = 0x1

.field public static final AV_PTS_WRAP_ADD_OFFSET:I = 0x1

.field public static final AV_PTS_WRAP_IGNORE:I = 0x0

.field public static final AV_PTS_WRAP_SUB_OFFSET:I = -0x1

#the value of this static final field might be set in the static constructor
.field public static final LIBAVFORMAT_BUILD:I = 0x0

.field public static final LIBAVFORMAT_IDENT:Ljava/lang/String; = null

.field public static final LIBAVFORMAT_VERSION:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final LIBAVFORMAT_VERSION_INT:I = 0x0

.field public static final LIBAVFORMAT_VERSION_MAJOR:I = 0x36

.field public static final LIBAVFORMAT_VERSION_MICRO:I = 0x68

.field public static final LIBAVFORMAT_VERSION_MINOR:I = 0x3f


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x68

    const/16 v2, 0x3f

    const/16 v1, 0x36

    .line 76
    const-class v0, Lcom/googlecode/javacv/cpp/avcodec;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 95
    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION_INT(III)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avformat;->LIBAVFORMAT_VERSION_INT:I

    .line 98
    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->AV_VERSION(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avformat;->LIBAVFORMAT_VERSION:Ljava/lang/String;

    .line 101
    sget v0, Lcom/googlecode/javacv/cpp/avformat;->LIBAVFORMAT_VERSION_INT:I

    sput v0, Lcom/googlecode/javacv/cpp/avformat;->LIBAVFORMAT_BUILD:I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lavf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/googlecode/javacv/cpp/avformat;->LIBAVFORMAT_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/cpp/avformat;->LIBAVFORMAT_IDENT:Ljava/lang/String;

    .line 1108
    const/4 v0, 0x0

    const/16 v1, 0x52

    const/16 v2, 0x41

    const/16 v3, 0x57

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/avutil;->MKTAG(IIII)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/avformat;->AVSTREAM_PARSE_FULL_RAW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1689
    return-void
.end method

.method public static native av_add_index_entry(Lcom/googlecode/javacv/cpp/avformat$AVStream;JJIII)I
.end method

.method public static native av_append_packet(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;I)I
.end method

.method public static native av_codec_get_id(Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public static native av_codec_get_tag(Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native av_codec_get_tag2(Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;I[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned*"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_dump_format(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/lang/String;I)V
.end method

.method public static native av_filename_number_test(Ljava/lang/String;)I
.end method

.method public static native av_find_best_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IIILcom/googlecode/javacv/cpp/avcodec$AVCodec;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVMediaType"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_find_default_stream_index(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method

.method public static native av_find_input_format(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public static native av_find_program_from_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVProgram;I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public static native av_fmt_ctx_get_duration_estimation_method(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVDurationEstimationMethod"
        }
    .end annotation
.end method

.method public static native av_get_frame_filename(Lcom/googlecode/javacpp/BytePointer;ILjava/lang/String;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_get_output_timestamp(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;I[J[J)I
.end method

.method public static native av_get_packet(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;I)I
.end method

.method public static native av_guess_codec(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVMediaType"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public static native av_guess_format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public static native av_guess_sample_aspect_ratio(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVStream;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_hex_dump(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/BytePointer;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FILE*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_hex_dump_log(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacpp/BytePointer;I)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_iformat_next(Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public static native av_index_search_timestamp(Lcom/googlecode/javacv/cpp/avformat$AVStream;JI)I
.end method

.method public static native av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native av_match_ext(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native av_new_program(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;I)Lcom/googlecode/javacv/cpp/avformat$AVProgram;
.end method

.method public static native av_oformat_next(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;
.end method

.method public static native av_pkt_dump2(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;ILcom/googlecode/javacv/cpp/avformat$AVStream;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FILE*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_pkt_dump_log2(Lcom/googlecode/javacpp/Pointer;ILcom/googlecode/javacv/cpp/avcodec$AVPacket;ILcom/googlecode/javacv/cpp/avformat$AVStream;)V
.end method

.method public static native av_probe_input_buffer(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_probe_input_format(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public static native av_probe_input_format2(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;I[I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public static native av_probe_input_format3(Lcom/googlecode/javacv/cpp/avformat$AVProbeData;I[I)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
.end method

.method public static native av_read_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native av_read_pause(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method

.method public static native av_read_play(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method

.method public static native av_register_all()V
.end method

.method public static native av_register_input_format(Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;)V
.end method

.method public static native av_register_output_format(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)V
.end method

.method public static native av_sdp_create(Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFormatContext**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_seek_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IJI)I
.end method

.method public static native av_url_split([BI[BI[BI[I[BILjava/lang/String;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I
.end method

.method public static native av_write_trailer(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I
.end method

.method public static native avformat_alloc_context()Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;
.end method

.method public static native avformat_alloc_output_context2(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;Ljava/lang/String;Ljava/lang/String;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avformat_close_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avformat_configuration()Ljava/lang/String;
.end method

.method public static native avformat_find_stream_info(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avformat_free_context(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)V
.end method

.method public static native avformat_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avformat_get_riff_audio_tags()Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avformat_get_riff_video_tags()Lcom/googlecode/javacv/cpp/avformat$AVCodecTag;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avformat_license()Ljava/lang/String;
.end method

.method public static native avformat_match_stream_specifier(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avformat$AVStream;Ljava/lang/String;)I
.end method

.method public static native avformat_network_deinit()I
.end method

.method public static native avformat_network_init()I
.end method

.method public static native avformat_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avformat$AVStream;
.end method

.method public static native avformat_open_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avformat_query_codec(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVCodecID"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avformat_queue_attached_pictures(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)V
.end method

.method public static native avformat_seek_file(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IJJJI)I
.end method

.method public static native avformat_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avformat_write_header(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avio_alloc_context(Lcom/googlecode/javacpp/BytePointer;IILcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Read_packet;Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Write_packet;Lcom/googlecode/javacv/cpp/avformat$AVIOContext$Seek;)Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avio_check(Ljava/lang/String;I)I
.end method

.method public static native avio_close(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method

.method public static native avio_close_dyn_buf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_closep(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avio_enum_protocols(Lcom/googlecode/javacpp/PointerPointer;I)Ljava/lang/String;
.end method

.method public static native avio_flush(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)V
.end method

.method public static native avio_get_str(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILcom/googlecode/javacpp/BytePointer;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avio_get_str16be(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILcom/googlecode/javacpp/BytePointer;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avio_get_str16le(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;ILcom/googlecode/javacpp/BytePointer;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avio_open(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avio_open2(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;ILcom/googlecode/javacv/cpp/avformat$AVIOInterruptCB;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avio_open_dyn_buf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avio_pause(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)I
.end method

.method public static native avio_printf(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;)I
.end method

.method public static native avio_put_str(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;)I
.end method

.method public static native avio_put_str16le(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;)I
.end method

.method public static native avio_r8(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method

.method public static native avio_rb16(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avio_rb24(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avio_rb32(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avio_rb64(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public static native avio_read(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avio_rl16(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avio_rl24(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avio_rl32(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native avio_rl64(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)J
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint64_t"
        }
    .end annotation
.end method

.method public static native avio_seek(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;JI)J
.end method

.method public static native avio_seek_time(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;IJI)J
.end method

.method public static native avio_size(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)J
.end method

.method public static native avio_skip(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;J)J
.end method

.method public static native avio_tell(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)J
.end method

.method public static native avio_w8(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
.end method

.method public static native avio_wb16(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_wb24(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_wb32(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_wb64(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;J)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_wl16(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_wl24(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_wl32(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_wl64(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;J)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native avio_write(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Lcom/googlecode/javacpp/BytePointer;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native url_feof(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I
.end method
