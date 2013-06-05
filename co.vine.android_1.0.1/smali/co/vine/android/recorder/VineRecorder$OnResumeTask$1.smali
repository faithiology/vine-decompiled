.class Lco/vine/android/recorder/VineRecorder$OnResumeTask$1;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/VineRecorder$OnResumeTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/vine/android/recorder/VineRecorder$OnResumeTask;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder$OnResumeTask;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask$1;->this$1:Lco/vine/android/recorder/VineRecorder$OnResumeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialogInterface"

    .prologue
    .line 712
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask$1;->this$1:Lco/vine/android/recorder/VineRecorder$OnResumeTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->cancel(Z)Z

    .line 713
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$OnResumeTask$1;->this$1:Lco/vine/android/recorder/VineRecorder$OnResumeTask;

    iget-object v1, v1, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2700(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 714
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 717
    :cond_0
    return-void
.end method
