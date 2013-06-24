.class public Lco/vine/android/recorder/RecordController$AudioRecordRunnable;
.super Ljava/lang/Object;
.source "RecordController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/RecordController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioRecordRunnable"
.end annotation


# instance fields
.field private final audioRecord:Landroid/media/AudioRecord;

.field public volatile isInitialized:Z

.field private final mAudioData:[S

.field final synthetic this$0:Lco/vine/android/recorder/RecordController;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/RecordController;)V
    .locals 6
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    sget v0, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I

    new-array v0, v0, [S

    iput-object v0, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    .line 497
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    sget v5, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->audioRecord:Landroid/media/AudioRecord;

    .line 500
    const-string v0, "Buffer size {}."

    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/RecordController;Lco/vine/android/recorder/RecordController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;-><init>(Lco/vine/android/recorder/RecordController;)V

    return-void
.end method

.method private record(Ljava/nio/ShortBuffer;)V
    .locals 5
    .parameter "buffer"

    .prologue
    .line 515
    :try_start_0
    sget-object v2, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v2
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :try_start_1
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$100(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$100(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->isReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$100(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/Buffer;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record([Ljava/nio/Buffer;)V

    .line 518
    const-string v1, "Audio timestamp: {}."

    iget-object v3, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J
    invoke-static {v3}, Lco/vine/android/recorder/RecordController;->access$200(Lco/vine/android/recorder/RecordController;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    :cond_0
    monitor-exit v2

    .line 525
    :goto_0
    return-void

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 523
    const-string v1, "Audio error."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTimestamp()V
    .locals 5

    .prologue
    .line 504
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$100(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$100(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getTimestamp()J

    move-result-wide v0

    .line 506
    .local v0, newStamp:J
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J
    invoke-static {v2}, Lco/vine/android/recorder/RecordController;->access$200(Lco/vine/android/recorder/RecordController;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #setter for: Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J
    invoke-static {v2, v0, v1}, Lco/vine/android/recorder/RecordController;->access$202(Lco/vine/android/recorder/RecordController;J)J

    .line 508
    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    #setter for: Lco/vine/android/recorder/RecordController;->mAudioTimeRecorded:J
    invoke-static {v2, v3, v4}, Lco/vine/android/recorder/RecordController;->access$302(Lco/vine/android/recorder/RecordController;J)J

    .line 511
    .end local v0           #newStamp:J
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 529
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 530
    const-string v1, "audioRecord.startRecording()"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 531
    iput-boolean v5, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->isInitialized:Z

    .line 532
    :goto_0
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 534
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    goto :goto_0

    .line 538
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->isInitialized:Z

    .line 539
    const-string v1, "audioRecord.isInitialized."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 543
    :cond_1
    :goto_1
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$400(Lco/vine/android/recorder/RecordController;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$500(Lco/vine/android/recorder/RecordController;)J

    move-result-wide v1

    iget-object v3, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J
    invoke-static {v3}, Lco/vine/android/recorder/RecordController;->access$200(Lco/vine/android/recorder/RecordController;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 544
    :cond_2
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->updateTimestamp()V

    .line 545
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->audioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    iget-object v3, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    array-length v3, v3

    invoke-virtual {v1, v2, v5, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 546
    .local v0, bufferReadResult:I
    if-lez v0, :cond_1

    .line 547
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->isRecording:Z
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$600(Lco/vine/android/recorder/RecordController;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->recordingAudio:Z
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$700(Lco/vine/android/recorder/RecordController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 548
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    invoke-static {v1, v5, v0}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->record(Ljava/nio/ShortBuffer;)V

    goto :goto_1

    .line 550
    :cond_3
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J
    invoke-static {v1}, Lco/vine/android/recorder/RecordController;->access$500(Lco/vine/android/recorder/RecordController;)J

    move-result-wide v1

    iget-object v3, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->this$0:Lco/vine/android/recorder/RecordController;

    #getter for: Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J
    invoke-static {v3}, Lco/vine/android/recorder/RecordController;->access$200(Lco/vine/android/recorder/RecordController;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 551
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->mAudioData:[S

    invoke-static {v1, v5, v0}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->record(Ljava/nio/ShortBuffer;)V

    goto :goto_1

    .line 556
    .end local v0           #bufferReadResult:I
    :cond_4
    const-string v1, "AudioThread Finished, release mAudioRecord"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_5

    .line 559
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 560
    iget-object v1, p0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 561
    const-string v1, "mAudioRecord released"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 563
    :cond_5
    return-void
.end method
