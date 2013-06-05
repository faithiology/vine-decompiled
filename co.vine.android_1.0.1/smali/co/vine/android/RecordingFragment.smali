.class public Lco/vine/android/RecordingFragment;
.super Lco/vine/android/BaseFragment;
.source "RecordingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;
    }
.end annotation


# instance fields
.field private mRecorder:Lco/vine/android/recorder/VineRecorder;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/RecordingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lco/vine/android/RecordingFragment;->notifyActivity()V

    return-void
.end method

.method private notifyActivity()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/RecordingActivity;

    iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-object v1, v1, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;

    iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v2}, Lco/vine/android/recorder/VineRecorder;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/RecordingActivity;->toPreview(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public isProgressDirty()Z
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-wide v0, v0, Lco/vine/android/recorder/VineRecorder;->currentDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyZoom(Z)V
    .locals 1
    .parameter "zoomIn"

    .prologue
    .line 70
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/VineRecorder;->modifyZoom(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090069

    const v3, 0x7f090065

    const v4, 0x7f09006b

    const v5, 0x7f09006c

    const v6, 0x7f09006e

    const v7, 0x7f090066

    const v8, 0x7f09006a

    const v9, 0x7f080083

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const v12, 0x7f080082

    invoke-virtual {p0, v12}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f080084

    invoke-virtual {p0, v12}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const v12, 0x7f080085

    invoke-virtual {p0, v12}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const v12, 0x7f080086

    invoke-virtual {p0, v12}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct/range {v0 .. v10}, Lco/vine/android/recorder/VineRecorder;-><init>(Landroid/app/Activity;IIIIIIII[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/RecordingFragment;->mView:Landroid/view/View;

    .line 59
    iget-object v2, p0, Lco/vine/android/RecordingFragment;->mView:Landroid/view/View;

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, topMask:Landroid/view/View;
    iget-object v2, p0, Lco/vine/android/RecordingFragment;->mView:Landroid/view/View;

    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, bottomMask:Landroid/view/View;
    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lco/vine/android/RecordingActivity;

    invoke-virtual {v2, v1, v0}, Lco/vine/android/RecordingActivity;->initMasks(Landroid/view/View;Landroid/view/View;)V

    .line 62
    iget-object v2, p0, Lco/vine/android/RecordingFragment;->mView:Landroid/view/View;

    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onPause()V

    .line 23
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onUiPaused()V

    .line 24
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onResume()V

    .line 29
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public setDiscardChangesOnStop()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->setDiscardChanges(Z)V

    .line 67
    return-void
.end method
