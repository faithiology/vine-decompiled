.class public Lco/vine/android/recorder/VineRecorder$FinishProcessTask;
.super Landroid/os/AsyncTask;
.source "VineRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinishProcessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentMessage:I

.field private mWaitStartTime:J

.field private onComplete:Ljava/lang/Runnable;

.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 423
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 474
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1700(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->run()V

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 423
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .parameter "aVoid"

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 462
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1500(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 463
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 466
    :cond_0
    const-string v1, "Waited for {} ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->mWaitStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->onComplete:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->onComplete:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 470
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 431
    const/4 v0, 0x1

    iput v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->mCurrentMessage:I

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->mWaitStartTime:J

    .line 433
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 437
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1500(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 438
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_2

    .line 439
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1600(Lco/vine/android/recorder/VineRecorder;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1600(Lco/vine/android/recorder/VineRecorder;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 440
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$1600(Lco/vine/android/recorder/VineRecorder;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v2, v3

    iget v3, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->mCurrentMessage:I

    mul-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    .line 441
    iget v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->mCurrentMessage:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$1600(Lco/vine/android/recorder/VineRecorder;)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 442
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1600(Lco/vine/android/recorder/VineRecorder;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->mCurrentMessage:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 444
    :cond_0
    iget v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->mCurrentMessage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->mCurrentMessage:I

    .line 447
    :cond_1
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 449
    :cond_2
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 423
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public publish(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 452
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publishProgress([Ljava/lang/Object;)V

    .line 453
    return-void
.end method

.method public setOnComplete(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 456
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->onComplete:Ljava/lang/Runnable;

    .line 457
    return-void
.end method
