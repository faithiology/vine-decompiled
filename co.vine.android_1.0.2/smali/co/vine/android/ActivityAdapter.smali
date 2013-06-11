.class public Lco/vine/android/ActivityAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ActivityAdapter.java"


# static fields
.field private static final MESSAGE_SPAN:I = 0x2

.field public static final NUM_VIEW_TYPES:I = 0x3

.field private static final USERNAME_SPAN:I = 0x1

.field public static final VIEW_TYPE_NO_IMAGES:I = 0x2

.field public static final VIEW_TYPE_ONE_IMAGE:I = 0x0

.field public static final VIEW_TYPE_TWO_IMAGES:I = 0x1


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mListener:Lco/vine/android/widget/SpanClickListener;

.field private mUsernameSpans:[Landroid/text/style/StyleSpan;

.field private mViewClickListener:Landroid/view/View$OnClickListener;

.field private mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/widget/ActivityViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;Landroid/view/View$OnClickListener;I)V
    .locals 3
    .parameter "context"
    .parameter "appController"
    .parameter "listener"
    .parameter "viewClickListener"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p5}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 63
    iput-object p2, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    .line 65
    iput-object p3, p0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    .line 66
    iput-object p4, p0, Lco/vine/android/ActivityAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/style/StyleSpan;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lco/vine/android/ActivityAdapter;->mUsernameSpans:[Landroid/text/style/StyleSpan;

    .line 68
    return-void
.end method

.method private setAvatar(Landroid/content/Context;Lco/vine/android/widget/ActivityViewHolder;Ljava/lang/String;)V
    .locals 4
    .parameter "c"
    .parameter "h"
    .parameter "avatarUrl"

    .prologue
    .line 145
    invoke-static {p1, p3}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p2, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    :goto_0
    iget-object v1, p2, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p2, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    iget-wide v2, p2, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 154
    return-void

    .line 148
    :cond_0
    new-instance v0, Lco/vine/android/util/image/ImageKey;

    invoke-direct {v0, p3}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, key:Lco/vine/android/util/image/ImageKey;
    iput-object v0, p2, Lco/vine/android/widget/ActivityViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    .line 150
    iget-object v1, p2, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2, v0}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "v"
    .parameter "bmp"

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    if-nez p2, :cond_1

    .line 206
    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/widget/ActivityViewHolder;

    .line 97
    .local v9, h:Lco/vine/android/widget/ActivityViewHolder;
    const/16 v18, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v9, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    .line 98
    const/16 v18, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v9, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    .line 99
    iget-object v0, v9, Lco/vine/android/widget/ActivityViewHolder;->byline:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/16 v18, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Lco/vine/android/widget/ActivityViewHolder;->type:I

    .line 103
    const/16 v18, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, avatarUrl:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    const/4 v10, 0x1

    .line 105
    .local v10, hasAvatar:Z
    :goto_0
    const/16 v18, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v11, 0x1

    .line 107
    .local v11, hasTarget:Z
    :goto_1
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9, v3}, Lco/vine/android/ActivityAdapter;->setAvatar(Landroid/content/Context;Lco/vine/android/widget/ActivityViewHolder;Ljava/lang/String;)V

    .line 109
    new-instance v16, Lco/vine/android/util/image/ImageKey;

    const/16 v18, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 110
    .local v16, targetKey:Lco/vine/android/util/image/ImageKey;
    iget-object v0, v9, Lco/vine/android/widget/ActivityViewHolder;->targetUserImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 111
    move-object/from16 v0, v16

    iput-object v0, v9, Lco/vine/android/widget/ActivityViewHolder;->targetImageKey:Lco/vine/android/util/image/ImageKey;

    .line 116
    .end local v16           #targetKey:Lco/vine/android/util/image/ImageKey;
    :cond_0
    :goto_2
    const/16 v18, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, contentLine:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mUsernameSpans:[Landroid/text/style/StyleSpan;

    move-object/from16 v18, v0

    const/16 v19, 0x3b

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v6, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v13

    .line 120
    .local v13, spanned:Landroid/text/Spanned;
    iget-object v7, v9, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    .line 121
    .local v7, contentTv:Landroid/widget/TextView;
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 124
    .local v5, clickSpannable:Landroid/text/Spannable;
    const/16 v18, 0x0

    invoke-interface {v13}, Landroid/text/Spanned;->length()I

    move-result v19

    const-class v20, Landroid/text/style/StyleSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v13, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/StyleSpan;

    .line 126
    .local v14, spans:[Landroid/text/style/StyleSpan;
    const/16 v18, 0x0

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 127
    .local v15, start:I
    const/16 v18, 0x0

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 129
    .local v8, end:I
    new-instance v17, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v18, 0x1

    iget-wide v0, v9, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 131
    .local v17, usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x7f07

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 132
    new-instance v4, Lco/vine/android/widget/TypefacesSpan;

    const/16 v18, 0x0

    invoke-static/range {p2 .. p2}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 134
    .local v4, bold:Lco/vine/android/widget/TypefacesSpan;
    const/16 v18, 0x21

    move/from16 v0, v18

    invoke-interface {v5, v4, v15, v8, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 135
    const/16 v18, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v15, v8, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 138
    new-instance v12, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v18, 0x2

    iget-wide v0, v9, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v12, v0, v1, v2}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 140
    .local v12, messageSpan:Lco/vine/android/widget/StyledClickableSpan;
    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v18

    const/16 v19, 0x21

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v5, v12, v8, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 142
    return-void

    .line 104
    .end local v4           #bold:Lco/vine/android/widget/TypefacesSpan;
    .end local v5           #clickSpannable:Landroid/text/Spannable;
    .end local v6           #contentLine:Ljava/lang/String;
    .end local v7           #contentTv:Landroid/widget/TextView;
    .end local v8           #end:I
    .end local v10           #hasAvatar:Z
    .end local v11           #hasTarget:Z
    .end local v12           #messageSpan:Lco/vine/android/widget/StyledClickableSpan;
    .end local v13           #spanned:Landroid/text/Spanned;
    .end local v14           #spans:[Landroid/text/style/StyleSpan;
    .end local v15           #start:I
    .end local v17           #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 105
    .restart local v10       #hasAvatar:Z
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 112
    .restart local v11       #hasTarget:Z
    :cond_3
    if-eqz v10, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9, v3}, Lco/vine/android/ActivityAdapter;->setAvatar(Landroid/content/Context;Lco/vine/android/widget/ActivityViewHolder;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0, p1}, Lco/vine/android/ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 159
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 160
    .local v1, hasAvatar:Z
    :goto_0
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 161
    .local v2, hasTarget:Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 166
    :goto_2
    return v3

    .end local v1           #hasAvatar:Z
    .end local v2           #hasTarget:Z
    :cond_0
    move v1, v4

    .line 159
    goto :goto_0

    .restart local v1       #hasAvatar:Z
    :cond_1
    move v2, v4

    .line 160
    goto :goto_1

    .line 163
    .restart local v2       #hasTarget:Z
    :cond_2
    if-eqz v1, :cond_3

    move v3, v4

    .line 164
    goto :goto_2

    .line 166
    :cond_3
    const/4 v3, 0x2

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x3

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "root"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 75
    .local v0, hasAvatar:Z
    :goto_0
    const/4 v6, 0x5

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    .line 76
    .local v1, hasTarget:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f030001

    invoke-virtual {v4, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, view:Landroid/view/View;
    :goto_2
    new-instance v2, Lco/vine/android/widget/ActivityViewHolder;

    invoke-direct {v2, v3}, Lco/vine/android/widget/ActivityViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    .local v2, holder:Lco/vine/android/widget/ActivityViewHolder;
    iget-object v4, v2, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 89
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object v4, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v3

    .end local v0           #hasAvatar:Z
    .end local v1           #hasTarget:Z
    .end local v2           #holder:Lco/vine/android/widget/ActivityViewHolder;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    move v0, v5

    .line 74
    goto :goto_0

    .restart local v0       #hasAvatar:Z
    :cond_1
    move v1, v5

    .line 75
    goto :goto_1

    .line 79
    .restart local v1       #hasTarget:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f030002

    invoke-virtual {v4, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_2

    .line 83
    .end local v3           #view:Landroid/view/View;
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/high16 v6, 0x7f03

    invoke-virtual {v4, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_2
.end method

.method public setUserImages(Ljava/util/HashMap;)V
    .locals 9
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
    .line 176
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v6, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lco/vine/android/widget/ActivityViewHolder;>;>;"
    iget-object v7, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 178
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/ActivityViewHolder;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ActivityViewHolder;

    .line 179
    .local v0, holder:Lco/vine/android/widget/ActivityViewHolder;
    if-nez v0, :cond_1

    .line 180
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_1
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v7, :cond_2

    .line 183
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    .line 184
    .local v2, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    iget-object v8, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7, v8}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 188
    .end local v2           #image:Lco/vine/android/util/image/UrlImage;
    :cond_2
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->targetImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v7, :cond_0

    .line 189
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->targetImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/util/image/UrlImage;

    .line 190
    .local v5, targetImage:Lco/vine/android/util/image/UrlImage;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->targetUserImage:Landroid/widget/ImageView;

    iget-object v8, v5, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7, v8}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 196
    .end local v0           #holder:Lco/vine/android/widget/ActivityViewHolder;
    .end local v4           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/ActivityViewHolder;>;"
    .end local v5           #targetImage:Lco/vine/android/util/image/UrlImage;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 197
    .local v3, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/ActivityViewHolder;>;"
    iget-object v7, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    .end local v3           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/ActivityViewHolder;>;"
    :cond_4
    return-void
.end method
