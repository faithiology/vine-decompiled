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
    .line 191
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    return-void
.end method

.method static synthetic access$1502(Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->isResumed:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const-string v2, "Stop recording in VineRecorder."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->endRelativeTime()Z
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$500(Lco/vine/android/recorder/VineRecorder;)Z

    .line 200
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v3, v3, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z

    invoke-virtual {v2, v3}, Lco/vine/android/recorder/RecordController;->stop(Z)V

    .line 201
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v2, v2, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z

    if-nez v2, :cond_0

    .line 202
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    .line 203
    .local v0, file:Lco/vine/android/recorder/RecordingFile;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getTimes()Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, times:Ljava/util/List;,"Ljava/util/List<Lco/vine/android/recorder/RelativeTime;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 206
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lco/vine/android/recorder/VineRecorder;->access$702(Lco/vine/android/recorder/VineRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->startHashTask()V
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$800(Lco/vine/android/recorder/VineRecorder;)V

    .line 221
    .end local v0           #file:Lco/vine/android/recorder/RecordingFile;
    .end local v1           #times:Ljava/util/List;,"Ljava/util/List<Lco/vine/android/recorder/RelativeTime;>;"
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v2}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->isResumed:Z

    if-nez v2, :cond_0

    .line 216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->isResumed:Z

    .line 217
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/ReusableHashAsyncTask;->resumeAll()V

    goto :goto_0
.end method
