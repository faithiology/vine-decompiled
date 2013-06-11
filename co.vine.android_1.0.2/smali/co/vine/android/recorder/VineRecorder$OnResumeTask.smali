.class Lco/vine/android/recorder/VineRecorder$OnResumeTask;
.super Landroid/os/AsyncTask;
.source "VineRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnResumeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/CharSequence;",
        "Lco/vine/android/recorder/RecordingFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lco/vine/android/recorder/RecordingFile;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 694
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->wasProcessThreadRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    new-array v3, v6, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishLastSegmentString:Ljava/lang/CharSequence;
    invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$2300(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->publishProgress([Ljava/lang/Object;)V

    .line 697
    :try_start_0
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    new-array v3, v6, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialogMessage:Ljava/lang/CharSequence;
    invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$2400(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->publishProgress([Ljava/lang/Object;)V

    .line 705
    :cond_0
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2500(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressTimer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 706
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2500(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressTimer;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ProgressTimer;->release()V

    .line 707
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #setter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3, v2}, Lco/vine/android/recorder/VineRecorder;->access$2502(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/ProgressTimer;)Lco/vine/android/recorder/ProgressTimer;

    .line 709
    :cond_1
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 710
    const-string v3, "Async open camera"

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 711
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFrontFacing:Z
    invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/RecordController;->openDefaultCamera(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 712
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v4

    iget-object v4, v4, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v4, v4, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    #setter for: Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I
    invoke-static {v3, v4}, Lco/vine/android/recorder/VineRecorder;->access$1002(Lco/vine/android/recorder/VineRecorder;I)I

    .line 713
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 714
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ReusableHashAsyncTask;->reset()V

    .line 716
    :cond_2
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    new-instance v4, Lco/vine/android/recorder/ProgressTimer;

    iget-object v5, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v6, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lco/vine/android/recorder/VineRecorder;->access$2700(Lco/vine/android/recorder/VineRecorder;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lco/vine/android/recorder/ProgressTimer;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/os/Handler;)V

    #setter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3, v4}, Lco/vine/android/recorder/VineRecorder;->access$2502(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/ProgressTimer;)Lco/vine/android/recorder/ProgressTimer;

    .line 717
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2500(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressTimer;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ProgressTimer;->start()V

    .line 735
    :cond_3
    :goto_1
    return-object v2

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 700
    const-string v3, "Failed to finish last one."

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 719
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 720
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->showCameraFailedToast()V
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2800(Lco/vine/android/recorder/VineRecorder;)V

    goto :goto_1

    .line 724
    :cond_5
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2900(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 725
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 726
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 728
    :cond_6
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ReusableHashAsyncTask;->getComputedFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 729
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/ReusableHashAsyncTask;->getComputedFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v2

    goto :goto_1

    .line 731
    :cond_7
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->startHashTask()V
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1100(Lco/vine/android/recorder/VineRecorder;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->doInBackground([Ljava/lang/Void;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lco/vine/android/recorder/RecordingFile;)V
    .locals 1
    .parameter "needHashTask"

    .prologue
    .line 766
    if-eqz p1, :cond_0

    .line 767
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->resumeAll()V

    .line 769
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    :cond_1
    :goto_0
    return-void

    .line 772
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, Lco/vine/android/recorder/RecordingFile;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->onPostExecute(Lco/vine/android/recorder/RecordingFile;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 740
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 742
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 743
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialogMessage:Ljava/lang/CharSequence;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2400(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 745
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 746
    new-instance v1, Lco/vine/android/recorder/VineRecorder$OnResumeTask$1;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$OnResumeTask$1;-><init>(Lco/vine/android/recorder/VineRecorder$OnResumeTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 756
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 762
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 684
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 688
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 690
    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 680
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->onProgressUpdate([Ljava/lang/CharSequence;)V

    return-void
.end method
