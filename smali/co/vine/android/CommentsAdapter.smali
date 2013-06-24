.class public Lco/vine/android/CommentsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "CommentsAdapter.java"


# static fields
.field private static final SPAN_FLAGS:I = 0x21


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

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

.field private mVineGreen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;)V
    .locals 5
    .parameter "context"
    .parameter "appController"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 53
    const/4 v0, 0x2

    invoke-direct {p0, p1, v4, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Lco/vine/android/widget/TypefacesSpan;

    invoke-static {p1}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    .line 56
    iput-object p2, p0, Lco/vine/android/CommentsAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 57
    iput-object p3, p0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    .line 59
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 79
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/vine/android/CommentViewHolder;

    .line 80
    .local v8, h:Lco/vine/android/CommentViewHolder;
    const/16 v18, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 81
    .local v16, username:Ljava/lang/String;
    const/16 v18, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, comment:Ljava/lang/String;
    const/16 v18, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 85
    .local v6, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    new-instance v18, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 87
    .local v5, commentSb:Landroid/text/SpannableStringBuilder;
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    .local v13, ssb:Landroid/text/SpannableStringBuilder;
    iget-object v0, v8, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 91
    iget-object v0, v8, Lco/vine/android/CommentViewHolder;->timestamp:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v12, v0, v1}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Lco/vine/android/CommentViewHolder;->commentId:Ljava/lang/String;

    .line 94
    const/16 v18, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v8, Lco/vine/android/CommentViewHolder;->userId:J

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v13, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 98
    new-instance v14, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v18, 0x1

    iget-wide v0, v8, Lco/vine/android/CommentViewHolder;->userId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 101
    .local v14, styledClickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 102
    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v13, v14, v0, v1, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 105
    if-eqz v6, :cond_2

    .line 106
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-static {v6, v5, v0}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;I)V

    .line 107
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/api/VineEntity;

    .line 108
    .local v7, entity:Lco/vine/android/api/VineEntity;
    invoke-virtual {v7}, Lco/vine/android/api/VineEntity;->isUserType()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 109
    new-instance v17, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v18, 0x1

    iget-wide v0, v7, Lco/vine/android/api/VineEntity;->id:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 112
    .local v17, usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 113
    iget v0, v7, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v18, v0

    iget v0, v7, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v19, v0

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v13, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_0

    .line 114
    .end local v17           #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_1
    invoke-virtual {v7}, Lco/vine/android/api/VineEntity;->isTagType()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 115
    new-instance v17, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v18, 0x3

    iget-object v0, v7, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 118
    .restart local v17       #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 119
    iget v0, v7, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v18, v0

    iget v0, v7, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v19, v0

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v13, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_0

    .line 124
    .end local v7           #entity:Lco/vine/android/api/VineEntity;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v17           #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_2
    iget-object v0, v8, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/16 v18, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 127
    .local v15, url:Ljava/lang/String;
    invoke-static {v15}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 128
    iget-object v0, v8, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f020009

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_1
    return-void

    .line 130
    :cond_3
    new-instance v10, Lco/vine/android/util/image/ImageKey;

    invoke-direct {v10, v15}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 131
    .local v10, key:Lco/vine/android/util/image/ImageKey;
    iput-object v10, v8, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 133
    .local v11, profileImage:Landroid/graphics/Bitmap;
    iget-object v0, v8, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 65
    .local v1, layout:Landroid/widget/RelativeLayout;
    new-instance v0, Lco/vine/android/CommentViewHolder;

    invoke-direct {v0}, Lco/vine/android/CommentViewHolder;-><init>()V

    .line 66
    .local v0, h:Lco/vine/android/CommentViewHolder;
    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    .line 67
    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    .line 68
    iget-object v2, v0, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 69
    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->timestamp:Landroid/widget/TextView;

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v2, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
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
    .line 138
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v3, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lco/vine/android/CommentViewHolder;>;>;"
    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 141
    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 142
    .local v5, wf:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/CommentViewHolder;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/CommentViewHolder;

    .line 143
    .local v4, vh:Lco/vine/android/CommentViewHolder;
    if-nez v4, :cond_1

    .line 144
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v6, v4, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_0

    .line 146
    iget-object v6, v4, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    .line 147
    .local v2, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v2, :cond_0

    .line 148
    iget-object v6, v4, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    iget-object v7, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 152
    .end local v2           #image:Lco/vine/android/util/image/UrlImage;
    .end local v4           #vh:Lco/vine/android/CommentViewHolder;
    .end local v5           #wf:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/CommentViewHolder;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 153
    .restart local v5       #wf:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/CommentViewHolder;>;"
    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    .end local v5           #wf:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/CommentViewHolder;>;"
    :cond_3
    return-void
.end method
