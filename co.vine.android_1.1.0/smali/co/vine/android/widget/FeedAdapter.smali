.class public Lco/vine/android/widget/FeedAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "FeedAdapter.java"

# interfaces
.implements Lco/vine/android/player/HasVideoPlayerAdapter;
.implements Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    }
.end annotation


# static fields
.field private static final COMMA:C = ','

.field private static final COMMENT_TYPE_FEW:I = 0x1

.field private static final COMMENT_TYPE_MANY:I = 0x2

.field private static final HQ_THRESHOLD:I = 0xc8

.field private static final LIKE_TYPE_MANY:I = 0x3

.field private static final LIKE_TYPE_MULTIPLE:I = 0x2

.field private static final LIKE_TYPE_SINGLE:I = 0x1

.field public static final MANY_LIKES_SPAN:I = 0x2

.field private static final MAX_COMMENT_ITEMS:I = 0x5

.field private static final MAX_LIKE_ITEMS:I = 0xa

.field private static final MAX_VIDEO_DIMEN:I = 0x1e0

.field private static final NEWLINE:C = '\n'

.field public static final OLDER_COMMENTS_SPAN:I = 0x3

.field private static final RES_LAYOUT:I = 0x7f03001d

.field private static final RES_VIDEO_CONTAINER:I = 0x7f09003b

.field private static final RES_VIDEO_VIEW_ID:I = 0x7f09003e

.field private static final SPACE:C = ' '

.field private static final SPAN_FLAGS:I = 0x21

.field public static final TAG_SPAN:I = 0x4

.field public static final USERNAME_SPAN:I = 0x1


# instance fields
.field private currentPlayerCount:I

.field private final mAppController:Lco/vine/android/client/AppController;

.field private final mAvatars:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPlaying:I

.field private mDimen:I

.field private mFirstPlayed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasFocus:Z

.field private mLastPlayer:Lco/vine/android/player/SdkVideoView;

.field private mLikeCache:Lco/vine/android/LikeCache;

.field private final mListView:Landroid/widget/ListView;

.field private mNeedReleaseOtherPlayers:Z

.field private final mPaths:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

.field private final mPlayers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lco/vine/android/player/SdkVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private final mPosts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;"
        }
    .end annotation
.end field

.field private final mQualities:Landroid/util/SparseBooleanArray;

.field private mShouldBePlaying:I

.field private final mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

.field private final mThumbnails:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Lco/vine/android/player/SdkVideoTimer;

.field private final mUrlReverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoAttr:Landroid/util/AttributeSet;

.field private mViewClickListener:Landroid/view/View$OnClickListener;

.field private final mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/widget/FeedAdapter$FeedViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

.field private mVineGreen:I

