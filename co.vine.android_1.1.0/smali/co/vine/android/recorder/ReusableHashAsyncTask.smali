.class public Lco/vine/android/recorder/ReusableHashAsyncTask;
.super Lco/vine/android/recorder/HashAsyncTask;
.source "ReusableHashAsyncTask.java"


# instance fields
.field private isCompleted:Z

.field private final mCanKeepRecording:Z

.field private mComputedFile:Lco/vine/android/recorder/RecordingFile;

.field private final mRecorder:Lco/vine/android/recorder/VineRecorder;

.field private startingException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/recorder/HashAsyncTask;-><init>(Lco/vine/android/recorder/RecordCompleteConsumer;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    .line 23
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->startingException:Ljava/lang/Exception;

    .line 24
    iput-object p1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    .line 25
    iget-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
    .locals 3
    .parameter "params"

    .prologue
    .line 30
    iget-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-super {p0, p1}, Lco/vine/android/recorder/HashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lco/vine/android/recorder/RecordingFile;

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v2}, Lco/vine/android/recorder/VineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-super {p0, v0}, Lco/vine/android/recorder/HashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, [Lco/vine/android/recorder/RecordingFile;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/ReusableHashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    return-object v0
.end method

.method public getComputedFile()Lco/vine/android/recorder/RecordingFile;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mComputedFile:Lco/vine/android/recorder/RecordingFile;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    return v0
.end method

.method public onComplete(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordCompleteConsumer;)V
    .locals 1
    .parameter "recordingFile"
    .parameter "parent"

    .prologue
    .line 49
    iget-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iput-object p1, v0, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;

    .line 53
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iput-object p1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mComputedFile:Lco/vine/android/recorder/RecordingFile;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->run()V

    goto :goto_0
.end method

.method public onError(Lco/vine/android/recorder/RecordingFile;Ljava/lang/Exception;Lco/vine/android/recorder/RecordCompleteConsumer;)V
    .locals 2
    .parameter "recordingFile"
    .parameter "e"
    .parameter "parent"

    .prologue
    .line 39
    invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "Pre-post processing error."

    invoke-static {v0, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const-string v0, "Pre-post was started here."

    iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->startingException:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    .line 83
    return-void
.end method

.method public resumeAll()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    .line 73
    .local v0, onCompleteRunner:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    if-nez v1, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->run()V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    .line 63
    .local v0, onCompleteRunner:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    if-nez v1, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    goto :goto_0
.end method
