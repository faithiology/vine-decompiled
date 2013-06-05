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

.field private final mAudioRecord:Landroid/media/AudioRecord;

.field final synthetic this$0:Lco/vine/android/recorder/RecordController;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/RecordController;)V
    .locals 6
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    sget v0, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I

    new-array v0, v0, [S

    iput-object v0, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    .line 413
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    sget v5, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/RecordController;Lco/vine/android/recorder/RecordController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;-><init>(Lco/vine/android/recorder/RecordController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 418
    const/16 v2, -0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 419
    const-string v2, "mAudioRecord.startRecording()"

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 423
    :cond_0
    :goto_0
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$100(Lco/vine/android/recorder/RecordController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v3, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    iget-object v4, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    array-length v4, v4

    invoke-virtual {v2, v3, v8, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 425
    .local v0, bufferReadResult:I
    if-lez v0, :cond_0

    .line 426
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->isRecording:Z
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$200(Lco/vine/android/recorder/RecordController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->recordingAudio:Z
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$300(Lco/vine/android/recorder/RecordController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    :try_start_0
    sget-object v3, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v3
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :try_start_1
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->isRelease()Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/Buffer;

    const/4 v5, 0x0

    iget-object v6, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record([Ljava/nio/Buffer;)V

    .line 432
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 435
    const-string v2, "Audio error."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    .end local v0           #bufferReadResult:I
    .end local v1           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :cond_2
    const-string v2, "AudioThread Finished, release mAudioRecord"

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_3

    .line 443
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 444
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 445
    const-string v2, "mAudioRecord released"

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 447
    :cond_3
    return-void
.end method
