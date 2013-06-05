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
    .line 648
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 648
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

    .line 662
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->wasProcessThreadRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    new-array v3, v6, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishLastSegmentString:Ljava/lang/CharSequence;
    invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$2200(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->publishProgress([Ljava/lang/Object;)V

    .line 665
    :try_start_0
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    new-array v3, v6, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialogMessage:Ljava/lang/CharSequence;
    invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$2300(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->publishProgress([Ljava/lang/Object;)V

    .line 673
    :cond_0
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2400(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressTimer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 674
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2400(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressTimer;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ProgressTimer;->release()V

    .line 675
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #setter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3, v2}, Lco/vine/android/recorder/VineRecorder;->access$2402(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/ProgressTimer;)Lco/vine/android/recorder/ProgressTimer;

    .line 677
    :cond_1
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 678
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFrontFacing:Z
    invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$2500(Lco/vine/android/recorder/VineRecorder;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/RecordController;->openDefaultCamera(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 679
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v4}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->getCameraProfile()Landroid/media/CamcorderProfile;

    move-result-object v4

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    #setter for: Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I
    invoke-static {v3, v4}, Lco/vine/android/recorder/VineRecorder;->access$1002(Lco/vine/android/recorder/VineRecorder;I)I

    .line 681
    :cond_2
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 682
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ReusableHashAsyncTask;->reset()V

    .line 684
    :cond_3
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    new-instance v4, Lco/vine/android/recorder/ProgressTimer;

    iget-object v5, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v6, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lco/vine/android/recorder/ProgressTimer;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/os/Handler;)V

    #setter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3, v4}, Lco/vine/android/recorder/VineRecorder;->access$2402(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/ProgressTimer;)Lco/vine/android/recorder/ProgressTimer;

    .line 685
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2400(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressTimer;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ProgressTimer;->start()V

    .line 698
    :goto_1
    return-object v2

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 668
    const-string v3, "Failed to finish last one."

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 687
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$2700(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 688
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 689
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 691
    :cond_5
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/ReusableHashAsyncTask;->getComputedFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 692
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/ReusableHashAsyncTask;->getComputedFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v2

    goto :goto_1

    .line 694
    :cond_6
    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->startHashTask()V
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1100(Lco/vine/android/recorder/VineRecorder;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
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
    .line 729
    if-eqz p1, :cond_0

    .line 730
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->resumeAll()V

    .line 732
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    :cond_1
    :goto_0
    return-void

    .line 735
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    check-cast p1, Lco/vine/android/recorder/RecordingFile;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->onPostExecute(Lco/vine/android/recorder/RecordingFile;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 703
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 706
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 707
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialogMessage:Ljava/lang/CharSequence;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2300(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 708
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 709
    new-instance v1, Lco/vine/android/recorder/VineRecorder$OnResumeTask$1;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$OnResumeTask$1;-><init>(Lco/vine/android/recorder/VineRecorder$OnResumeTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 719
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 725
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 652
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 656
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2100(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 658
    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->onProgressUpdate([Ljava/lang/CharSequence;)V

    return-void
.end method
