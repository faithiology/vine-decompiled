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
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x0

    .line 30
    iget-boolean v9, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    if-eqz v9, :cond_0

    .line 31
    invoke-super {p0, p1}, Lco/vine/android/recorder/HashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v9

    .line 54
    :goto_0
    return-object v9

    .line 33
    :cond_0
    iget-object v9, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v9}, Lco/vine/android/recorder/VineRecorder;->getFiles()Ljava/util/ArrayList;

    move-result-object v2

    .line 34
    .local v2, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/recorder/RecordingFile;>;"
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/recorder/RecordingFile;

    .line 35
    .local v3, firstFile:Lco/vine/android/recorder/RecordingFile;
    iget-object v9, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v9}, Lco/vine/android/recorder/VineRecorder;->getProcessor()Lco/vine/android/recorder/VineProcessor;

    move-result-object v7

    .line 36
    .local v7, processor:Lco/vine/android/recorder/VineProcessor;
    new-instance v0, Lco/vine/android/recorder/RecordingFile;

    iget-object v9, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v9}, Lco/vine/android/recorder/VineRecorder;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordingFile;->getCreateTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "processed"

    const-string v12, "mp4"

    invoke-static {v9, v10, v11, v12}, Lco/vine/android/recorder/RecordConfigUtils;->getPreProcessFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lco/vine/android/recorder/RecordingFile;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, combinedFile:Lco/vine/android/recorder/RecordingFile;
    invoke-virtual {v3}, Lco/vine/android/recorder/RecordingFile;->getCreateTime()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lco/vine/android/recorder/RecordingFile;->setCreateTime(J)V

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v6, outputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/RecordingFile;

    .line 43
    .local v1, file:Lco/vine/android/recorder/RecordingFile;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ts"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, output:Ljava/lang/String;
    invoke-virtual {v1}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Lco/vine/android/recorder/VineProcessor;->toTs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 45
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    :cond_1
    const-string v9, "Error converting to ts."

    invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    .end local v1           #file:Lco/vine/android/recorder/RecordingFile;
    .end local v5           #output:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->getMetadata()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v7, v6, v9, v10}, Lco/vine/android/recorder/VineProcessor;->concat(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v8

    .line 51
    .local v8, result:I
    if-eqz v8, :cond_3

    .line 52
    const-string v9, "Failed to combine files."

    invoke-static {v9}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    .line 54
    :cond_3
    const/4 v9, 0x1

    new-array v9, v9, [Lco/vine/android/recorder/RecordingFile;

    aput-object v0, v9, v13

    invoke-super {p0, v9}, Lco/vine/android/recorder/HashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v9

    goto/16 :goto_0
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
    .line 112
    iget-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mComputedFile:Lco/vine/android/recorder/RecordingFile;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    return v0
.end method

.method public onComplete(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordCompleteConsumer;)V
    .locals 1
    .parameter "recordingFile"
    .parameter "parent"

    .prologue
    .line 70
    iget-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iput-object p1, v0, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;

    .line 74
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iput-object p1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mComputedFile:Lco/vine/android/recorder/RecordingFile;

    .line 79
    :goto_0
    return-void

    .line 77
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
    .line 60
    invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "Pre-post processing error."

    invoke-static {v0, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const-string v0, "Pre-post was started here."

    iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->startingException:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    .line 104
    return-void
.end method

.method public resumeAll()V
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    .line 94
    .local v0, onCompleteRunner:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    if-nez v1, :cond_0

    .line 95
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->run()V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    .line 84
    .local v0, onCompleteRunner:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z

    if-nez v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCompleted:Z

    goto :goto_0
.end method
