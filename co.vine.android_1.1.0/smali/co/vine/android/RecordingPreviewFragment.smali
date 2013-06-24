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
    .line 72
    new-instance v1, Lco/vine/android/RecordingPreviewFragment;

    invoke-direct {v1}, Lco/vine/android/RecordingPreviewFragment;-><init>()V

    .line 73
    .local v1, fragment:Lco/vine/android/RecordingPreviewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "vid_path"

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordingFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "pic_path"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "upload_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v0}, Lco/vine/android/RecordingPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method


# virtual methods
.method public getCurrentVideoView()Lco/vine/android/player/SdkVideoView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    const-string v2, "Preview: {}"

    iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "preview.mp4"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v1, previewFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, originalFile:Ljava/io/File;
    invoke-static {v0, v1}, Lco/vine/android/recorder/RecordConfigUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    .line 91
    const-string v2, "File changed to {}."

    iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    iget-object v3, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "vid_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPath:Ljava/lang/String;

    .line 66
    const-string v1, "pic_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mThumbnailPath:Ljava/lang/String;

    .line 67
    const-string v1, "upload_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/RecordingPreviewFragment;->mUploadPath:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/recorder/RecordConfigUtils;->deletePreProcess(Ljava/io/File;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 97
    const v7, 0x7f030023

    invoke-virtual {p1, v7, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    .line 98
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f090073

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, topMask:Landroid/view/View;
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f090077

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, bottomMask:Landroid/view/View;
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lco/vine/android/RecordingActivity;

    invoke-virtual {v7, v5, v0}, Lco/vine/android/RecordingActivity;->initMasks(Landroid/view/View;Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 103
    .local v1, d:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 104
    .local v4, size:Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 106
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f090071

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lco/vine/android/player/SdkVideoView;

    iput-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    .line 107
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7, v10}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 108
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7, p0}, Lco/vine/android/player/SdkVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 109
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7, v9}, Lco/vine/android/player/SdkVideoView;->setKeepScreenOn(Z)V

    .line 112
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7}, Lco/vine/android/player/SdkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 114
    .local v6, topMaskHeightPx:I
    iget v7, v4, Landroid/graphics/Point;->x:I

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 115
    iget v7, v4, Landroid/graphics/Point;->x:I

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 116
    invoke-virtual {v3, v10, v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7, v3}, Lco/vine/android/player/SdkVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7}, Lco/vine/android/player/SdkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v7, v9}, Lco/vine/android/player/SdkVideoView;->setLooping(Z)V

    .line 121
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f090070

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lco/vine/android/player/OnSingleVideoClickedListener;

    iget-object v9, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-direct {v8, v9}, Lco/vine/android/player/OnSingleVideoClickedListener;-><init>(Lco/vine/android/player/SdkVideoView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    const v8, 0x7f09007b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 124
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    new-instance v7, Lco/vine/android/RecordingPreviewFragment$1;

    invoke-direct {v7, p0}, Lco/vine/android/RecordingPreviewFragment$1;-><init>(Lco/vine/android/RecordingPreviewFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v7, 0x7f07003b

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    .line 133
    iget-object v7, p0, Lco/vine/android/RecordingPreviewFragment;->mView:Landroid/view/View;

    return-object v7
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onPause()V

    .line 48
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V

    .line 51
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 151
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onResume()V

    .line 56
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    iget v0, v0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 59
    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lco/vine/android/RecordingActivity;

    .line 140
    .local v2, ra:Lco/vine/android/RecordingActivity;
    invoke-virtual {p0}, Lco/vine/android/RecordingPreviewFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090076

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/ProgressView;

    .line 141
    .local v1, progressView:Lco/vine/android/recorder/ProgressView;
    iget v0, v2, Lco/vine/android/RecordingActivity;->mProgressContainerWidth:I

    .line 143
    .local v0, progressFullWidth:I
    iget-wide v3, v2, Lco/vine/android/RecordingActivity;->mCurrentDuration:J

    long-to-int v3, v3

    mul-int/2addr v3, v0

    new-instance v4, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v4, v2}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    iget v4, v4, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    div-int/2addr v3, v4

    iput v3, v1, Lco/vine/android/recorder/ProgressView;->shouldBeWidth:I

    .line 144
    invoke-virtual {v1}, Lco/vine/android/recorder/ProgressView;->invalidate()V

    .line 146
    return-void
.end method
