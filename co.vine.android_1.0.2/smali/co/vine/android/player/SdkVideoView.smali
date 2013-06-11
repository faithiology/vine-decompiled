.class public Lco/vine/android/player/SdkVideoView;
.super Landroid/view/TextureView;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private attributes:Landroid/util/AttributeSet;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field public mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLooping:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPath:Ljava/lang/String;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/Surface;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private playingPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 69
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 70
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 277
    new-instance v0, Lco/vine/android/player/SdkVideoView$1;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 289
    new-instance v0, Lco/vine/android/player/SdkVideoView$2;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 337
    new-instance v0, Lco/vine/android/player/SdkVideoView$3;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$3;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 351
    new-instance v0, Lco/vine/android/player/SdkVideoView$4;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lco/vine/android/player/SdkVideoView$5;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 452
    new-instance v0, Lco/vine/android/player/SdkVideoView$6;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

    .line 83
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 69
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 70
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 277
    new-instance v0, Lco/vine/android/player/SdkVideoView$1;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 289
    new-instance v0, Lco/vine/android/player/SdkVideoView$2;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 337
    new-instance v0, Lco/vine/android/player/SdkVideoView$3;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$3;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 351
    new-instance v0, Lco/vine/android/player/SdkVideoView$4;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lco/vine/android/player/SdkVideoView$5;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 452
    new-instance v0, Lco/vine/android/player/SdkVideoView$6;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

    .line 88
    iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->attributes:Landroid/util/AttributeSet;

    .line 89
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 69
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 70
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 277
    new-instance v0, Lco/vine/android/player/SdkVideoView$1;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 289
    new-instance v0, Lco/vine/android/player/SdkVideoView$2;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 337
    new-instance v0, Lco/vine/android/player/SdkVideoView$3;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$3;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 351
    new-instance v0, Lco/vine/android/player/SdkVideoView$4;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lco/vine/android/player/SdkVideoView$5;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 452
    new-instance v0, Lco/vine/android/player/SdkVideoView$6;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

    .line 94
    iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->attributes:Landroid/util/AttributeSet;

    .line 95
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1002(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$102(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1102(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1200(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lco/vine/android/player/SdkVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1600(Lco/vine/android/player/SdkVideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1702(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1802(Lco/vine/android/player/SdkVideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1900(Lco/vine/android/player/SdkVideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2000(Lco/vine/android/player/SdkVideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lco/vine/android/player/SdkVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lco/vine/android/player/SdkVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$302(Lco/vine/android/player/SdkVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$402(Lco/vine/android/player/SdkVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$500(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$800(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$900(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$902(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I

    return p1
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 270
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 272
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 273
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 275
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 270
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;

    .line 152
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    .line 153
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    .line 154
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 155
    invoke-virtual {p0, v2}, Lco/vine/android/player/SdkVideoView;->setFocusable(Z)V

    .line 156
    invoke-virtual {p0, v2}, Lco/vine/android/player/SdkVideoView;->setFocusableInTouchMode(Z)V

    .line 157
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->requestFocus()Z

    .line 158
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 159
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 160
    return-void
.end method

.method private openVideo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 208
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;

    if-nez v2, :cond_1

    .line 209
    :cond_0
    sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    const-string v3, "Surface is not ready yet."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void

    .line 213
    :cond_1
    sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    const-string v3, "Opening video."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    invoke-direct {p0, v8}, Lco/vine/android/player/SdkVideoView;->release(Z)V

    .line 224
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 225
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 226
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 227
    const/4 v2, -0x1

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    .line 228
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 229
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 230
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 231
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 232
    const/4 v2, 0x0

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I

    .line 233
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lco/vine/android/player/SdkVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 234
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 235
    iget-boolean v2, p0, Lco/vine/android/player/SdkVideoView;->mLooping:Z

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 238
    :cond_2
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 239
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 240
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 243
    const/4 v2, 0x1

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 244
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->attachMediaController()V

    .line 245
    sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    const-string v3, "Successfully prepared the new MediaPlayer."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, ex:Ljava/io/IOException;
    sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    iput v6, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 249
    iput v6, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 250
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 251
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    iput v6, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 254
    iput v6, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 255
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 3
    .parameter "cleartargetstate"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 504
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 505
    iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 506
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 507
    iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    .line 508
    if-eqz p1, :cond_0

    .line 509
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 512
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisibility()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAttributes()Landroid/util/AttributeSet;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->attributes:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 655
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I

    .line 657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 624
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    .line 630
    :goto_0
    return v0

    .line 626
    :cond_0
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    .line 627
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    goto :goto_0

    .line 629
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    .line 630
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    goto :goto_0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingPosition()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->playingPosition:I

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 661
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 609
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 165
    const-class v0, Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 171
    const-class v0, Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 532
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 539
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 540
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 542
    :cond_0
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 543
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->pause()V

    .line 544
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 568
    :cond_1
    :goto_1
    return v1

    .line 532
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 546
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 547
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 550
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 551
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 553
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 556
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 558
    :cond_6
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->pause()V

    .line 560
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 564
    :cond_7
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V

    .line 568
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 100
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lco/vine/android/player/SdkVideoView;->getDefaultSize(II)I

    move-result v1

    .line 101
    .local v1, width:I
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lco/vine/android/player/SdkVideoView;->getDefaultSize(II)I

    move-result v0

    .line 102
    .local v0, height:I
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 103
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 104
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lco/vine/android/player/SdkVideoView;->setMeasuredDimension(II)V

    .line 110
    return-void

    .line 105
    :cond_1
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 106
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 516
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V

    .line 519
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 524
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V

    .line 527
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 591
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 594
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 597
    :cond_0
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 598
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 114
    move v0, p1

    .line 115
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 116
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 118
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 139
    :goto_0
    return v0

    .line 123
    :sswitch_0
    move v0, p1

    .line 124
    goto :goto_0

    .line 131
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    goto :goto_0

    .line 136
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 617
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 618
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 641
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0
    .parameter "looping"

    .prologue
    .line 613
    iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mLooping:Z

    .line 614
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 260
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 263
    :cond_0
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 264
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->attachMediaController()V

    .line 265
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 427
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 428
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 439
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 440
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 449
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 450
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 417
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 418
    return-void
.end method

.method public setPlayingPosition(I)V
    .locals 0
    .parameter "playingPosition"

    .prologue
    .line 147
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->playingPosition:I

    .line 148
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 175
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 177
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/vine/android/player/SdkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 185
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    .line 189
    iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->mHeaders:Ljava/util/Map;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I

    .line 191
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V

    .line 192
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->requestLayout()V

    .line 193
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->invalidate()V

    .line 194
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 580
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 583
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 585
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 587
    :cond_1
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 588
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 199
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 200
    iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 201
    iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    .line 202
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 203
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 205
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/player/SdkVideoView;->release(Z)V

    .line 602
    return-void
.end method
