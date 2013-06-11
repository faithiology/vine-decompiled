.class public Lco/vine/android/RecordingPreviewFragment;
.super Lco/vine/android/BaseFragment;
.source "RecordingPreviewFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;


# static fields
.field private static final AG_THUMBNAIL_PATH:Ljava/lang/String; = "pic_path"

.field private static final AG_UPLOAD_PATH:Ljava/lang/String; = "upload_path"

.field private static final AG_VIDEO_PATH:Ljava/lang/String; = "vid_path"

.field private static final POST_REQUEST:I = 0x7c6


# instance fields
.field private mThumbnailPath:Ljava/lang/String;

.field private mTimer:Lco/vine/android/player/SdkVideoTimer;

.field private mUploadPath:Ljava/lang/String;

.field private mVideoPath:Ljava/lang/String;

.field private mVideoPlayer:Lco/vine/android/player/SdkVideoView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/RecordingPreviewFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/RecordingPreviewFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/RecordingPreviewFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Lco/vine/android/recorder/RecordingFile;Ljava/lang/String;Ljava/lang/String;)Lco/vine/android/RecordingPreviewFragment;
    .locals 4
    .parameter "file"
    .parameter "uploadPath"
    .parameter "thumbnailPath"

    .prologue
    .line 82
    new-instance v1, Lco/vine/android/RecordingPreviewFragment;

    invoke-direct {v1}, Lco/vine/android/RecordingPreviewFragment;-><init>()V

    .line 83
    .local v1, fragment:Lco/vine/android/RecordingPreviewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "vid_path"

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "pic_path"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "upload_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Lco/vine/android/RecordingPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v1
.end method


# virtual methods
.method public getCurrentVideoView()Lco/vine/android/player/SdkVideoView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    const-string v2, "Preview: {}"

    iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "preview.mp4"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v1, previewFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, originalFile:Ljava/io/File;
    invoke-static {v0, v1}, Lco/vine/android/recorder/RecordConfigUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    .line 101
    const-string v2, "File changed to {}."

    iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "vid_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    .line 77
    const-string v1, "pic_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mThumbnailPath:Ljava/lang/String;

    .line 78
    const-string v1, "upload_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 107
    const v7, 0x7f030022

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    .line 108
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f090066

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 109
    .local v5, topMask:Landroid/view/View;
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f09006a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, bottomMask:Landroid/view/View;
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lco/vine/android/RecordingActivity;

    invoke-virtual {v7, v5, v0}, Lco/vine/android/RecordingActivity;->initMasks(Landroid/view/View;Landroid/view/View;)V

    .line 112
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 113
    .local v1, d:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 114
    .local v4, size:Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 116
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f090064

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lco/vine/android/player/SdkVideoView;

    iput-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    .line 117
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7, v10}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 118
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7, p0}, Lco/vine/android/player/SdkVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 119
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lco/vine/android/player/SdkVideoView;->setKeepScreenOn(Z)V

    .line 122
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7}, Lco/vine/android/player/SdkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 124
    .local v6, topMaskHeightPx:I
    iget v7, v4, Landroid/graphics/Point;->x:I

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 125
    iget v7, v4, Landroid/graphics/Point;->x:I

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 126
    invoke-virtual {v3, v10, v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 127
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7, v3}, Lco/vine/android/player/SdkVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7}, Lco/vine/android/player/SdkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f090063

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lco/vine/android/player/OnSingleVideoClickedListener;

    iget-object v9, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-direct {v8, v9}, Lco/vine/android/player/OnSingleVideoClickedListener;-><init>(Lco/vine/android/player/SdkVideoView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f09006e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 133
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    new-instance v7, Lco/vine/android/RecordingPreviewFragment$1;

    invoke-direct {v7, p0}, Lco/vine/android/RecordingPreviewFragment$1;-><init>(Lco/vine/android/RecordingPreviewFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v7, 0x7f08002f

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    .line 142
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    return-object v7
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onPause()V

    .line 48
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoTimer;->release()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 52
    :cond_0
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V

    .line 55
    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onResume()V

    .line 60
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoTimer;->release()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 64
    :cond_0
    new-instance v0, Lco/vine/android/player/SdkVideoTimer;

    invoke-direct {v0}, Lco/vine/android/player/SdkVideoTimer;-><init>()V

    iput-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 65
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0, p0}, Lco/vine/android/player/SdkVideoTimer;->start(Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;)V

    .line 67
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    iget v0, v0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 70
    :cond_1
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lco/vine/android/RecordingActivity;

    .line 149
    .local v2, ra:Lco/vine/android/RecordingActivity;
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/ProgressView;

    .line 150
    .local v1, progressView:Lco/vine/android/recorder/ProgressView;
    iget v0, v2, Lco/vine/android/RecordingActivity;->mProgressContainerWidth:I

    .line 152
    .local v0, progressFullWidth:I
    iget-wide v3, v2, Lco/vine/android/RecordingActivity;->mCurrentDuration:J

    long-to-int v3, v3

    mul-int/2addr v3, v0

    new-instance v4, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v4, v2}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    iget v4, v4, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    div-int/2addr v3, v4

    iput v3, v1, Lco/vine/android/recorder/ProgressView;->shouldBeWidth:I

    .line 153
    invoke-virtual {v1}, Lco/vine/android/recorder/ProgressView;->invalidate()V

    .line 155
    return-void
.end method
