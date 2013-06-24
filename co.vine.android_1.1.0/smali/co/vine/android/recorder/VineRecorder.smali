.class public Lco/vine/android/recorder/VineRecorder;
.super Lco/vine/android/async/ManagedTask;
.source "VineRecorder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lco/vine/android/recorder/RecordController$OnRecorderControllerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;,
        Lco/vine/android/recorder/VineRecorder$OnResumeTask;,
        Lco/vine/android/recorder/VineRecorder$FinishProcessTask;,
        Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;
    }
.end annotation


# static fields
.field public static final PREFS_CAPTURE:Ljava/lang/String; = "capture"

.field public static final PREF_BOTTOM_MASK_HEIGHT:Ljava/lang/String; = "bottomMaskHeightPx"

.field private static final TOUCH_EDGE_BOUNDARY:F = 0.05f


# instance fields
.field public final config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

.field public volatile currentDuration:J

.field private currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

.field private currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

.field private final endRelativeTimeRunnable:Ljava/lang/Runnable;

.field public volatile finalFile:Lco/vine/android/recorder/RecordingFile;

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBlockNextClick:Z

.field private final mBottomMaskId:I

.field private mBottomMaskView:Landroid/view/View;

.field private final mCameraFailString:I

.field private mCameraSwitcher:Landroid/view/View;

.field private final mCameraSwitcherId:I

.field private final mCameraSwitcherViewListener:Landroid/view/View$OnClickListener;

.field private mCanKeepRecording:Z

.field private final mChangeProgressRunnable:Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;

.field private mCurrentFrameRate:I

.field private mCurrentStartTime:J

.field public volatile mDiscardChanges:Z

.field private final mFilesDir:Ljava/io/File;

.field private mFilesDuration:I

.field private mFinishButton:Landroid/widget/Button;

.field private final mFinishButtonId:I

.field private final mFinishClicker:Landroid/view/View$OnClickListener;

.field private mFinishLastSegmentString:Ljava/lang/CharSequence;

.field private final mFinishProcessRunnable:Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;

.field private mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

.field private mFinishProgressDialog:Landroid/app/ProgressDialog;

