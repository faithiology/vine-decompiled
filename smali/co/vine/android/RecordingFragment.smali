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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/RecordingFragment;)Lco/vine/android/recorder/VineRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/RecordingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lco/vine/android/RecordingFragment;->notifyActivity()V

    return-void
.end method

.method private notifyActivity()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/RecordingActivity;

    iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/VineRecorder;->getPreviewView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lco/vine/android/RecordingActivity;->mProgressContainerWidth:I

    .line 56
    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/RecordingActivity;

    iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-wide v1, v1, Lco/vine/android/recorder/VineRecorder;->currentDuration:J

    iput-wide v1, v0, Lco/vine/android/RecordingActivity;->mCurrentDuration:J

    .line 57
    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/RecordingActivity;

    iget-object v1, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    iget-object v1, v1, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;

    iget-object v2, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v2}, Lco/vine/android/recorder/VineRecorder;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/RecordingActivity;->toPreview(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public isProgressDirty()Z
    .locals 4

    .prologue
    .line 63
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
    .line 82
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/VineRecorder;->modifyZoom(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090076

    const v3, 0x7f090072

    const v4, 0x7f090078

    const v5, 0x7f090079

    const v6, 0x7f09007b

    const v7, 0x7f090073

    const v8, 0x7f090077

    const v9, 0x7f070097

    const v10, 0x7f070096

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const v13, 0x7f070095

    invoke-virtual {p0, v13}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const v13, 0x7f070098

    invoke-virtual {p0, v13}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const v13, 0x7f070099

    invoke-virtual {p0, v13}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const v13, 0x7f07009a

    invoke-virtual {p0, v13}, Lco/vine/android/RecordingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct/range {v0 .. v11}, Lco/vine/android/recorder/VineRecorder;-><init>(Landroid/app/Activity;IIIIIIIII[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 68
    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, view:Landroid/view/View;
    const v3, 0x7f090073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, topMask:Landroid/view/View;
    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, bottomMask:Landroid/view/View;
    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lco/vine/android/RecordingActivity;

    invoke-virtual {v3, v1, v0}, Lco/vine/android/RecordingActivity;->initMasks(Landroid/view/View;Landroid/view/View;)V

    .line 72
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onDestroy()V

    .line 36
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->release()V

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onPause()V

    .line 24
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onUiPaused()V

    .line 25
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 29
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onResume()V

    .line 30
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {p0}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lco/vine/android/RecordingFragment$OnRecordingFinishRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public setDiscardChangesOnStop()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lco/vine/android/RecordingFragment;->mRecorder:Lco/vine/android/recorder/VineRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->setDiscardChanges(Z)V

    .line 79
    :cond_0
    return-void
.end method
