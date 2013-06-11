.class Lco/vine/android/recorder/RecordController$AudioRecordRunnable;
.super Ljava/lang/Object;
.source "RecordController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/RecordController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordRunnable"
.end annotation


# instance fields
.field private final mAudioData:[S

.field final synthetic this$0:Lco/vine/android/recorder/RecordController;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/RecordController;)V
    .locals 1
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    sget v0, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I

    new-array v0, v0, [S

    iput-object v0, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/RecordController;Lco/vine/android/recorder/RecordController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;-><init>(Lco/vine/android/recorder/RecordController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 388
    const/16 v2, -0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 389
    const-string v2, "audioRecord.startRecording()"

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 390
    new-instance v0, Landroid/media/AudioRecord;

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    sget v5, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 392
    .local v0, audioRecord:Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 395
    :cond_0
    :goto_0
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$100(Lco/vine/android/recorder/RecordController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    array-length v2, v2

    invoke-virtual {v0, v1, v9, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v6

    .line 397
    .local v6, bufferReadResult:I
    if-lez v6, :cond_0

    .line 398
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->isRecording:Z
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$200(Lco/vine/android/recorder/RecordController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->recordingAudio:Z
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$300(Lco/vine/android/recorder/RecordController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    :try_start_0
    sget-object v2, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v2
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :try_start_1
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->isReleased()Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/Buffer;

    const/4 v4, 0x0

    iget-object v5, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    const/4 v8, 0x0

    invoke-static {v5, v8, v6}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record([Ljava/nio/Buffer;)V

    .line 404
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 405
    :catch_0
    move-exception v7

    .line 406
    .local v7, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    invoke-static {v7}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 407
    const-string v1, "Audio error."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    .end local v6           #bufferReadResult:I
    .end local v7           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :cond_2
    const-string v1, "AudioThread Finished, release mAudioRecord"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 414
    if-eqz v0, :cond_3

    .line 415
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 416
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 417
    const-string v1, "mAudioRecord released"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 419
    :cond_3
    return-void
.end method
