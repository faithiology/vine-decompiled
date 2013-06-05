.class Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishProcessRunnable"
.end annotation


# instance fields
.field private isResumed:Z

.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    return-void
.end method

.method static synthetic access$1802(Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->isResumed:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const-string v0, "Stop recording in VineRecorder."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->endRelativeTime()Z
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$500(Lco/vine/android/recorder/VineRecorder;)Z

    .line 198
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v1, v1, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->stop(Z)V

    .line 199
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v0, v0, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getTimes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$700(Lco/vine/android/recorder/VineRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$802(Lco/vine/android/recorder/VineRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$700(Lco/vine/android/recorder/VineRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$1000(Lco/vine/android/recorder/VineRecorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/RecordingFile;->getRecordedDuration(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->access$914(Lco/vine/android/recorder/VineRecorder;J)I

    .line 206
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->startHashTask()V
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1100(Lco/vine/android/recorder/VineRecorder;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;
    invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$602(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;

    .line 210
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFilesDuration:I
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$900(Lco/vine/android/recorder/VineRecorder;)I

    move-result v1

    #setter for: Lco/vine/android/recorder/VineRecorder;->mRecordingFileDuration:I
    invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$1202(Lco/vine/android/recorder/VineRecorder;I)I

    .line 219
    :cond_2
    :goto_0
    return-void

    .line 212
    :cond_3
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->isResumed:Z

    if-nez v0, :cond_2

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->isResumed:Z

    .line 215
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->resumeAll()V

    goto :goto_0
.end method