.field private final mFinishProgressDialogMessage:[Ljava/lang/CharSequence;

.field private mFlashSwitcher:Landroid/view/View;

.field private final mFlashSwitcherId:I

.field private mFrontFacing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

.field public volatile mOnCompleteConsumer:Ljava/lang/Runnable;

.field public mParams:I

.field private mPreviewView:Landroid/view/View;

.field private final mPreviewViewResourceId:I

.field private mProgressTimer:Lco/vine/android/recorder/ProgressTimer;

.field private mProgressView:Lco/vine/android/recorder/ProgressView;

.field private final mProgressViewResourceId:I

.field private mRecordingFileDuration:I

.field private mResumeTask:Lco/vine/android/recorder/VineRecorder$OnResumeTask;

.field private final mSize:Landroid/graphics/Point;

.field private mStartProgressDialog:Landroid/app/ProgressDialog;

.field private final mStartProgressDialogMessage:Ljava/lang/CharSequence;

.field private final mSwitchFlashViewListener:Landroid/view/View$OnClickListener;

.field private mThumbnailPath:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private final mTopMaskId:I

.field private mTopMaskView:Landroid/view/View;

.field private final mVideoController:Lco/vine/android/recorder/RecordController;

.field private final onStartRunnable:Ljava/lang/Runnable;


# direct methods
.method public varargs constructor <init>(Landroid/app/Activity;IIIIIIIII[Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "activity"
    .parameter "progressViewResourceId"
    .parameter "previewViewResourceId"
    .parameter "cameraSwitcher"
    .parameter "flashSwitcherId"
    .parameter "finishButtonId"
    .parameter "topMaskId"
    .parameter "bottomMaskId"
    .parameter "lastSegmentString"
    .parameter "cameraFailString"
    .parameter "messages"

    .prologue
    .line 136
    const-string v1, "Recorder task."

    invoke-direct {p0, v1}, Lco/vine/android/async/ManagedTask;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v1, Lco/vine/android/recorder/VineRecorder$1;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$1;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishClicker:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v1, Lco/vine/android/recorder/VineRecorder$2;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$2;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->onStartRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v1, Lco/vine/android/recorder/VineRecorder$3;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$3;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mSwitchFlashViewListener:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v1, Lco/vine/android/recorder/VineRecorder$4;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$4;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherViewListener:Landroid/view/View$OnClickListener;

    .line 393
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/recorder/VineRecorder;->mBlockNextClick:Z

    .line 395
    new-instance v1, Lco/vine/android/recorder/VineRecorder$6;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$6;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->endRelativeTimeRunnable:Ljava/lang/Runnable;

    .line 137
    const-string v1, "Created new Recorder."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    aget-object v1, p11, v1

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialogMessage:Ljava/lang/CharSequence;

    .line 139
    iput-object p11, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFilesDir:Ljava/io/File;

    .line 141
    new-instance v1, Lco/vine/android/recorder/RecordController;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/RecordController;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    .line 142
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;

    .line 143
    new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v1, p1}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z

    .line 145
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/vine/android/recorder/VineRecorder;->currentDuration:J

    .line 146
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lco/vine/android/recorder/VineRecorder;->mFrontFacing:Z

    .line 148
    new-instance v1, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;-><init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;

    .line 149
    new-instance v1, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;-><init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mChangeProgressRunnable:Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;

    .line 150
    invoke-virtual {p1, p9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishLastSegmentString:Ljava/lang/CharSequence;

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 152
    .local v0, d:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    .line 153
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 154
    iput p2, p0, Lco/vine/android/recorder/VineRecorder;->mProgressViewResourceId:I

    .line 155
    iput p3, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewViewResourceId:I

    .line 156
    iput p5, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcherId:I

    .line 157
    iput p4, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherId:I

    .line 158
    iput p6, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButtonId:I

    .line 159
    iput p7, p0, Lco/vine/android/recorder/VineRecorder;->mTopMaskId:I

    .line 160
    iput p8, p0, Lco/vine/android/recorder/VineRecorder;->mBottomMaskId:I

    .line 161
    iput p10, p0, Lco/vine/android/recorder/VineRecorder;->mCameraFailString:I

    .line 162
    return-void

    .line 147
    .end local v0           #d:Landroid/view/Display;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/recorder/VineRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z

    return v0
.end method

.method static synthetic access$102(Lco/vine/android/recorder/VineRecorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z

    return p1
.end method

.method static synthetic access$1100(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1200(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lco/vine/android/recorder/VineRecorder;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1400(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;

    return-object v0
.end method

.method static synthetic access$1600(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mBottomMaskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishLastSegmentString:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->startRecording()V

    return-void
.end method

.method static synthetic access$2000(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2100(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;

    return-object v0
.end method

.method static synthetic access$2102(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/ProgressTimer;)Lco/vine/android/recorder/ProgressTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;

    return-object p1
.end method

.method static synthetic access$2200(Lco/vine/android/recorder/VineRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mFrontFacing:Z

    return v0
.end method

.method static synthetic access$2300(Lco/vine/android/recorder/VineRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I

    return v0
.end method

.method static synthetic access$2302(Lco/vine/android/recorder/VineRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I

    return p1
.end method

.method static synthetic access$2400(Lco/vine/android/recorder/VineRecorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->showCameraFailedToast()V

    return-void
.end method

.method static synthetic access$2600(Lco/vine/android/recorder/VineRecorder;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2700(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ProgressView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;

    return-object v0
.end method

.method static synthetic access$500(Lco/vine/android/recorder/VineRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->endRelativeTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordingFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    return-object v0
.end method

.method static synthetic access$702(Lco/vine/android/recorder/VineRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->startHashTask()V

    return-void
.end method

.method static synthetic access$900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/ReusableHashAsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    return-object v0
.end method

.method private declared-synchronized endRelativeTime()Z
    .locals 5

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->offerLastFrame(Lco/vine/android/recorder/ConcurrentData$VideoData;)V

    .line 412
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/RelativeTime;->setEnd(J)V

    .line 413
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getTimes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFilesDuration:I

    int-to-long v0, v0

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    iget v3, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I

    invoke-virtual {v2, v3}, Lco/vine/android/recorder/RecordingFile;->getRecordedDuration(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingFileDuration:I

    .line 415
    const-string v0, "Added time entry from {} to {}."

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    iget-wide v1, v1, Lco/vine/android/recorder/RelativeTime;->start:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    invoke-virtual {v2}, Lco/vine/android/recorder/RelativeTime;->getEnd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    .line 417
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingFileDuration:I

    int-to-long v0, v0

    iput-wide v0, p0, Lco/vine/android/recorder/VineRecorder;->currentDuration:J

    .line 418
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->setRecording(Z)V

    .line 420
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mBlockNextClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showCameraFailedToast()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lco/vine/android/recorder/VineRecorder$5;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/VineRecorder$5;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method private showCameraSwitcher()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/View;

    .line 352
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_0
    return-void
.end method

.method private startHashTask()V
    .locals 4

    .prologue
    .line 666
    new-instance v0, Lco/vine/android/recorder/ReusableHashAsyncTask;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    .line 667
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lco/vine/android/recorder/RecordingFile;

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/ReusableHashAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 668
    return-void
.end method

.method private startRecording()V
    .locals 7

    .prologue
    .line 320
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 321
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 322
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isCameraReady()Z

    move-result v1

    .line 323
    .local v1, isCameraReady:Z
    if-nez v1, :cond_0

    .line 324
    const-string v2, "Start recording."

    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-boolean v3, p0, Lco/vine/android/recorder/VineRecorder;->mFrontFacing:Z

    invoke-virtual {v2, v3}, Lco/vine/android/recorder/RecordController;->openDefaultCamera(Z)Z

    move-result v1

    .line 327
    :cond_0
    if-eqz v1, :cond_3

    .line 328
    new-instance v2, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    invoke-direct {v2, p0}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;-><init>(Lco/vine/android/recorder/VineRecorder;)V

    iput-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    .line 329
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    if-nez v2, :cond_1

    .line 330
    new-instance v2, Lco/vine/android/recorder/RecordingFile;

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    const-string v4, "raw"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mp4"

    invoke-static {v3, v4, v5, v6}, Lco/vine/android/recorder/RecordConfigUtils;->getPreProcessFile(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lco/vine/android/recorder/RecordingFile;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    .line 332
    :cond_1
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lco/vine/android/recorder/RecordController;->start(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentStartTime:J

    .line 334
    const-string v2, "Start recording: {} at {}."

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .end local v1           #isCameraReady:Z
    :cond_2
    :goto_0
    return-void

    .line 336
    .restart local v1       #isCameraReady:Z
    :cond_3
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->showCameraFailedToast()V

    goto :goto_0
.end method

.method private startRelativeTime()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 380
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isCameraReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->endRelativeTime()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    new-instance v0, Lco/vine/android/recorder/RelativeTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentStartTime:J

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lco/vine/android/recorder/RelativeTime;-><init>(J)V

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    .line 387
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingFileDuration:I

    int-to-long v0, v0

    iget-wide v2, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentStartTime:J

    iget-object v4, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    iget-wide v4, v4, Lco/vine/android/recorder/RelativeTime;->start:J

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/recorder/VineRecorder;->currentDuration:J

    .line 388
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0, v6}, Lco/vine/android/recorder/RecordController;->setRecordingAudio(Z)V

    .line 389
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0, v6}, Lco/vine/android/recorder/RecordController;->setRecording(Z)V

    goto :goto_0
.end method


# virtual methods
.method public canKeepRecording()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSwitchCamera()Z
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile()Lco/vine/android/recorder/RecordingFile;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFilesDir:Ljava/io/File;

    return-object v0
.end method

.method public getPreviewView()Landroid/view/View;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public modifyZoom(Z)V
    .locals 1
    .parameter "zoomIn"

    .prologue
    .line 178
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->modifyZoom(Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public onCameraReady(Lco/vine/android/recorder/RecordController;)V
    .locals 20
    .parameter "controller"

    .prologue
    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 607
    .local v3, activity:Landroid/app/Activity;
    if-eqz v3, :cond_0

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;

    move-object/from16 v16, v0

    .line 610
    .local v16, view:Landroid/view/View;
    if-eqz v16, :cond_2

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordController;->isFlashSupported()Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 614
    .end local v16           #view:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordController;->isSurfaceReady()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v17

    if-nez v17, :cond_4

    .line 615
    const-string v17, "Start recording on camera ready."

    invoke-static/range {v17 .. v17}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 616
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->start(Z)V

    .line 619
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v10, v0

    .line 620
    .local v10, previewWidth:F
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v8, v0

    .line 621
    .local v8, previewHeight:F
    div-float v4, v10, v8

    .line 623
    .local v4, aspectRatio:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v4

    move/from16 v0, v17

    float-to-int v12, v0

    .line 626
    .local v12, surfaceViewHeightPx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mTopMaskView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 627
    .local v15, topMaskHeightPx:I
    div-int/lit8 v13, v12, 0x2

    .line 628
    .local v13, surfaceViewMidpoint:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    add-int v7, v17, v15

    .line 629
    .local v7, midpointYOffset:I
    sub-int v14, v7, v13

    .line 631
    .local v14, surfaceViewYPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 633
    .local v9, previewViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 634
    iput v12, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 635
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v9, v0, v14, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 640
    .local v5, bottomMaskHeightPx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mBottomMaskView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 642
    .local v6, bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 643
    const-string v17, "capture"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 644
    .local v11, sp:Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "bottomMaskHeightPx"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 646
    new-instance v17, Lco/vine/android/recorder/VineRecorder$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v6}, Lco/vine/android/recorder/VineRecorder$7;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 611
    .end local v4           #aspectRatio:F
    .end local v5           #bottomMaskHeightPx:I
    .end local v6           #bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #midpointYOffset:I
    .end local v8           #previewHeight:F
    .end local v9           #previewViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10           #previewWidth:F
    .end local v11           #sp:Landroid/content/SharedPreferences;
    .end local v12           #surfaceViewHeightPx:I
    .end local v13           #surfaceViewMidpoint:I
    .end local v14           #surfaceViewYPos:I
    .end local v15           #topMaskHeightPx:I
    .restart local v16       #view:Landroid/view/View;
    :cond_3
    const/16 v17, 0x8

    goto/16 :goto_1

    .line 660
    .end local v16           #view:Landroid/view/View;
    :cond_4
    const-string v17, "Do not start recording: {} {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lco/vine/android/recorder/RecordController;->isSurfaceReady()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/VineRecorder$OnResumeTask;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/VineRecorder$OnResumeTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->cancel(Z)Z

    .line 266
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->stop()V

    .line 267
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->onPause()V

    .line 268
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/ReusableHashAsyncTask;->cancel(Z)Z

    .line 271
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;

    invoke-virtual {v0}, Lco/vine/android/recorder/ProgressTimer;->release()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;

    .line 275
    :cond_2
    return-void
.end method

.method public onProgressMaxReached()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishClicker:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 577
    return-void
.end method

.method public onProgressThresholdReached()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/widget/Button;

    .line 581
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 582
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    :try_start_0
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 238
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Lco/vine/android/recorder/RecordController;->switchSurface(Landroid/view/TextureView;)V

    .line 240
    :cond_0
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 241
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Lco/vine/android/recorder/RecordController;->switchSurface(Landroid/view/SurfaceView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_1
    :goto_0
    new-instance v1, Lco/vine/android/recorder/VineRecorder$OnResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;-><init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V

    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/VineRecorder$OnResumeTask;

    .line 248
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mResumeTask:Lco/vine/android/recorder/VineRecorder$OnResumeTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/VineRecorder$OnResumeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    :cond_2
    :goto_1
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 245
    const-string v1, "Can\'t resume."

    invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;

    if-eqz v1, :cond_4

    .line 251
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 253
    :cond_4
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFinishLastSegmentString:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1
.end method

.method public onSurfaceReady(Lco/vine/android/recorder/RecordController;)V
    .locals 3
    .parameter "controller"

    .prologue
    .line 592
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isCameraReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    const-string v0, "Start recording on surface ready."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->start(Z)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    const-string v0, "Do not start recording: {} {}."

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v1}, Lco/vine/android/recorder/RecordController;->isCameraReady()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder;->mBlockNextClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 376
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 362
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 363
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 366
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 367
    .local v1, axisX:F
    const v2, 0x3d4ccccd

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const v2, 0x3f733333

    iget-object v3, p0, Lco/vine/android/recorder/VineRecorder;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 369
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->startRelativeTime()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 359
    .end local v0           #action:I
    .end local v1           #axisX:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 373
    .restart local v0       #action:I
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->endRelativeTime()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUiPaused()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;

    .line 554
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 557
    :cond_0
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    .line 558
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 561
    :cond_1
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    .line 562
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    .line 563
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;

    .line 564
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/View;

    .line 565
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/widget/Button;

    .line 566
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;

    .line 567
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    .line 568
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mTopMaskView:Landroid/view/View;

    .line 569
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mBottomMaskView:Landroid/view/View;

    .line 570
    iput-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mToast:Landroid/widget/Toast;

    .line 571
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->onPause()V

    .line 572
    return-void
.end method

.method public onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 8
    .parameter "activity"
    .parameter "onCompleteAsyncTask"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mActivity:Ljava/lang/ref/WeakReference;

    .line 503
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    .line 504
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 506
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 507
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 508
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 509
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lco/vine/android/player/R$drawable;->progress_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;

    .line 511
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->setRotation(I)V

    .line 513
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewViewResourceId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    .line 514
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mTopMaskId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mTopMaskView:Landroid/view/View;

    .line 516
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mBottomMaskId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mBottomMaskView:Landroid/view/View;

    .line 517
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressViewResourceId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/ProgressView;

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;

    .line 518
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 519
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mProgressView:Lco/vine/android/recorder/ProgressView;

    invoke-virtual {v0, v4}, Lco/vine/android/recorder/ProgressView;->setKeepScreenOn(Z)V

    .line 520
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButtonId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/widget/Button;

    .line 521
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishButton:Landroid/widget/Button;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherId:I

    if-lez v0, :cond_2

    .line 523
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/View;

    .line 524
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->cameraSwitchEnabled:Z

    if-nez v0, :cond_1

    .line 525
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 532
    :goto_0
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcherId:I

    if-lez v0, :cond_4

    .line 533
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcherId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;

    .line 534
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mSwitchFlashViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    :goto_1
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->canSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->showCameraSwitcher()V

    .line 546
    :cond_0
    iput-object p2, p0, Lco/vine/android/recorder/VineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;

    .line 547
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;

    #setter for: Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->isResumed:Z
    invoke-static {v0, v3}, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->access$1502(Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;Z)Z

    .line 548
    iget v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraFailString:I

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mToast:Landroid/widget/Toast;

    .line 549
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->onResume()V

    .line 550
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/View;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcherViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 530
    :cond_2
    iput-object v7, p0, Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/View;

    goto :goto_0

    .line 538
    :cond_3
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 541
    :cond_4
    iput-object v7, p0, Lco/vine/android/recorder/VineRecorder;->mFlashSwitcher:Landroid/view/View;

    goto :goto_1
.end method

.method public declared-synchronized onVideoSampleRecorded()V
    .locals 0

    .prologue
    .line 175
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public postProgressUpdate(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 799
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mChangeProgressRunnable:Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;

    iput p1, v0, Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;->progress:I

    .line 800
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mChangeProgressRunnable:Lco/vine/android/recorder/VineRecorder$ChangeProgressRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->releaseCanera()V

    .line 189
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 225
    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRelativeTime:Lco/vine/android/recorder/RelativeTime;

    .line 226
    iput-object v0, p0, Lco/vine/android/recorder/VineRecorder;->currentRecordingFile:Lco/vine/android/recorder/RecordingFile;

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/recorder/VineRecorder;->currentDuration:J

    .line 228
    iput v2, p0, Lco/vine/android/recorder/VineRecorder;->mRecordingFileDuration:I

    .line 229
    iput v2, p0, Lco/vine/android/recorder/VineRecorder;->mFilesDuration:I

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->start(Z)V

    .line 231
    return-void
.end method

.method public setDiscardChanges(Z)V
    .locals 0
    .parameter "mDiscardChanges"

    .prologue
    .line 305
    iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z

    .line 306
    return-void
.end method

.method public start(Z)V
    .locals 2
    .parameter "stopPrevious"

    .prologue
    .line 309
    iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mCanKeepRecording:Z

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot start recording again if it is finished."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 313
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->onStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->stop(Ljava/lang/Runnable;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->onStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder$FinishProcessRunnable;->run()V

    .line 426
    return-void
.end method

.method public stop(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "onComplete"

    .prologue
    .line 429
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;

    .line 430
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 432
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    invoke-virtual {v1, p1}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->setOnComplete(Ljava/lang/Runnable;)V

    .line 433
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-object v2, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/RecordController;->setFinishProcessTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V

    .line 434
    iget-object v1, p0, Lco/vine/android/recorder/VineRecorder;->mFinishProcessTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    const-string v1, "Stop twice? wtf."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCamera(Z)V
    .locals 1
    .parameter "facing"

    .prologue
    .line 286
    const-string v0, "Switch Camera"

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->openDefaultCamera(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iput-boolean p1, p0, Lco/vine/android/recorder/VineRecorder;->mFrontFacing:Z

    .line 289
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    iput v0, p0, Lco/vine/android/recorder/VineRecorder;->mCurrentFrameRate:I

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->start(Z)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lco/vine/android/recorder/VineRecorder;->showCameraFailedToast()V

    goto :goto_0
.end method

.method public switchFlash()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->switchFlash()V

    .line 171
    return-void
.end method

.method public switchToAnotherCamera()V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lco/vine/android/recorder/VineRecorder;->canSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-boolean v0, p0, Lco/vine/android/recorder/VineRecorder;->mFrontFacing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineRecorder;->switchCamera(Z)V

    .line 302
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can not switch camera after recording has started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