.field private maxPlayer:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ListView;Lco/vine/android/widget/SpanClickListener;Landroid/view/View$OnClickListener;Lco/vine/android/LikeCache;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 9
    .parameter "context"
    .parameter "listView"
    .parameter "listener"
    .parameter "viewListener"
    .parameter "likeCache"
    .parameter "videoScrollListener"

    .prologue
    const/high16 v5, -0x8000

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 176
    const/4 v4, 0x2

    invoke-direct {p0, p1, v7, v4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 119
    iput v5, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    .line 120
    iput v5, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 121
    const/16 v4, 0xa

    iput v4, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I

    .line 122
    iput v8, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    .line 123
    iput-boolean v8, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z

    .line 127
    iput-object v7, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    .line 135
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v4, Lco/vine/android/widget/FeedAdapter$1;

    invoke-direct {v4, p0}, Lco/vine/android/widget/FeedAdapter$1;-><init>(Lco/vine/android/widget/FeedAdapter;)V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    .line 177
    const-string v4, "Adapter constructed, accelerated? {}"

    invoke-virtual {p2}, Landroid/widget/ListView;->isHardwareAccelerated()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    .line 180
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;

    .line 181
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 182
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;

    .line 184
    invoke-static {p1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 185
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    .line 186
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    .line 187
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    .line 188
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;

    .line 189
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;

    .line 190
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    .line 191
    new-instance v4, Lco/vine/android/widget/TypefacesSpan;

    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    .line 194
    iput-object p3, p0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    .line 195
    iput-object p4, p0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    .line 196
    iput-object p5, p0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 199
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 200
    .local v3, size:Landroid/graphics/Point;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 201
    .local v1, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 202
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 204
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v2, v4, 0x2

    .line 205
    .local v2, padding:I
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    iput v4, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    .line 206
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lco/vine/android/widget/FeedAdapter;->mVineGreen:I

    .line 207
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/widget/FeedAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/widget/FeedAdapter;)Lco/vine/android/ViewOffsetResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/widget/FeedAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    return v0
.end method

.method static synthetic access$302(Lco/vine/android/widget/FeedAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I

    return p1
.end method

.method static synthetic access$400(Lco/vine/android/widget/FeedAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    return v0
.end method

.method static synthetic access$502(Lco/vine/android/widget/FeedAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z

    return p1
.end method

.method static synthetic access$600(Lco/vine/android/widget/FeedAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCursorToPost(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 559
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 560
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "post"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VinePost;

    return-object v1
.end method

.method private getRequestKey(I)Lco/vine/android/util/video/VideoKey;
    .locals 6
    .parameter "position"

    .prologue
    .line 384
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VinePost;

    .line 385
    .local v2, post:Lco/vine/android/api/VinePost;
    invoke-static {}, Lco/vine/android/widget/FeedAdapter;->shouldUseHQ()Z

    move-result v3

    .line 386
    .local v3, useHQ:Z
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 387
    const-string v4, "Getting HQ Video: {}"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    new-instance v1, Lco/vine/android/util/video/VideoKey;

    iget-object v4, v2, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-direct {v1, v4}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, peekKey:Lco/vine/android/util/video/VideoKey;
    if-nez v3, :cond_0

    .line 390
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4, v1}, Lco/vine/android/client/AppController;->peekVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 403
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #peekKey:Lco/vine/android/util/video/VideoKey;
    :cond_0
    :goto_0
    return-object v1

    .line 394
    .restart local v0       #path:Ljava/lang/String;
    .restart local v1       #peekKey:Lco/vine/android/util/video/VideoKey;
    :cond_1
    iget-object v4, v2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 395
    :cond_2
    const-string v4, "VideoLowURL is empty for {}, return HQ link."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 399
    :cond_3
    new-instance v1, Lco/vine/android/util/video/VideoKey;

    .end local v1           #peekKey:Lco/vine/android/util/video/VideoKey;
    iget-object v4, v2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-direct {v1, v4}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hasPlayerPlaying()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V
    .locals 3
    .parameter "position"
    .parameter "tag"

    .prologue
    .line 478
    iget-object v1, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 479
    iget-object v0, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 480
    .local v0, view:Lco/vine/android/player/SdkVideoView;
    new-instance v1, Lco/vine/android/widget/FeedAdapter$2;

    invoke-direct {v1, p0, p2}, Lco/vine/android/widget/FeedAdapter$2;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 490
    new-instance v1, Lco/vine/android/widget/FeedAdapter$3;

    invoke-direct {v1, p0, v0}, Lco/vine/android/widget/FeedAdapter$3;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/player/SdkVideoView;)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 501
    new-instance v1, Lco/vine/android/widget/FeedAdapter$4;

    invoke-direct {v1, p0}, Lco/vine/android/widget/FeedAdapter$4;-><init>(Lco/vine/android/widget/FeedAdapter;)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 508
    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 509
    return-void
.end method

.method private preFetch(I)Z
    .locals 8
    .parameter "requestedPosition"

    .prologue
    .line 348
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VinePost;

    .line 349
    .local v3, nextPost:Lco/vine/android/api/VinePost;
    if-eqz v3, :cond_4

    .line 350
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 351
    invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getRequestKey(I)Lco/vine/android/util/video/VideoKey;

    move-result-object v4

    .line 352
    .local v4, nextUrl:Lco/vine/android/util/video/VideoKey;
    const-string v5, "Pre-fetch {}: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    iget-object v5, v3, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 354
    new-instance v1, Lco/vine/android/util/image/ImageKey;

    iget-object v5, v3, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-direct {v1, v5}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, imageKey:Lco/vine/android/util/image/ImageKey;
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 357
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #imageKey:Lco/vine/android/util/image/ImageKey;
    :cond_0
    iget-object v5, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 361
    new-instance v1, Lco/vine/android/util/image/ImageKey;

    iget-object v5, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-direct {v1, v5}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v1       #imageKey:Lco/vine/android/util/image/ImageKey;
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 364
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #imageKey:Lco/vine/android/util/image/ImageKey;
    :cond_1
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v4}, Lco/vine/android/client/AppController;->getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, nextPath:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 369
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    .end local v2           #nextPath:Ljava/lang/String;
    .end local v4           #nextUrl:Lco/vine/android/util/video/VideoKey;
    :goto_0
    const/4 v5, 0x1

    .line 379
    :goto_1
    return v5

    .line 371
    .restart local v2       #nextPath:Ljava/lang/String;
    .restart local v4       #nextUrl:Lco/vine/android/util/video/VideoKey;
    :cond_2
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 374
    .end local v2           #nextPath:Ljava/lang/String;
    .end local v4           #nextUrl:Lco/vine/android/util/video/VideoKey;
    :cond_3
    const-string v5, "{} is already fetched."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_4
    const-string v5, "End of list, no pre-fetching: {} {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private refreshVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V
    .locals 6
    .parameter "position"
    .parameter "tag"

    .prologue
    .line 457
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 458
    .local v2, group:Landroid/view/ViewGroup;
    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    if-nez v3, :cond_0

    .line 459
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getAttributes()Landroid/util/AttributeSet;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    .line 461
    :cond_0
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->stopPlayback()V

    .line 463
    :try_start_0
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    new-instance v3, Lco/vine/android/player/SdkVideoView;

    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lco/vine/android/player/SdkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 472
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const v4, 0x7f09003e

    invoke-virtual {v3, v4}, Lco/vine/android/player/SdkVideoView;->setId(I)V

    .line 473
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 474
    invoke-direct {p0, p1, p2}, Lco/vine/android/widget/FeedAdapter;->initVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    .line 475
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 466
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 467
    :catch_1
    move-exception v1

    .line 468
    .local v1, e2:Ljava/lang/Exception;
    const-string v3, "Weird things are happening."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private resetStates(Z)V
    .locals 2
    .parameter "hasDataSetChanged"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 220
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    .line 221
    iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    .line 222
    iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 223
    iput v1, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    .line 224
    iput-boolean v1, p0, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 228
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 229
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 230
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 231
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 232
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 234
    :cond_0
    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "imageView"
    .parameter "bitmap"

    .prologue
    .line 1042
    if-nez p2, :cond_0

    .line 1043
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1044
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1045
    const/4 v0, 0x0

    .line 1048
    :goto_0
    return v0

    .line 1047
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1048
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setStyledComments(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;Lco/vine/android/api/VinePagedData;)V
    .locals 24
    .parameter "holder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/widget/FeedAdapter$FeedViewHolder;",
            "Lco/vine/android/api/VinePagedData",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p2, commentData:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineComment;>;"
    move-object/from16 v0, p2

    iget-object v7, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 873
    .local v7, comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineComment;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 875
    .local v14, size:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments1:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments2:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments3:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments4:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments5:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 880
    if-nez v14, :cond_1

    .line 963
    :cond_0
    return-void

    .line 884
    :cond_1
    const/4 v8, 0x0

    .line 887
    .local v8, count:I
    add-int/lit8 v19, v14, -0x5

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v13

    .local v13, index:I
    :goto_0
    if-ge v13, v14, :cond_0

    .line 888
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/vine/android/api/VineComment;

    .line 889
    .local v6, comment:Lco/vine/android/api/VineComment;
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 894
    packed-switch v8, :pswitch_data_0

    .line 913
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments5:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 918
    .local v17, thisComment:Landroid/widget/TextView;
    :goto_1
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 920
    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 924
    .local v18, thisCommentSb:Landroid/text/SpannableStringBuilder;
    :try_start_0
    iget-object v0, v6, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v19

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v19

    iget-object v0, v6, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    const/16 v16, 0x0

    .line 932
    .local v16, start:I
    iget-object v0, v6, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    .line 934
    .local v10, end:I
    new-instance v15, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v19, 0x1

    iget-wide v0, v6, Lco/vine/android/api/VineComment;->userId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 936
    .local v15, span:Lco/vine/android/widget/StyledClickableSpan;
    new-instance v4, Lco/vine/android/widget/TypefacesSpan;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 938
    .local v4, boldSpan:Lco/vine/android/widget/TypefacesSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mVineGreen:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 939
    const/16 v19, 0x0

    const/16 v20, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v15, v1, v10, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 940
    const/16 v19, 0x0

    const/16 v20, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v4, v1, v10, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 943
    iget-object v11, v6, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    .line 944
    .local v11, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    if-eqz v11, :cond_4

    .line 945
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;I)V

    .line 946
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/api/VineEntity;

    .line 947
    .local v9, e:Lco/vine/android/api/VineEntity;
    invoke-virtual {v9}, Lco/vine/android/api/VineEntity;->isUserType()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 948
    new-instance v5, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v19, 0x1

    iget-wide v0, v9, Lco/vine/android/api/VineEntity;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 950
    .local v5, click:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mVineGreen:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 951
    iget v0, v9, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v19, v0

    iget v0, v9, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v20, v0

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v5, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_2

    .line 896
    .end local v4           #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    .end local v5           #click:Lco/vine/android/widget/StyledClickableSpan;
    .end local v9           #e:Lco/vine/android/api/VineEntity;
    .end local v10           #end:I
    .end local v11           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #span:Lco/vine/android/widget/StyledClickableSpan;
    .end local v16           #start:I
    .end local v17           #thisComment:Landroid/widget/TextView;
    .end local v18           #thisCommentSb:Landroid/text/SpannableStringBuilder;
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments1:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 897
    .restart local v17       #thisComment:Landroid/widget/TextView;
    goto/16 :goto_1

    .line 900
    .end local v17           #thisComment:Landroid/widget/TextView;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments2:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 901
    .restart local v17       #thisComment:Landroid/widget/TextView;
    goto/16 :goto_1

    .line 904
    .end local v17           #thisComment:Landroid/widget/TextView;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments3:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 905
    .restart local v17       #thisComment:Landroid/widget/TextView;
    goto/16 :goto_1

    .line 908
    .end local v17           #thisComment:Landroid/widget/TextView;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments4:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 909
    .restart local v17       #thisComment:Landroid/widget/TextView;
    goto/16 :goto_1

    .line 925
    .restart local v18       #thisCommentSb:Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v9

    .line 926
    .local v9, e:Ljava/lang/NullPointerException;
    const-string v19, "Comment attribute caused NPE: {} {} {}"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-wide v0, v6, Lco/vine/android/api/VineComment;->commentId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget-object v0, v6, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    iget-object v0, v6, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v9, v0, v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    .end local v9           #e:Ljava/lang/NullPointerException;
    :goto_3
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 952
    .restart local v4       #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    .local v9, e:Lco/vine/android/api/VineEntity;
    .restart local v10       #end:I
    .restart local v11       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v15       #span:Lco/vine/android/widget/StyledClickableSpan;
    .restart local v16       #start:I
    :cond_3
    invoke-virtual {v9}, Lco/vine/android/api/VineEntity;->isTagType()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 953
    new-instance v5, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v19, 0x4

    iget-object v0, v9, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 955
    .restart local v5       #click:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mVineGreen:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 956
    iget v0, v9, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v19, v0

    iget v0, v9, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v20, v0

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v5, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 960
    .end local v5           #click:Lco/vine/android/widget/StyledClickableSpan;
    .end local v9           #e:Lco/vine/android/api/VineEntity;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 961
    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 894
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setStyledLikers(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;ILco/vine/android/api/VinePagedData;)V
    .locals 35
    .parameter "h"
    .parameter "hardSize"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/widget/FeedAdapter$FeedViewHolder;",
            "I",
            "Lco/vine/android/api/VinePagedData",
            "<",
            "Lco/vine/android/api/VineLike;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p3, likeData:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineLike;>;"
    move-object/from16 v0, p3

    iget-object v14, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 774
    .local v14, likes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineLike;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 775
    .local v22, size:I
    if-nez v22, :cond_0

    .line 869
    :goto_0
    return-void

    .line 778
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 779
    .local v18, res:Landroid/content/res/Resources;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v27, text:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 783
    .local v11, indices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/16 v31, 0xa

    move/from16 v0, p2

    move/from16 v1, v31

    if-le v0, v1, :cond_1

    .line 784
    const/16 v31, 0x3

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput v0, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likeType:I

    .line 785
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->bigNumberFormat(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v16

    .line 786
    .local v16, numberLikesString:Ljava/lang/String;
    const v31, 0x7f0700c0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v16, v32, v33

    move-object/from16 v0, v18

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 787
    .local v15, manyLikeThis:Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x22

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v15, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v24

    .line 791
    .local v24, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Landroid/text/Spannable;

    .line 793
    .local v23, spannable:Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v25

    .line 794
    .local v25, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 796
    .local v7, end:I
    new-instance v26, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v31, 0x2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->postId:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 799
    .local v26, styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v31, 0x7f08

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 800
    const/16 v31, 0x21

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v7, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 801
    .end local v7           #end:I
    .end local v15           #manyLikeThis:Ljava/lang/String;
    .end local v16           #numberLikesString:Ljava/lang/String;
    .end local v23           #spannable:Landroid/text/Spannable;
    .end local v24           #spanned:Landroid/text/Spanned;
    .end local v25           #start:I
    .end local v26           #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_1
    const/16 v31, 0x1

    move/from16 v0, v22

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 802
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput v0, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likeType:I

    .line 803
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lco/vine/android/api/VineLike;

    .line 804
    .local v21, singleLike:Lco/vine/android/api/VineLike;
    const v31, 0x7f0700c1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    move-object/from16 v0, v18

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    new-instance v19, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 806
    .local v19, sb:Landroid/text/SpannableStringBuilder;
    new-instance v26, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v32, 0x1

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lco/vine/android/api/VineLike;

    move-object/from16 v0, v31

    iget-wide v0, v0, Lco/vine/android/api/VineLike;->userId:J

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move/from16 v1, v32

    move-object/from16 v2, v31

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 808
    .restart local v26       #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v31, 0x7f08

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 809
    const/16 v31, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 810
    new-instance v5, Lco/vine/android/widget/TypefacesSpan;

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 813
    .local v5, boldSpan:Lco/vine/android/widget/TypefacesSpan;
    const/16 v31, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v5, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 814
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 816
    .end local v5           #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    .end local v19           #sb:Landroid/text/SpannableStringBuilder;
    .end local v21           #singleLike:Lco/vine/android/api/VineLike;
    .end local v26           #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_2
    const/16 v31, 0x2

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput v0, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likeType:I

    .line 817
    const/4 v6, 0x0

    .line 819
    .local v6, count:I
    const/16 v20, -0x1

    .line 820
    .local v20, second:I
    new-instance v10, Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 822
    .local v10, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/vine/android/api/VineLike;

    .line 823
    .local v13, like:Lco/vine/android/api/VineLike;
    if-nez v6, :cond_3

    .line 825
    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    const/4 v8, 0x0

    .line 827
    .local v8, first:I
    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v20

    .line 839
    :goto_2
    new-instance v28, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 840
    .local v28, thisPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    iget-wide v0, v13, Lco/vine/android/api/VineLike;->userId:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 828
    .end local v8           #first:I
    .end local v28           #thisPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    add-int/lit8 v31, v22, -0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_4

    .line 830
    const v31, 0x7f0700c2

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    move-object/from16 v0, v18

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 831
    .local v12, last:Ljava/lang/String;
    const/16 v31, 0x20

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    add-int/lit8 v8, v20, 0x3

    .line 833
    .restart local v8       #first:I
    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int v20, v8, v31

    .line 834
    goto :goto_2

    .line 835
    .end local v8           #first:I
    .end local v12           #last:Ljava/lang/String;
    :cond_4
    const-string v31, ", "

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    add-int/lit8 v8, v20, 0x2

    .line 837
    .restart local v8       #first:I
    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int v20, v8, v31

    goto/16 :goto_2

    .line 845
    .end local v8           #first:I
    .end local v13           #like:Lco/vine/android/api/VineLike;
    :cond_5
    new-instance v19, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 847
    .restart local v19       #sb:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    .line 851
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Pair;

    .line 852
    .local v17, p:Landroid/util/Pair;
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 855
    .local v29, userId:J
    new-instance v26, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v31, 0x1

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 857
    .restart local v26       #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v31, 0x7f08

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v31

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 858
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v33, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v32

    move/from16 v3, v31

    move/from16 v4, v33

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 862
    new-instance v5, Lco/vine/android/widget/TypefacesSpan;

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v5, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 864
    .restart local v5       #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v33, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v32

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-static {v0, v5, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 865
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 867
    .end local v5           #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    .end local v17           #p:Landroid/util/Pair;
    .end local v26           #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    .end local v29           #userId:J
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private shouldShowThumbnail(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 564
    iget v0, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lco/vine/android/widget/FeedAdapter;->hasPlayerPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseHQ()Z
    .locals 2

    .prologue
    .line 1053
    invoke-static {}, Lco/vine/android/util/video/VideoCache;->getCurrentAverageSpeed()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 569
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v16

    .line 571
    .local v16, position:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 573
    .local v11, h:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->shouldShowThumbnail(I)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 574
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 577
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v29

    invoke-direct {v0, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->bindCursorToPost(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;

    move-result-object v17

    .line 580
    .local v17, post:Lco/vine/android/api/VinePost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 582
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->bindCursorToPost(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->bindCursorToPost(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 586
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 588
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 591
    :cond_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    .line 592
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 593
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const v29, 0x7f020009

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    :cond_3
    :goto_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    const/16 v28, 0x1

    :goto_1
    move/from16 v0, v28

    iput-boolean v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->hasVideoImage:Z

    .line 607
    iget-boolean v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->hasVideoImage:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 608
    new-instance v26, Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 609
    .local v26, videoImageKey:Lco/vine/android/util/image/ImageKey;
    move-object/from16 v0, v26

    iput-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Bitmap;

    .line 611
    .local v27, videoThumbnail:Landroid/graphics/Bitmap;
    if-eqz v27, :cond_9

    .line 612
    const-string v28, "setting thumbnail for {}"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v28

    move/from16 v0, v28

    iput-boolean v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->isVideoImageLoaded:Z

    .line 621
    .end local v26           #videoImageKey:Lco/vine/android/util/image/ImageKey;
    .end local v27           #videoThumbnail:Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_11

    .line 622
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 625
    .local v18, postEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    if-eqz v18, :cond_10

    .line 626
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 627
    new-instance v9, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 629
    .local v9, descriptionSb:Landroid/text/SpannableStringBuilder;
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v9, v1}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;I)V

    .line 631
    new-instance v22, Landroid/text/SpannableString;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 632
    .local v22, spannable:Landroid/text/Spannable;
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lco/vine/android/api/VineEntity;

    .line 633
    .local v10, entity:Lco/vine/android/api/VineEntity;
    invoke-virtual {v10}, Lco/vine/android/api/VineEntity;->isUserType()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 634
    new-instance v24, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v28, 0x1

    iget-wide v0, v10, Lco/vine/android/api/VineEntity;->id:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 637
    .local v24, usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mVineGreen:I

    move/from16 v28, v0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 638
    iget v0, v10, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v28, v0

    iget v0, v10, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v29, v0

    const/16 v30, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_3

    .line 595
    .end local v9           #descriptionSb:Landroid/text/SpannableStringBuilder;
    .end local v10           #entity:Lco/vine/android/api/VineEntity;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v18           #postEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    .end local v22           #spannable:Landroid/text/Spannable;
    .end local v24           #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_6
    new-instance v6, Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 596
    .local v6, avatarKey:Lco/vine/android/util/image/ImageKey;
    iput-object v6, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 598
    .local v5, avatar:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_7

    .line 599
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    goto/16 :goto_0

    .line 601
    :cond_7
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    goto/16 :goto_0

    .line 605
    .end local v5           #avatar:Landroid/graphics/Bitmap;
    .end local v6           #avatarKey:Lco/vine/android/util/image/ImageKey;
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 615
    .restart local v26       #videoImageKey:Lco/vine/android/util/image/ImageKey;
    .restart local v27       #videoThumbnail:Landroid/graphics/Bitmap;
    :cond_9
    const-string v28, "fetching thumbnail for {}"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v28

    move/from16 v0, v28

    iput-boolean v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->isVideoImageLoaded:Z

    goto/16 :goto_2

    .line 640
    .end local v26           #videoImageKey:Lco/vine/android/util/image/ImageKey;
    .end local v27           #videoThumbnail:Landroid/graphics/Bitmap;
    .restart local v9       #descriptionSb:Landroid/text/SpannableStringBuilder;
    .restart local v10       #entity:Lco/vine/android/api/VineEntity;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v18       #postEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    .restart local v22       #spannable:Landroid/text/Spannable;
    :cond_a
    invoke-virtual {v10}, Lco/vine/android/api/VineEntity;->isTagType()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 641
    new-instance v24, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v28, 0x4

    iget-object v0, v10, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 644
    .restart local v24       #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/FeedAdapter;->mVineGreen:I

    move/from16 v28, v0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 645
    iget v0, v10, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v28, v0

    iget v0, v10, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v29, v0

    const/16 v30, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 649
    .end local v10           #entity:Lco/vine/android/api/VineEntity;
    .end local v24           #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_b
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    .end local v9           #descriptionSb:Landroid/text/SpannableStringBuilder;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v18           #postEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    .end local v22           #spannable:Landroid/text/Spannable;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 658
    .local v20, res:Landroid/content/res/Resources;
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_12

    .line 659
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->location:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    sget-object v28, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lco/vine/android/api/VineVenue;->displayType:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/util/SparseIntArray;->get(I)I

    move-result v28

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 661
    .local v8, d:Landroid/graphics/drawable/Drawable;
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->locationIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->locationContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 666
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    :goto_5
    move/from16 v0, v16

    iput v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->position:I

    .line 667
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lco/vine/android/player/OnListVideoClickListener;->setPosition(I)V

    .line 668
    move-object/from16 v0, v17

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    iput-wide v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->postId:J

    .line 670
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->shouldShowThumbnail(I)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 671
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 675
    :cond_c
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 676
    .local v25, usernameString:Ljava/lang/String;
    sget-boolean v28, Lcom/edisonwang/android/slog/SLog;->IS_LOG_ON:Z

    if-eqz v28, :cond_e

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 678
    .local v19, quality:Ljava/lang/Boolean;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-eqz v28, :cond_13

    :cond_d
    const-string v28, "High Quality"

    :goto_6
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 681
    .end local v19           #quality:Ljava/lang/Boolean;
    :cond_e
    new-instance v21, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 682
    .local v21, sb:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 684
    new-instance v23, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v28, 0x1

    move-object/from16 v0, v17

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->userId:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 686
    .local v23, styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v28, 0x7f08

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 687
    const/16 v28, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 689
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    new-instance v29, Lco/vine/android/widget/FeedAdapter$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter$5;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->username:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 696
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->username:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->timestamp:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->created:J

    move-wide/from16 v29, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comment:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    new-instance v29, Lco/vine/android/widget/FeedAdapter$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter$6;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v14, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likersContainer:Landroid/widget/RelativeLayout;

    .line 709
    .local v14, likersContainer:Landroid/widget/RelativeLayout;
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_14

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_14

    .line 710
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 711
    move-object/from16 v0, v17

    iget v0, v0, Lco/vine/android/api/VinePost;->likesCount:I

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v11, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setStyledLikers(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;ILco/vine/android/api/VinePagedData;)V

    .line 717
    :goto_7
    iget-object v7, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->commentsContainer:Landroid/widget/RelativeLayout;

    .line 718
    .local v7, commentsContainer:Landroid/widget/RelativeLayout;
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_16

    .line 719
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 720
    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v11, v1}, Lco/vine/android/widget/FeedAdapter;->setStyledComments(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;Lco/vine/android/api/VinePagedData;)V

    .line 721
    move-object/from16 v0, v17

    iget v0, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    move/from16 v28, v0

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_15

    .line 722
    const/16 v28, 0x2

    move/from16 v0, v28

    iput v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->commentType:I

    .line 723
    const v28, 0x7f0700c3

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Lco/vine/android/api/VinePost;->commentsCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x5

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->bigNumberFormat(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v20

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 726
    .local v15, olderComments:Ljava/lang/String;
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderCommentsContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 727
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderComments:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderCommentsContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    new-instance v29, Lco/vine/android/widget/FeedAdapter$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter$7;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    .end local v15           #olderComments:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Lco/vine/android/LikeCache;->contains(J)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Lco/vine/android/LikeCache;->isLike(J)Z

    move-result v13

    .line 748
    .local v13, liked:Z
    move-object/from16 v0, v17

    iput-boolean v13, v0, Lco/vine/android/api/VinePost;->liked:Z

    .line 752
    :goto_9
    if-eqz v13, :cond_18

    .line 753
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    const v29, 0x7f020063

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 757
    :goto_a
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 758
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->more:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 761
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->more:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lco/vine/android/widget/FeedAdapter;->initVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    .line 764
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z

    move/from16 v28, v0

    if-nez v28, :cond_f

    if-nez v16, :cond_f

    .line 765
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->play(I)V

    .line 766
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z

    .line 768
    :cond_f
    return-void

    .line 651
    .end local v7           #commentsContainer:Landroid/widget/RelativeLayout;
    .end local v13           #liked:Z
    .end local v14           #likersContainer:Landroid/widget/RelativeLayout;
    .end local v20           #res:Landroid/content/res/Resources;
    .end local v21           #sb:Landroid/text/SpannableStringBuilder;
    .end local v23           #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    .end local v25           #usernameString:Ljava/lang/String;
    .restart local v18       #postEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :cond_10
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 654
    .end local v18           #postEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :cond_11
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 664
    .restart local v20       #res:Landroid/content/res/Resources;
    :cond_12
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->locationContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 678
    .restart local v19       #quality:Ljava/lang/Boolean;
    .restart local v25       #usernameString:Ljava/lang/String;
    :cond_13
    const-string v28, "Low Quality"

    goto/16 :goto_6

    .line 713
    .end local v19           #quality:Ljava/lang/Boolean;
    .restart local v14       #likersContainer:Landroid/widget/RelativeLayout;
    .restart local v21       #sb:Landroid/text/SpannableStringBuilder;
    .restart local v23       #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_14
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 737
    .restart local v7       #commentsContainer:Landroid/widget/RelativeLayout;
    :cond_15
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderCommentsContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 738
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->commentType:I

    goto/16 :goto_8

    .line 741
    :cond_16
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 750
    :cond_17
    move-object/from16 v0, v17

    iget-boolean v13, v0, Lco/vine/android/api/VinePost;->liked:Z

    .restart local v13       #liked:Z
    goto/16 :goto_9

    .line 755
    :cond_18
    iget-object v0, v11, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    move-object/from16 v28, v0

    const v29, 0x7f020038

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_a
.end method

.method public getCurrentVideoView()Lco/vine/android/player/SdkVideoView;
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 444
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLastPlayer()Lco/vine/android/player/SdkVideoView;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    return-object v0
.end method

.method public getPlayer(IZ)Lco/vine/android/player/SdkVideoView;
    .locals 1
    .parameter "position"
    .parameter "b"

    .prologue
    .line 418
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/player/SdkVideoView;

    return-object v0
.end method

.method public getViewAtPosition(I)Landroid/view/View;
    .locals 6
    .parameter "wantedPosition"

    .prologue
    .line 427
    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    .line 428
    .local v1, listView:Landroid/widget/ListView;
    const/4 v2, 0x0

    .line 429
    .local v2, offset:I
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

    invoke-interface {v4, p0}, Lco/vine/android/ViewOffsetResolver;->getOffset(Landroid/widget/BaseAdapter;)I

    move-result v2

    .line 432
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v2

    .line 433
    .local v0, firstPosition:I
    sub-int v3, p1, v0

    .line 434
    .local v3, wantedChild:I
    if-ltz v3, :cond_1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 435
    :cond_1
    const-string v4, "Unable to get view for desired position, because it\'s not being displayed on screen."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->w(Ljava/lang/String;)V

    .line 436
    const/4 v4, 0x0

    .line 439
    :goto_0
    return-object v4

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v8, 0x7f09003b

    .line 528
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 530
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 531
    .local v0, container:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 532
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 533
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 534
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    const v5, 0x7f09003f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #container:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 537
    .restart local v0       #container:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 538
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 539
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    const v5, 0x7f09003c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 542
    .local v1, imageContainer:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 543
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 544
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 545
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    new-instance v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    invoke-direct {v3, v4}, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;-><init>(Landroid/view/View;)V

    .line 548
    .local v3, tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    const v5, 0x7f09003e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lco/vine/android/player/SdkVideoView;

    iput-object v5, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 549
    new-instance v5, Lco/vine/android/player/OnListVideoClickListener;

    invoke-direct {v5, p0}, Lco/vine/android/player/OnListVideoClickListener;-><init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V

    iput-object v5, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;

    .line 550
    iget-object v5, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 551
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 554
    const-string v5, "Get view: {}"

    iget-object v6, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    return-object v4
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/widget/FeedAdapter;->resetStates(Z)V

    .line 217
    return-void
.end method

.method onLoadFinish(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 523
    iget-object v0, p1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 524
    return-void
.end method

.method public declared-synchronized onPause(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 966
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    .line 967
    iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z

    .line 968
    const/high16 v0, -0x8000

    iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 969
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoTimer;->release()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 973
    :cond_0
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 974
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    .line 975
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/widget/FeedAdapter;->resetStates(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    monitor-exit p0

    return-void

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume(Z)V
    .locals 1
    .parameter "focused"

    .prologue
    .line 979
    monitor-enter p0

    const/high16 v0, -0x8000

    :try_start_0
    iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 980
    iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z

    .line 981
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V

    .line 982
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoTimer;->release()V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 986
    :cond_0
    new-instance v0, Lco/vine/android/player/SdkVideoTimer;

    invoke-direct {v0}, Lco/vine/android/player/SdkVideoTimer;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 987
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0, p0}, Lco/vine/android/player/SdkVideoTimer;->start(Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;)V

    .line 988
    invoke-static {}, Lco/vine/android/util/video/VideoCache;->resetAverageSpeed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    monitor-exit p0

    return-void

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p1, videos:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/video/VideoKey;Lco/vine/android/util/video/UrlVideo;>;"
    const-string v3, "CALLBACK onVideoPathObtained"

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/video/VideoKey;

    .line 994
    .local v1, key:Lco/vine/android/util/video/VideoKey;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/video/UrlVideo;

    .line 995
    .local v2, video:Lco/vine/android/util/video/UrlVideo;
    invoke-virtual {v2}, Lco/vine/android/util/video/UrlVideo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 996
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lco/vine/android/util/video/UrlVideo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 997
    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    if-ne v3, v4, :cond_0

    .line 998
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V

    goto :goto_0

    .line 1002
    .end local v1           #key:Lco/vine/android/util/video/VideoKey;
    .end local v2           #video:Lco/vine/android/util/video/UrlVideo;
    :cond_1
    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 7
    .parameter "requestedPosition"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    const-string v4, "play task executing with position {} "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    iget-boolean v4, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z

    if-eqz v4, :cond_8

    .line 301
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 302
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lco/vine/android/widget/FeedAdapter;->shouldUseHQ()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    .line 305
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    add-int/lit8 v4, p1, 0x2

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    .line 308
    :cond_1
    const-string v4, "{} is in cache or it is already pre-fetched."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    const-string v4, "playing file at position {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->playFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 312
    :cond_3
    :try_start_1
    const-string v4, "Real fetch for {}."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 314
    invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getRequestKey(I)Lco/vine/android/util/video/VideoKey;

    move-result-object v2

    .line 315
    .local v2, url:Lco/vine/android/util/video/VideoKey;
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4, v2}, Lco/vine/android/client/AppController;->getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, path:Ljava/lang/String;
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 317
    add-int/lit8 v4, p1, 0x2

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    .line 319
    :cond_4
    if-eqz v0, :cond_5

    .line 320
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    const-string v4, "playing file at position {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->playFile(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    .end local v0           #path:Ljava/lang/String;
    .end local v2           #url:Lco/vine/android/util/video/VideoKey;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 324
    .restart local v0       #path:Ljava/lang/String;
    .restart local v2       #url:Lco/vine/android/util/video/VideoKey;
    :cond_5
    :try_start_2
    iput p1, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 325
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v4, "{} is not in app cache yet."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    .line 328
    invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;

    move-result-object v3

    .line 329
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 330
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 331
    .local v1, tag:Ljava/lang/Object;
    instance-of v4, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    if-eqz v4, :cond_6

    .line 332
    check-cast v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .end local v1           #tag:Ljava/lang/Object;
    iget-object v4, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 334
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Somehow tag was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", view class is \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 339
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #tag:Ljava/lang/Object;
    .end local v2           #url:Lco/vine/android/util/video/VideoKey;
    .end local v3           #view:Landroid/view/View;
    :cond_7
    const-string v4, "mPosts is {} or the requested position has no post object in it yet, return -1."

    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 343
    :cond_8
    const-string v4, "not playing because not focused."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized playCurrentPosition()V
    .locals 4

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playFile(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 237
    monitor-enter p0

    if-gez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_0
    const-string v5, "Playing item: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;

    move-result-object v1

    .line 243
    .local v1, currentView:Landroid/view/View;
    if-nez v1, :cond_2

    .line 244
    const-string v5, "Item is not visible: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    .end local v1           #currentView:Landroid/view/View;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 247
    .restart local v1       #currentView:Landroid/view/View;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 248
    .local v4, tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    if-eqz v4, :cond_0

    .line 251
    iget-boolean v5, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->isVideoImageLoaded:Z

    if-nez v5, :cond_3

    iget-boolean v5, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->hasVideoImage:Z

    if-eqz v5, :cond_3

    .line 252
    const-string v5, "NOT LOADED"

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    .line 253
    const-string v5, "Waiting for video image to load: {}."

    iget-object v6, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    iget-object v6, v6, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 259
    .local v0, currentVideoView:Lco/vine/android/player/SdkVideoView;
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    if-eq v0, v5, :cond_4

    .line 260
    const-string v5, "NOT PLAYER"

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    .line 264
    :cond_4
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, newPath:Ljava/lang/String;
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, oldPath:Ljava/lang/String;
    if-nez v2, :cond_5

    .line 268
    const-string v5, "Path was cleared."

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 273
    invoke-direct {p0, p1, v4}, Lco/vine/android/widget/FeedAdapter;->refreshVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    .line 274
    iget-object v0, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 275
    iget-boolean v5, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    iget v6, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I

    if-lt v5, v6, :cond_6

    .line 276
    iget-object v5, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {p0, v5}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    .line 278
    :cond_6
    const-string v5, "Start playing by set path."

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v2}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 280
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    .line 292
    :goto_1
    invoke-virtual {v0, p1}, Lco/vine/android/player/SdkVideoView;->setPlayingPosition(I)V

    .line 293
    iget-object v5, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;

    invoke-virtual {v5, p1}, Lco/vine/android/player/OnListVideoClickListener;->setPosition(I)V

    .line 294
    iput p1, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    .line 295
    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    goto/16 :goto_0

    .line 282
    :cond_7
    iget-object v5, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v5}, Lco/vine/android/player/SdkVideoView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_8

    .line 283
    iget-object v5, v4, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 285
    :cond_8
    const-string v5, "Start playing by calling start."

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 287
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V

    goto :goto_1

    .line 289
    :cond_9
    invoke-virtual {v0, v2}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 513
    .local v2, key:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 514
    .local v0, holder:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    if-eq p1, v3, :cond_0

    .line 515
    const-string v3, "Releasing player: {}"

    iget v4, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    iget-object v3, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->suspend()V

    .line 517
    iget v3, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 512
    .end local v0           #holder:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 520
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public setImages(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v5, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;>;"
    iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1009
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 1010
    .local v1, holder:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    if-nez v1, :cond_1

    .line 1011
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1014
    :cond_1
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_2

    .line 1015
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/util/image/UrlImage;

    .line 1016
    .local v3, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1017
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v7}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    .line 1018
    const-string v6, "found for avatar."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 1021
    .end local v3           #image:Lco/vine/android/util/image/UrlImage;
    :cond_2
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_0

    .line 1022
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/util/image/UrlImage;

    .line 1023
    .restart local v3       #image:Lco/vine/android/util/image/UrlImage;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1024
    const-string v6, "found for video."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 1025
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v7}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v6

    iput-boolean v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->isVideoImageLoaded:Z

    .line 1026
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V

    goto :goto_0

    .line 1031
    .end local v1           #holder:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    .end local v3           #image:Lco/vine/android/util/image/UrlImage;
    .end local v4           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1032
    .local v0, h:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1034
    .end local v0           #h:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    :cond_4
    return-void
.end method

.method public setOffsetResolver(Lco/vine/android/ViewOffsetResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 210
    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

    .line 211
    return-void
.end method

.method public stopCurrentPlayer()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lco/vine/android/widget/FeedAdapter;->hasPlayerPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V

    .line 415
    :cond_0
    return-void
.end method
