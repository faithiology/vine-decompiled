.class Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;
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
    name = "ChangeProgressRunnable"
.end annotation


# instance fields
.field public progress:I

.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 747
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2800(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget v0, v0, Lco/vine/android/recorder/VineRecorder;->mParams:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1900(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2800(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/ProgressView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iput v0, v1, Lco/vine/android/recorder/VineRecorder;->mParams:I

    .line 751
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2800(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressView;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget v1, v1, Lco/vine/android/recorder/VineRecorder;->mParams:I

    iget v2, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->progress:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    iget-object v2, v2, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v2, v2, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    div-int/2addr v1, v2

    iput v1, v0, Lco/vine/android/recorder/ProgressView;->shouldBeWidth:I

    .line 752
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2800(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/ProgressView;->invalidate()V

    .line 754
    :cond_1
    return-void
.end method
