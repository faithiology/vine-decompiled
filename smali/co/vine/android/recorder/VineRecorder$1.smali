.class Lco/vine/android/recorder/VineRecorder$1;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$1;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$1;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$1;->this$0:Lco/vine/android/recorder/VineRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->stop(Ljava/lang/Runnable;)V

    .line 99
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$1;->this$0:Lco/vine/android/recorder/VineRecorder;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z
    invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$102(Lco/vine/android/recorder/VineRecorder;Z)Z

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$1;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$1;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
