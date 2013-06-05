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

.field private static final RES_LAYOUT:I = 0x7f03001c

.field private static final RES_VIDEO_CONTAINER:I = 0x7f090037

.field private static final RES_VIDEO_VIEW_ID:I = 0x7f09003a

.field private static final SPACE:C = ' '

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

    .line 162
    const/4 v4, 0x2

    invoke-direct {p0, p1, v7, v4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 113
    iput v5, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    .line 114
    iput v5, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 115
    const/16 v4, 0xa

    iput v4, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I

    .line 116
    iput v8, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    .line 117
    iput-boolean v8, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z

    .line 121
    iput-object v7, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    .line 128
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v4, Lco/vine/android/widget/FeedAdapter$1;

    invoke-direct {v4, p0}, Lco/vine/android/widget/FeedAdapter$1;-><init>(Lco/vine/android/widget/FeedAdapter;)V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    .line 163
    const-string v4, "Adapter constructed, accelerated? {}"

    invoke-virtual {p2}, Landroid/widget/ListView;->isHardwareAccelerated()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    .line 166
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;

    .line 167
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 168
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;

    .line 170
    invoke-static {p1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 171
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    .line 172
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    .line 173
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    .line 174
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;

    .line 175
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;

    .line 176
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    .line 177
    new-instance v4, Lco/vine/android/widget/TypefacesSpan;

    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    .line 180
    iput-object p3, p0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    .line 181
    iput-object p4, p0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    .line 182
    iput-object p5, p0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;

    .line 184
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 185
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 186
    .local v3, size:Landroid/graphics/Point;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 187
    .local v1, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 188
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v2, v4, 0x2

    .line 191
    .local v2, padding:I
    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    iput v4, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/widget/FeedAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/widget/FeedAdapter;)Lco/vine/android/ViewOffsetResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/widget/FeedAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    return v0
.end method

.method static synthetic access$302(Lco/vine/android/widget/FeedAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I

    return p1
.end method

.method static synthetic access$400(Lco/vine/android/widget/FeedAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    return v0
.end method

.method static synthetic access$502(Lco/vine/android/widget/FeedAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z

    return p1
.end method

.method static synthetic access$600(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/player/SdkVideoView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    return-void
.end method

.method static synthetic access$700(Lco/vine/android/widget/FeedAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCursorToPost(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 536
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 537
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
    .line 360
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VinePost;

    .line 361
    .local v2, post:Lco/vine/android/api/VinePost;
    invoke-static {}, Lco/vine/android/widget/FeedAdapter;->shouldUseHQ()Z

    move-result v3

    .line 362
    .local v3, useHQ:Z
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 363
    const-string v4, "Getting HQ Video: {}"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    new-instance v1, Lco/vine/android/util/video/VideoKey;

    iget-object v4, v2, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    invoke-direct {v1, v4}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, peekKey:Lco/vine/android/util/video/VideoKey;
    if-nez v3, :cond_0

    .line 366
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4, v1}, Lco/vine/android/client/AppController;->peekVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 379
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #peekKey:Lco/vine/android/util/video/VideoKey;
    :cond_0
    :goto_0
    return-object v1

    .line 370
    .restart local v0       #path:Ljava/lang/String;
    .restart local v1       #peekKey:Lco/vine/android/util/video/VideoKey;
    :cond_1
    iget-object v4, v2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 371
    :cond_2
    const-string v4, "VideoLowURL is empty for {}, return HQ link."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 375
    :cond_3
    new-instance v1, Lco/vine/android/util/video/VideoKey;

    .end local v1           #peekKey:Lco/vine/android/util/video/VideoKey;
    iget-object v4, v2, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    invoke-direct {v1, v4}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getStyledComments(Lco/vine/android/api/VinePagedData;)Landroid/text/SpannableStringBuilder;
    .locals 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/api/VinePagedData",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 826
    .local p1, commentData:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineComment;>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 827
    .local v7, comments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineComment;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 829
    .local v19, size:I
    if-nez v19, :cond_1

    .line 830
    const/16 v17, 0x0

    .line 885
    :cond_0
    return-object v17

    .line 833
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 834
    .local v16, res:Landroid/content/res/Resources;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    .local v21, text:Ljava/lang/StringBuilder;
    new-instance v13, Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 838
    .local v13, indices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v14, 0x0

    .line 839
    .local v14, marker:I
    const/4 v8, 0x0

    .line 841
    .local v8, count:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 844
    .local v11, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    add-int/lit8 v22, v19, -0x5

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v12

    .local v12, index:I
    :goto_0
    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 845
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/vine/android/api/VineComment;

    .line 846
    .local v6, comment:Lco/vine/android/api/VineComment;
    const/16 v22, 0x5

    move/from16 v0, v22

    if-lt v8, v0, :cond_3

    .line 869
    .end local v6           #comment:Lco/vine/android/api/VineComment;
    :cond_2
    new-instance v17, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 870
    .local v17, sb:Landroid/text/SpannableStringBuilder;
    const/4 v8, 0x0

    .line 871
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 872
    .local v15, p:Landroid/util/Pair;
    new-instance v20, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v22, 0x1

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 874
    .local v20, span:Lco/vine/android/widget/StyledClickableSpan;
    new-instance v5, Lco/vine/android/widget/TypefacesSpan;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 876
    .local v5, boldSpan:Lco/vine/android/widget/TypefacesSpan;
    const/high16 v22, 0x7f07

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 878
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v24, 0x21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 880
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    const/16 v24, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 882
    add-int/lit8 v8, v8, 0x1

    .line 883
    goto/16 :goto_1

    .line 851
    .end local v5           #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v15           #p:Landroid/util/Pair;
    .end local v17           #sb:Landroid/text/SpannableStringBuilder;
    .end local v20           #span:Lco/vine/android/widget/StyledClickableSpan;
    .restart local v6       #comment:Lco/vine/android/api/VineComment;
    :cond_3
    iget-object v0, v6, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    move v9, v14

    .line 855
    .local v9, first:I
    iget-object v0, v6, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v18, v9, v22

    .line 856
    .local v18, second:I
    iget-object v0, v6, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v22, v22, v14

    add-int/lit8 v22, v22, 0x1

    iget-object v0, v6, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v14, v22, v23

    .line 858
    const/16 v22, 0x5

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v8, v0, :cond_4

    .line 860
    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 861
    add-int/lit8 v14, v14, 0x1

    .line 864
    :cond_4
    new-instance v22, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    iget-wide v0, v6, Lco/vine/android/api/VineComment;->userId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private hasPlayerPlaying()Z
    .locals 1

    .prologue
    .line 384
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
    .line 455
    iget-object v1, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 456
    iget-object v0, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 457
    .local v0, view:Lco/vine/android/player/SdkVideoView;
    new-instance v1, Lco/vine/android/widget/FeedAdapter$2;

    invoke-direct {v1, p0, p2}, Lco/vine/android/widget/FeedAdapter$2;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 467
    new-instance v1, Lco/vine/android/widget/FeedAdapter$3;

    invoke-direct {v1, p0, v0, p1}, Lco/vine/android/widget/FeedAdapter$3;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/player/SdkVideoView;I)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 478
    new-instance v1, Lco/vine/android/widget/FeedAdapter$4;

    invoke-direct {v1, p0}, Lco/vine/android/widget/FeedAdapter$4;-><init>(Lco/vine/android/widget/FeedAdapter;)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 485
    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    return-void
.end method

.method private preFetch(I)Z
    .locals 8
    .parameter "requestedPosition"

    .prologue
    .line 324
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VinePost;

    .line 325
    .local v3, nextPost:Lco/vine/android/api/VinePost;
    if-eqz v3, :cond_4

    .line 326
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 327
    invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getRequestKey(I)Lco/vine/android/util/video/VideoKey;

    move-result-object v4

    .line 328
    .local v4, nextUrl:Lco/vine/android/util/video/VideoKey;
    const-string v5, "Pre-fetch {}: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    iget-object v5, v3, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 330
    new-instance v1, Lco/vine/android/util/image/ImageKey;

    iget-object v5, v3, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    invoke-direct {v1, v5}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, imageKey:Lco/vine/android/util/image/ImageKey;
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 333
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #imageKey:Lco/vine/android/util/image/ImageKey;
    :cond_0
    iget-object v5, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 337
    new-instance v1, Lco/vine/android/util/image/ImageKey;

    iget-object v5, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    invoke-direct {v1, v5}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 338
    .restart local v1       #imageKey:Lco/vine/android/util/image/ImageKey;
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 340
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #imageKey:Lco/vine/android/util/image/ImageKey;
    :cond_1
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v4}, Lco/vine/android/client/AppController;->getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, nextPath:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 345
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    .end local v2           #nextPath:Ljava/lang/String;
    .end local v4           #nextUrl:Lco/vine/android/util/video/VideoKey;
    :goto_0
    const/4 v5, 0x1

    .line 355
    :goto_1
    return v5

    .line 347
    .restart local v2       #nextPath:Ljava/lang/String;
    .restart local v4       #nextUrl:Lco/vine/android/util/video/VideoKey;
    :cond_2
    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    .end local v2           #nextPath:Ljava/lang/String;
    .end local v4           #nextUrl:Lco/vine/android/util/video/VideoKey;
    :cond_3
    const-string v5, "{} is already fetched."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 354
    :cond_4
    const-string v5, "End of list, no pre-fetching: {} {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private refreshVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V
    .locals 6
    .parameter "position"
    .parameter "tag"

    .prologue
    .line 433
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 434
    .local v2, group:Landroid/view/ViewGroup;
    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    if-nez v3, :cond_0

    .line 435
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->getAttributes()Landroid/util/AttributeSet;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    .line 437
    :cond_0
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->stopPlayback()V

    .line 439
    :try_start_0
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    new-instance v3, Lco/vine/android/player/SdkVideoView;

    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lco/vine/android/player/SdkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 449
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const v4, 0x7f09003a

    invoke-virtual {v3, v4}, Lco/vine/android/player/SdkVideoView;->setId(I)V

    .line 450
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 451
    invoke-direct {p0, p1, p2}, Lco/vine/android/widget/FeedAdapter;->initVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    .line 452
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    iget-object v3, p2, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 443
    :catch_1
    move-exception v1

    .line 444
    .local v1, e2:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 445
    const-string v3, "Weird things are happening."

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 489
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

    .line 490
    .local v2, key:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 491
    .local v0, holder:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    if-eq p1, v3, :cond_0

    .line 492
    const-string v3, "Releasing player: {}"

    iget v4, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    iget-object v3, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v3}, Lco/vine/android/player/SdkVideoView;->suspend()V

    .line 494
    iget v3, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    goto :goto_0

    .line 497
    .end local v0           #holder:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    .end local v2           #key:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    :cond_1
    return-void
.end method

.method private resetStates(Z)V
    .locals 2
    .parameter "hasDataSetChanged"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 205
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    .line 206
    iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    .line 207
    iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 208
    iput v1, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    .line 209
    iput-boolean v1, p0, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 213
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 214
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 215
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 216
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 217
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 219
    :cond_0
    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "imageView"
    .parameter "bitmap"

    .prologue
    .line 966
    if-nez p2, :cond_0

    .line 967
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 968
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 969
    const/4 v0, 0x0

    .line 972
    :goto_0
    return v0

    .line 971
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 972
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setStyledLikers(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;ILco/vine/android/api/VinePagedData;)V
    .locals 34
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
    .line 723
    .local p3, likeData:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<Lco/vine/android/api/VineLike;>;"
    move-object/from16 v0, p3

    iget-object v14, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 724
    .local v14, likes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineLike;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 725
    .local v21, size:I
    if-nez v21, :cond_0

    .line 821
    :goto_0
    return-void

    .line 728
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 729
    .local v17, res:Landroid/content/res/Resources;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v26, text:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .local v11, indices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/16 v30, 0xa

    move/from16 v0, p2

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    .line 734
    const/16 v30, 0x3

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput v0, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likeType:I

    .line 735
    const v30, 0x7f0800a9

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v17

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 736
    .local v15, manyLikeThis:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x22

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v0, v15, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v23

    .line 740
    .local v23, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    .line 742
    .local v22, spannable:Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v24

    .line 743
    .local v24, start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 745
    .local v7, end:I
    new-instance v25, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v30, 0x2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->postId:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 748
    .local v25, styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v30, 0x7f07

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 749
    const/16 v30, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v7, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 750
    .end local v7           #end:I
    .end local v15           #manyLikeThis:Ljava/lang/String;
    .end local v22           #spannable:Landroid/text/Spannable;
    .end local v23           #spanned:Landroid/text/Spanned;
    .end local v24           #start:I
    .end local v25           #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_1
    const/16 v30, 0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 751
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput v0, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likeType:I

    .line 752
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lco/vine/android/api/VineLike;

    .line 753
    .local v20, singleLike:Lco/vine/android/api/VineLike;
    const v30, 0x7f0800aa

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    move-object/from16 v0, v17

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 755
    .local v18, sb:Landroid/text/SpannableStringBuilder;
    new-instance v25, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v31, 0x1

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lco/vine/android/api/VineLike;

    move-object/from16 v0, v30

    iget-wide v0, v0, Lco/vine/android/api/VineLike;->userId:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move/from16 v1, v31

    move-object/from16 v2, v30

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 757
    .restart local v25       #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v30, 0x7f07

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 758
    const/16 v30, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 760
    new-instance v5, Lco/vine/android/widget/TypefacesSpan;

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x3

    invoke-virtual/range {v31 .. v33}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v5, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 763
    .local v5, boldSpan:Lco/vine/android/widget/TypefacesSpan;
    const/16 v30, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 765
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 767
    .end local v5           #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    .end local v18           #sb:Landroid/text/SpannableStringBuilder;
    .end local v20           #singleLike:Lco/vine/android/api/VineLike;
    .end local v25           #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_2
    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput v0, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likeType:I

    .line 768
    const/4 v6, 0x0

    .line 770
    .local v6, count:I
    const/16 v19, -0x1

    .line 771
    .local v19, second:I
    new-instance v10, Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 773
    .local v10, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/vine/android/api/VineLike;

    .line 774
    .local v13, like:Lco/vine/android/api/VineLike;
    if-nez v6, :cond_3

    .line 776
    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const/4 v8, 0x0

    .line 778
    .local v8, first:I
    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v19

    .line 790
    :goto_2
    new-instance v27, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 791
    .local v27, thisPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-wide v0, v13, Lco/vine/android/api/VineLike;->userId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 779
    .end local v8           #first:I
    .end local v27           #thisPair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_3
    add-int/lit8 v30, v21, -0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_4

    .line 781
    const v30, 0x7f0800ab

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    move-object/from16 v0, v17

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 782
    .local v12, last:Ljava/lang/String;
    const/16 v30, 0x20

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    add-int/lit8 v8, v19, 0x3

    .line 784
    .restart local v8       #first:I
    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    add-int v19, v8, v30

    .line 785
    goto :goto_2

    .line 786
    .end local v8           #first:I
    .end local v12           #last:Ljava/lang/String;
    :cond_4
    const-string v30, ", "

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    add-int/lit8 v8, v19, 0x2

    .line 788
    .restart local v8       #first:I
    iget-object v0, v13, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    add-int v19, v8, v30

    goto/16 :goto_2

    .line 796
    .end local v8           #first:I
    .end local v13           #like:Lco/vine/android/api/VineLike;
    :cond_5
    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 798
    .restart local v18       #sb:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x0

    .line 802
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/Pair;

    .line 803
    .local v16, p:Landroid/util/Pair;
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 806
    .local v28, userId:J
    new-instance v25, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v30, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 808
    .restart local v25       #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v30, 0x7f07

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 809
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v32, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v31

    move/from16 v3, v30

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 813
    new-instance v5, Lco/vine/android/widget/TypefacesSpan;

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x3

    invoke-virtual/range {v31 .. v33}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v5, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 815
    .restart local v5       #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/16 v32, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v30

    move/from16 v3, v32

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 817
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 819
    .end local v5           #boldSpan:Lco/vine/android/widget/TypefacesSpan;
    .end local v16           #p:Landroid/util/Pair;
    .end local v25           #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    .end local v28           #userId:J
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private shouldShowThumbnail(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 541
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
    .line 977
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
    .locals 27
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 546
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    .line 548
    .local v14, position:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 550
    .local v10, h:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lco/vine/android/widget/FeedAdapter;->shouldShowThumbnail(I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 551
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 554
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->bindCursorToPost(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;

    move-result-object v15

    .line 557
    .local v15, post:Lco/vine/android/api/VinePost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 559
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->bindCursorToPost(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 561
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->bindCursorToPost(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 563
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 565
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 568
    :cond_2
    iget-object v0, v15, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    iget-object v0, v15, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 570
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const v24, 0x7f020004

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 582
    :cond_3
    :goto_0
    iget-object v0, v15, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    iput-boolean v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->hasVideoImage:Z

    .line 584
    iget-boolean v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->hasVideoImage:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 585
    new-instance v21, Lco/vine/android/util/image/ImageKey;

    iget-object v0, v15, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 586
    .local v21, videoImageKey:Lco/vine/android/util/image/ImageKey;
    move-object/from16 v0, v21

    iput-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mThumbnails:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Bitmap;

    .line 588
    .local v22, videoThumbnail:Landroid/graphics/Bitmap;
    if-eqz v22, :cond_c

    .line 589
    const-string v23, "setting thumbnail for {}"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->isVideoImageLoaded:Z

    .line 598
    .end local v21           #videoImageKey:Lco/vine/android/util/image/ImageKey;
    .end local v22           #videoThumbnail:Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    iget-object v0, v15, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 599
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v23, v0

    iget-object v0, v15, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 606
    .local v17, res:Landroid/content/res/Resources;
    iget-object v0, v15, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    iget-object v0, v15, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_e

    .line 607
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->location:Landroid/widget/TextView;

    move-object/from16 v23, v0

    iget-object v0, v15, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lco/vine/android/api/VineVenue;->venueName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    sget-object v23, Lco/vine/android/api/VineVenue;->iconMap:Landroid/util/SparseIntArray;

    iget-object v0, v15, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lco/vine/android/api/VineVenue;->displayType:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/util/SparseIntArray;->get(I)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 609
    .local v9, d:Landroid/graphics/drawable/Drawable;
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->locationIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->locationContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 614
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    :goto_4
    iput v14, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->position:I

    .line 615
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lco/vine/android/player/OnListVideoClickListener;->setPosition(I)V

    .line 616
    iget-wide v0, v15, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    iput-wide v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->postId:J

    .line 618
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lco/vine/android/widget/FeedAdapter;->shouldShowThumbnail(I)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 619
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 623
    :cond_5
    iget-object v0, v15, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 624
    .local v20, usernameString:Ljava/lang/String;
    sget-boolean v23, Lcom/edisonwang/android/slog/SLog;->IS_LOG_ON:Z

    if-eqz v23, :cond_7

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 626
    .local v16, quality:Ljava/lang/Boolean;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_f

    :cond_6
    const-string v23, "High Quality"

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 629
    .end local v16           #quality:Ljava/lang/Boolean;
    :cond_7
    new-instance v18, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 630
    .local v18, sb:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 632
    new-instance v19, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v23, 0x1

    iget-wide v0, v15, Lco/vine/android/api/VinePost;->userId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 634
    .local v19, styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v23, 0x7f07

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 635
    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 638
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    new-instance v24, Lco/vine/android/widget/FeedAdapter$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lco/vine/android/widget/FeedAdapter$5;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->username:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 645
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->username:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->timestamp:Landroid/widget/TextView;

    move-object/from16 v23, v0

    iget-wide v0, v15, Lco/vine/android/api/VinePost;->created:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comment:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    new-instance v24, Lco/vine/android/widget/FeedAdapter$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lco/vine/android/widget/FeedAdapter$6;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object v12, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likersContainer:Landroid/widget/RelativeLayout;

    .line 658
    .local v12, likersContainer:Landroid/widget/RelativeLayout;
    iget-object v0, v15, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    iget-object v0, v15, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_10

    .line 659
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 660
    iget v0, v15, Lco/vine/android/api/VinePost;->likesCount:I

    move/from16 v23, v0

    iget-object v0, v15, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v10, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setStyledLikers(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;ILco/vine/android/api/VinePagedData;)V

    .line 666
    :goto_6
    iget-object v7, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->commentsContainer:Landroid/widget/RelativeLayout;

    .line 667
    .local v7, commentsContainer:Landroid/widget/RelativeLayout;
    iget-object v0, v15, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    iget-object v0, v15, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_12

    .line 668
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 669
    iget-object v0, v15, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lco/vine/android/widget/FeedAdapter;->getStyledComments(Lco/vine/android/api/VinePagedData;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 670
    .local v8, commentsSb:Landroid/text/SpannableStringBuilder;
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 671
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget v0, v15, Lco/vine/android/api/VinePost;->commentsCount:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_11

    .line 673
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->commentType:I

    .line 674
    const v23, 0x7f0800ac

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget v0, v15, Lco/vine/android/api/VinePost;->commentsCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 676
    .local v13, olderComments:Ljava/lang/String;
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderCommentsContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 677
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderComments:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderCommentsContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    new-instance v24, Lco/vine/android/widget/FeedAdapter$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lco/vine/android/widget/FeedAdapter$7;-><init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    .end local v8           #commentsSb:Landroid/text/SpannableStringBuilder;
    .end local v13           #olderComments:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;

    move-object/from16 v23, v0

    iget-wide v0, v15, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Lco/vine/android/LikeCache;->contains(J)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mLikeCache:Lco/vine/android/LikeCache;

    move-object/from16 v23, v0

    iget-wide v0, v15, Lco/vine/android/api/VinePost;->postId:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Lco/vine/android/LikeCache;->isLike(J)Z

    move-result v11

    .line 698
    .local v11, liked:Z
    iput-boolean v11, v15, Lco/vine/android/api/VinePost;->liked:Z

    .line 702
    :goto_8
    if-eqz v11, :cond_14

    .line 703
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    const v24, 0x7f020054

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 707
    :goto_9
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 708
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->more:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 711
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->more:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lco/vine/android/widget/FeedAdapter;->initVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    .line 714
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    if-nez v14, :cond_8

    .line 715
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->play(I)V

    .line 716
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/widget/FeedAdapter;->mFirstPlayed:Z

    .line 718
    :cond_8
    return-void

    .line 572
    .end local v7           #commentsContainer:Landroid/widget/RelativeLayout;
    .end local v11           #liked:Z
    .end local v12           #likersContainer:Landroid/widget/RelativeLayout;
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v18           #sb:Landroid/text/SpannableStringBuilder;
    .end local v19           #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    .end local v20           #usernameString:Ljava/lang/String;
    :cond_9
    new-instance v6, Lco/vine/android/util/image/ImageKey;

    iget-object v0, v15, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 573
    .local v6, avatarKey:Lco/vine/android/util/image/ImageKey;
    iput-object v6, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mAvatars:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 575
    .local v5, avatar:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_a

    .line 576
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    goto/16 :goto_0

    .line 578
    :cond_a
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    goto/16 :goto_0

    .line 582
    .end local v5           #avatar:Landroid/graphics/Bitmap;
    .end local v6           #avatarKey:Lco/vine/android/util/image/ImageKey;
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 592
    .restart local v21       #videoImageKey:Lco/vine/android/util/image/ImageKey;
    .restart local v22       #videoThumbnail:Landroid/graphics/Bitmap;
    :cond_c
    const-string v23, "fetching thumbnail for {}"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v23

    move/from16 v0, v23

    iput-boolean v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->isVideoImageLoaded:Z

    goto/16 :goto_2

    .line 602
    .end local v21           #videoImageKey:Lco/vine/android/util/image/ImageKey;
    .end local v22           #videoThumbnail:Landroid/graphics/Bitmap;
    :cond_d
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 612
    .restart local v17       #res:Landroid/content/res/Resources;
    :cond_e
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->locationContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 626
    .restart local v16       #quality:Ljava/lang/Boolean;
    .restart local v20       #usernameString:Ljava/lang/String;
    :cond_f
    const-string v23, "Low Quality"

    goto/16 :goto_5

    .line 662
    .end local v16           #quality:Ljava/lang/Boolean;
    .restart local v12       #likersContainer:Landroid/widget/RelativeLayout;
    .restart local v18       #sb:Landroid/text/SpannableStringBuilder;
    .restart local v19       #styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_10
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 687
    .restart local v7       #commentsContainer:Landroid/widget/RelativeLayout;
    .restart local v8       #commentsSb:Landroid/text/SpannableStringBuilder;
    :cond_11
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderCommentsContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 688
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->commentType:I

    goto/16 :goto_7

    .line 691
    .end local v8           #commentsSb:Landroid/text/SpannableStringBuilder;
    :cond_12
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 700
    :cond_13
    iget-boolean v11, v15, Lco/vine/android/api/VinePost;->liked:Z

    .restart local v11       #liked:Z
    goto/16 :goto_8

    .line 705
    :cond_14
    iget-object v0, v10, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    const v24, 0x7f02002e

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_9
.end method

.method public getCurrentVideoView()Lco/vine/android/player/SdkVideoView;
    .locals 1

    .prologue
    .line 962
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 420
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLastPlayer()Lco/vine/android/player/SdkVideoView;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    return-object v0
.end method

.method public getPlayer(IZ)Lco/vine/android/player/SdkVideoView;
    .locals 1
    .parameter "position"
    .parameter "b"

    .prologue
    .line 394
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
    .line 403
    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mListView:Landroid/widget/ListView;

    .line 404
    .local v1, listView:Landroid/widget/ListView;
    const/4 v2, 0x0

    .line 405
    .local v2, offset:I
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

    if-eqz v4, :cond_0

    .line 406
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

    invoke-interface {v4, p0}, Lco/vine/android/ViewOffsetResolver;->getOffset(Landroid/widget/BaseAdapter;)I

    move-result v2

    .line 408
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v2

    .line 409
    .local v0, firstPosition:I
    sub-int v3, p1, v0

    .line 410
    .local v3, wantedChild:I
    if-ltz v3, :cond_1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 411
    :cond_1
    const-string v4, "Unable to get view for desired position, because it\'s not being displayed on screen."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->w(Ljava/lang/String;)V

    .line 412
    const/4 v4, 0x0

    .line 415
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
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v8, 0x7f090037

    .line 505
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 507
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 508
    .local v0, container:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 509
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 510
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 511
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    const v5, 0x7f09003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #container:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 514
    .restart local v0       #container:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 515
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 516
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    const v5, 0x7f090038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 519
    .local v1, imageContainer:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 520
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 521
    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->mDimen:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 522
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    new-instance v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    invoke-direct {v3, v4}, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;-><init>(Landroid/view/View;)V

    .line 525
    .local v3, tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    const v5, 0x7f09003a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lco/vine/android/player/SdkVideoView;

    iput-object v5, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 526
    new-instance v5, Lco/vine/android/player/OnListVideoClickListener;

    invoke-direct {v5, p0}, Lco/vine/android/player/OnListVideoClickListener;-><init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V

    iput-object v5, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;

    .line 527
    iget-object v5, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 528
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 531
    const-string v5, "Get view: {}"

    iget-object v6, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    return-object v4
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/widget/FeedAdapter;->resetStates(Z)V

    .line 202
    return-void
.end method

.method onLoadFinish(Lco/vine/android/widget/FeedAdapter$FeedViewHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 500
    iget-object v0, p1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 501
    return-void
.end method

.method public declared-synchronized onPause(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 890
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    .line 891
    iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z

    .line 892
    const/high16 v0, -0x8000

    iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 893
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoTimer;->release()V

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 897
    :cond_0
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 898
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/widget/FeedAdapter;->resetStates(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    monitor-exit p0

    return-void

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume(Z)V
    .locals 1
    .parameter "focused"

    .prologue
    .line 903
    monitor-enter p0

    const/high16 v0, -0x8000

    :try_start_0
    iput v0, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 904
    iput-boolean p1, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z

    .line 905
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V

    .line 906
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoTimer;->release()V

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 910
    :cond_0
    new-instance v0, Lco/vine/android/player/SdkVideoTimer;

    invoke-direct {v0}, Lco/vine/android/player/SdkVideoTimer;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    .line 911
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mTimer:Lco/vine/android/player/SdkVideoTimer;

    invoke-virtual {v0, p0}, Lco/vine/android/player/SdkVideoTimer;->start(Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;)V

    .line 912
    invoke-static {}, Lco/vine/android/util/video/VideoCache;->resetAverageSpeed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    monitor-exit p0

    return-void

    .line 903
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
    .line 916
    .local p1, videos:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/video/VideoKey;Lco/vine/android/util/video/UrlVideo;>;"
    const-string v3, "CALLBACK onVideoPathObtained"

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 917
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

    .line 918
    .local v1, key:Lco/vine/android/util/video/VideoKey;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/video/UrlVideo;

    .line 919
    .local v2, video:Lco/vine/android/util/video/UrlVideo;
    invoke-virtual {v2}, Lco/vine/android/util/video/UrlVideo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 920
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

    .line 921
    iget-object v3, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    if-ne v3, v4, :cond_0

    .line 922
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V

    goto :goto_0

    .line 926
    .end local v1           #key:Lco/vine/android/util/video/VideoKey;
    .end local v2           #video:Lco/vine/android/util/video/UrlVideo;
    :cond_1
    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 6
    .parameter "requestedPosition"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    const-string v4, "play task executing with position {} "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    iget-boolean v4, p0, Lco/vine/android/widget/FeedAdapter;->mHasFocus:Z

    if-eqz v4, :cond_7

    .line 281
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 282
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mQualities:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lco/vine/android/widget/FeedAdapter;->shouldUseHQ()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    .line 285
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    add-int/lit8 v4, p1, 0x2

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    .line 288
    :cond_1
    const-string v4, "{} is in cache or it is already pre-fetched."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    const-string v4, "playing file at position {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->playFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    :cond_3
    :try_start_1
    const-string v4, "Real fetch for {}."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 294
    invoke-direct {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getRequestKey(I)Lco/vine/android/util/video/VideoKey;

    move-result-object v2

    .line 295
    .local v2, url:Lco/vine/android/util/video/VideoKey;
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4, v2}, Lco/vine/android/client/AppController;->getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, path:Ljava/lang/String;
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    add-int/lit8 v4, p1, 0x2

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->preFetch(I)Z

    .line 299
    :cond_4
    if-eqz v0, :cond_5

    .line 300
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    const-string v4, "playing file at position {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->playFile(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    .end local v0           #path:Ljava/lang/String;
    .end local v2           #url:Lco/vine/android/util/video/VideoKey;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 304
    .restart local v0       #path:Ljava/lang/String;
    .restart local v2       #url:Lco/vine/android/util/video/VideoKey;
    :cond_5
    :try_start_2
    iput p1, p0, Lco/vine/android/widget/FeedAdapter;->mShouldBePlaying:I

    .line 305
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v4, "{} is not in app cache yet."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    .line 308
    invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;

    move-result-object v3

    .line 309
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 310
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 311
    .local v1, tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    iget-object v4, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 315
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    .end local v2           #url:Lco/vine/android/util/video/VideoKey;
    .end local v3           #view:Landroid/view/View;
    :cond_6
    const-string v4, "mPosts is {} or the requested position has no post object in it yet, return -1."

    iget-object v5, p0, Lco/vine/android/widget/FeedAdapter;->mPosts:Landroid/util/SparseArray;

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 319
    :cond_7
    const-string v4, "not playing because not focused."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized playCurrentPosition()V
    .locals 4

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/widget/FeedAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playFile(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 222
    monitor-enter p0

    if-gez p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 225
    :cond_1
    :try_start_0
    const-string v4, "Playing item: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0, p1}, Lco/vine/android/widget/FeedAdapter;->getViewAtPosition(I)Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, currentView:Landroid/view/View;
    if-nez v1, :cond_2

    .line 229
    const-string v4, "Item is not visible: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    .end local v1           #currentView:Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 232
    .restart local v1       #currentView:Landroid/view/View;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 233
    .local v3, tag:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    if-eqz v3, :cond_0

    .line 236
    iget-boolean v4, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->isVideoImageLoaded:Z

    if-nez v4, :cond_3

    iget-boolean v4, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->hasVideoImage:Z

    if-eqz v4, :cond_3

    .line 237
    const-string v4, "NOT LOADED"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    .line 238
    const-string v4, "Waiting for video image to load: {}."

    iget-object v5, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    iget-object v5, v5, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 244
    .local v0, currentVideoView:Lco/vine/android/player/SdkVideoView;
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    if-eq v0, v4, :cond_4

    .line 245
    const-string v4, "NOT PLAYER"

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->stopCurrentPlayer()V

    .line 249
    :cond_4
    iget-object v4, p0, Lco/vine/android/widget/FeedAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    .local v2, newPath:Ljava/lang/String;
    if-nez v2, :cond_5

    .line 252
    const-string v4, "Path was cleared."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_5
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 257
    invoke-direct {p0, p1, v3}, Lco/vine/android/widget/FeedAdapter;->refreshVideoView(ILco/vine/android/widget/FeedAdapter$FeedViewHolder;)V

    .line 258
    iget-object v0, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    .line 259
    iget-boolean v4, p0, Lco/vine/android/widget/FeedAdapter;->mNeedReleaseOtherPlayers:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    iget v5, p0, Lco/vine/android/widget/FeedAdapter;->maxPlayer:I

    if-lt v4, v5, :cond_6

    .line 260
    iget-object v4, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0, v4}, Lco/vine/android/widget/FeedAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    .line 262
    :cond_6
    const-string v4, "Start playing by set path."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, v2}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 264
    iget v4, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lco/vine/android/widget/FeedAdapter;->currentPlayerCount:I

    .line 272
    :goto_1
    invoke-virtual {v0, p1}, Lco/vine/android/player/SdkVideoView;->setPlayingPosition(I)V

    .line 273
    iget-object v4, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->listener:Lco/vine/android/player/OnListVideoClickListener;

    invoke-virtual {v4, p1}, Lco/vine/android/player/OnListVideoClickListener;->setPosition(I)V

    .line 274
    iput p1, p0, Lco/vine/android/widget/FeedAdapter;->mCurrentPlaying:I

    .line 275
    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    goto/16 :goto_0

    .line 266
    :cond_7
    iget-object v4, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_8

    .line 267
    iget-object v4, v3, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 269
    :cond_8
    const-string v4, "Start playing by calling start."

    invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
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
    .line 929
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 932
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

    .line 933
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;

    .line 934
    .local v1, holder:Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
    if-nez v1, :cond_1

    .line 935
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 938
    :cond_1
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_2

    .line 939
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/util/image/UrlImage;

    .line 940
    .local v3, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 941
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v7}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    .line 942
    const-string v6, "found for avatar."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 945
    .end local v3           #image:Lco/vine/android/util/image/UrlImage;
    :cond_2
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_0

    .line 946
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/util/image/UrlImage;

    .line 947
    .restart local v3       #image:Lco/vine/android/util/image/UrlImage;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 948
    const-string v6, "found for video."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 949
    iget-object v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v7}, Lco/vine/android/widget/FeedAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v6

    iput-boolean v6, v1, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->isVideoImageLoaded:Z

    .line 950
    invoke-virtual {p0}, Lco/vine/android/widget/FeedAdapter;->playCurrentPosition()V

    goto :goto_0

    .line 955
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

    .line 956
    .local v0, h:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    iget-object v6, p0, Lco/vine/android/widget/FeedAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 958
    .end local v0           #h:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/FeedAdapter$FeedViewHolder;>;"
    :cond_4
    return-void
.end method

.method public setOffsetResolver(Lco/vine/android/ViewOffsetResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 195
    iput-object p1, p0, Lco/vine/android/widget/FeedAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;

    .line 196
    return-void
.end method

.method public stopCurrentPlayer()V
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Lco/vine/android/widget/FeedAdapter;->hasPlayerPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lco/vine/android/widget/FeedAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V

    .line 391
    :cond_0
    return-void
.end method
