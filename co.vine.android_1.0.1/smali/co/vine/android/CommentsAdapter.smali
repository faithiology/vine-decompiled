.class public Lco/vine/android/CommentsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "CommentsAdapter.java"


# static fields
.field private static final COMMENT_SPAN:I = 0x2

.field private static final USERNAME_SPAN:I = 0x1


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mBoldSpan:Landroid/text/style/StyleSpan;

.field final mListener:Lco/vine/android/widget/SpanClickListener;

.field final mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/CommentViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "appController"
    .parameter "listener"

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mBoldSpan:Landroid/text/style/StyleSpan;

    .line 53
    iput-object p2, p0, Lco/vine/android/CommentsAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 54
    iput-object p3, p0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    .line 55
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 75
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/CommentViewHolder;

    .line 76
    .local v3, h:Lco/vine/android/CommentViewHolder;
    const/4 v11, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, username:Ljava/lang/String;
    const/16 v11, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, comment:Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .local v7, sb:Landroid/text/SpannableStringBuilder;
    iget-object v11, p0, Lco/vine/android/CommentsAdapter;->mBoldSpan:Landroid/text/style/StyleSpan;

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    new-instance v8, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v11, 0x1

    iget-wide v12, v3, Lco/vine/android/CommentViewHolder;->userId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, p0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    invoke-direct {v8, v11, v12, v13}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 83
    .local v8, styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/high16 v11, 0x7f07

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 84
    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v7, v8, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 85
    new-instance v2, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v11, 0x2

    iget-wide v12, v3, Lco/vine/android/CommentViewHolder;->userId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, p0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    invoke-direct {v2, v11, v12, v13}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 87
    .local v2, commentSpan:Lco/vine/android/widget/StyledClickableSpan;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v7, v2, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 90
    iget-object v11, v3, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v11, v3, Lco/vine/android/CommentViewHolder;->timestamp:Landroid/widget/TextView;

    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lco/vine/android/CommentViewHolder;->commentId:Ljava/lang/String;

    .line 94
    const/4 v11, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v3, Lco/vine/android/CommentViewHolder;->userId:J

    .line 96
    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, url:Ljava/lang/String;
    iget-object v11, p0, Lco/vine/android/CommentsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 98
    iget-object v11, v3, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    const v12, 0x7f020004

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v4, Lco/vine/android/util/image/ImageKey;

    invoke-direct {v4, v9}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 101
    .local v4, key:Lco/vine/android/util/image/ImageKey;
    iput-object v4, v3, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    .line 102
    iget-object v11, p0, Lco/vine/android/CommentsAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v11, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 103
    .local v5, profileImage:Landroid/graphics/Bitmap;
    iget-object v11, v3, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 61
    .local v1, layout:Landroid/widget/RelativeLayout;
    new-instance v0, Lco/vine/android/CommentViewHolder;

    invoke-direct {v0}, Lco/vine/android/CommentViewHolder;-><init>()V

    .line 62
    .local v0, h:Lco/vine/android/CommentViewHolder;
    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    .line 63
    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    .line 64
    iget-object v2, v0, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 65
    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->timestamp:Landroid/widget/TextView;

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-object v1
.end method

.method public updateProfileImages(Ljava/util/HashMap;)V
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
    .line 108
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v4, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/CommentViewHolder;>;"
    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 110
    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/CommentViewHolder;

    .line 111
    .local v5, vh:Lco/vine/android/CommentViewHolder;
    if-eqz v5, :cond_1

    iget-object v6, v5, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_1

    .line 112
    iget-object v6, v5, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/util/image/UrlImage;

    .line 113
    .local v3, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v3, :cond_0

    .line 114
    iget-object v6, v5, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    .end local v3           #image:Lco/vine/android/util/image/UrlImage;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 117
    :cond_1
    if-nez v5, :cond_0

    .line 118
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v5           #vh:Lco/vine/android/CommentViewHolder;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CommentViewHolder;

    .line 122
    .local v0, h:Lco/vine/android/CommentViewHolder;
    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 124
    .end local v0           #h:Lco/vine/android/CommentViewHolder;
    :cond_3
    return-void
.end method
