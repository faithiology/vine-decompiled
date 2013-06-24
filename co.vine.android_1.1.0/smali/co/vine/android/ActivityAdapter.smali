.class public Lco/vine/android/ActivityAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ActivityAdapter.java"


# static fields
.field public static final NUM_VIEW_TYPES:I = 0x3

.field private static final SPAN_FLAGS:I = 0x21

.field public static final VIEW_TYPE_NO_IMAGES:I = 0x2

.field public static final VIEW_TYPE_ONE_IMAGE:I = 0x0

.field public static final VIEW_TYPE_TWO_IMAGES:I = 0x1


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mListener:Lco/vine/android/widget/SpanClickListener;

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

.field private mVineGreen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;Landroid/view/View$OnClickListener;I)V
    .locals 2
    .parameter "context"
    .parameter "appController"
    .parameter "listener"
    .parameter "viewClickListener"
    .parameter "flags"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p5}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 64
    iput-object p2, p0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    .line 66
    iput-object p3, p0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    .line 67
    iput-object p4, p0, Lco/vine/android/ActivityAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lco/vine/android/ActivityAdapter;->mVineGreen:I

    .line 69
    return-void
.end method

.method private setAvatar(Landroid/content/Context;Lco/vine/android/widget/ActivityViewHolder;Ljava/lang/String;)V
    .locals 4
    .parameter "c"
    .parameter "h"
    .parameter "avatarUrl"

    .prologue
    .line 187
    invoke-static {p3}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p2, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :goto_0
    iget-object v1, p2, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lco/vine/android/ActivityAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p2, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    iget-wide v2, p2, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 196
    return-void

    .line 190
    :cond_0
    new-instance v0, Lco/vine/android/util/image/ImageKey;

    invoke-direct {v0, p3}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, key:Lco/vine/android/util/image/ImageKey;
    iput-object v0, p2, Lco/vine/android/widget/ActivityViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    .line 192
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
    .line 244
    if-nez p1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    if-nez p2, :cond_1

    .line 248
    iget-object v0, p0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lco/vine/android/widget/ActivityViewHolder;

    .line 98
    .local v11, h:Lco/vine/android/widget/ActivityViewHolder;
    const/16 v19, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    .line 99
    const/16 v19, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v11, Lco/vine/android/widget/ActivityViewHolder;->postId:J

    .line 100
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->byline:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v20 .. v22}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const/16 v19, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v11, Lco/vine/android/widget/ActivityViewHolder;->type:I

    .line 104
    const/16 v19, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, avatarUrl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    const/4 v12, 0x1

    .line 106
    .local v12, hasAvatar:Z
    :goto_0
    const/16 v19, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const/4 v13, 0x1

    .line 108
    .local v13, hasTarget:Z
    :goto_1
    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11, v4}, Lco/vine/android/ActivityAdapter;->setAvatar(Landroid/content/Context;Lco/vine/android/widget/ActivityViewHolder;Ljava/lang/String;)V

    .line 110
    new-instance v17, Lco/vine/android/util/image/ImageKey;

    const/16 v19, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    .line 111
    .local v17, targetKey:Lco/vine/android/util/image/ImageKey;
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->targetUserImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 112
    move-object/from16 v0, v17

    iput-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->targetImageKey:Lco/vine/android/util/image/ImageKey;

    .line 118
    .end local v17           #targetKey:Lco/vine/android/util/image/ImageKey;
    :cond_0
    :goto_2
    const/16 v19, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 120
    .local v9, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    const/16 v19, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, contentLine:Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    .local v7, contentSb:Landroid/text/SpannableStringBuilder;
    if-eqz v9, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 124
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v9, v7, v0}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;I)V

    .line 126
    iget-object v8, v11, Lco/vine/android/widget/ActivityViewHolder;->contentLine:Landroid/widget/TextView;

    .line 127
    .local v8, contentTv:Landroid/widget/TextView;
    new-instance v15, Landroid/text/SpannableString;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    .local v15, spannable:Landroid/text/SpannableString;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lco/vine/android/api/VineEntity;

    .line 130
    .local v10, entity:Lco/vine/android/api/VineEntity;
    new-instance v5, Lco/vine/android/widget/TypefacesSpan;

    const/16 v19, 0x0

    invoke-static/range {p2 .. p2}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 132
    .local v5, bold:Lco/vine/android/widget/TypefacesSpan;
    const-string v19, "user"

    iget-object v0, v10, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 133
    new-instance v18, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v19, 0x1

    iget-wide v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 136
    .local v18, usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/ActivityAdapter;->mVineGreen:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 137
    iget v0, v10, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v19, v0

    iget v0, v10, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v20, v0

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v15, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 138
    iget v0, v10, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v19, v0

    iget v0, v10, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v20, v0

    const/16 v21, 0x21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v5, v0, v1, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_3

    .line 105
    .end local v5           #bold:Lco/vine/android/widget/TypefacesSpan;
    .end local v6           #contentLine:Ljava/lang/String;
    .end local v7           #contentSb:Landroid/text/SpannableStringBuilder;
    .end local v8           #contentTv:Landroid/widget/TextView;
    .end local v9           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    .end local v10           #entity:Lco/vine/android/api/VineEntity;
    .end local v12           #hasAvatar:Z
    .end local v13           #hasTarget:Z
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #spannable:Landroid/text/SpannableString;
    .end local v18           #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 106
    .restart local v12       #hasAvatar:Z
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 113
    .restart local v13       #hasTarget:Z
    :cond_4
    if-eqz v12, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11, v4}, Lco/vine/android/ActivityAdapter;->setAvatar(Landroid/content/Context;Lco/vine/android/widget/ActivityViewHolder;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    .restart local v5       #bold:Lco/vine/android/widget/TypefacesSpan;
    .restart local v6       #contentLine:Ljava/lang/String;
    .restart local v7       #contentSb:Landroid/text/SpannableStringBuilder;
    .restart local v8       #contentTv:Landroid/widget/TextView;
    .restart local v9       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    .restart local v10       #entity:Lco/vine/android/api/VineEntity;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #spannable:Landroid/text/SpannableString;
    :cond_5
    const-string v19, "mention"

    iget-object v0, v10, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 140
    new-instance v18, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v19, 0x1

    iget-wide v0, v10, Lco/vine/android/api/VineEntity;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 143
    .restart local v18       #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/ActivityAdapter;->mVineGreen:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 144
    iget v0, v10, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v19, v0

    iget v0, v10, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v20, v0

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v15, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 145
    iget v0, v10, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v19, v0

    iget v0, v10, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v20, v0

    const/16 v21, 0x21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v5, v0, v1, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 146
    .end local v18           #usernameSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_6
    const-string v19, "tag"

    iget-object v0, v10, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 147
    new-instance v16, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v19, 0x3

    iget-object v0, v10, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ActivityAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 150
    .local v16, tagSpan:Lco/vine/android/widget/StyledClickableSpan;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/ActivityAdapter;->mVineGreen:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    .line 151
    iget v0, v10, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v19, v0

    iget v0, v10, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v20, v0

    const/16 v21, 0x21

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v15, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 152
    iget v0, v10, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v19, v0

    iget v0, v10, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v20, v0

    const/16 v21, 0x21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v5, v0, v1, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto/16 :goto_3

    .line 155
    .end local v5           #bold:Lco/vine/android/widget/TypefacesSpan;
    .end local v10           #entity:Lco/vine/android/api/VineEntity;
    .end local v16           #tagSpan:Lco/vine/android/widget/StyledClickableSpan;
    :cond_7
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .end local v8           #contentTv:Landroid/widget/TextView;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #spannable:Landroid/text/SpannableString;
    :cond_8
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userImageOverlay:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 160
    iget v0, v11, Lco/vine/android/widget/ActivityViewHolder;->type:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 179
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userImageOverlay:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :cond_9
    :goto_4
    return-void

    .line 162
    :sswitch_0
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userImageOverlay:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userImageOverlay:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02006b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 169
    :sswitch_1
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userImageOverlay:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userImageOverlay:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02006a

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 174
    :sswitch_2
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userImageOverlay:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, v11, Lco/vine/android/widget/ActivityViewHolder;->userImageOverlay:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02006c

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 200
    invoke-virtual {p0, p1}, Lco/vine/android/ActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 201
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 202
    .local v1, hasAvatar:Z
    :goto_0
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 203
    .local v2, hasTarget:Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 208
    :goto_2
    return v3

    .end local v1           #hasAvatar:Z
    .end local v2           #hasTarget:Z
    :cond_0
    move v1, v4

    .line 201
    goto :goto_0

    .restart local v1       #hasAvatar:Z
    :cond_1
    move v2, v4

    .line 202
    goto :goto_1

    .line 205
    .restart local v2       #hasTarget:Z
    :cond_2
    if-eqz v1, :cond_3

    move v3, v4

    .line 206
    goto :goto_2

    .line 208
    :cond_3
    const/4 v3, 0x2

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 214
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

    .line 75
    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    .line 76
    .local v0, hasAvatar:Z
    :goto_0
    const/4 v6, 0x5

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v4

    .line 77
    .local v1, hasTarget:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 78
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

    .line 75
    goto :goto_0

    .restart local v0       #hasAvatar:Z
    :cond_1
    move v1, v5

    .line 76
    goto :goto_1

    .line 80
    .restart local v1       #hasTarget:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f030002

    invoke-virtual {v4, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_2

    .line 84
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
    .line 218
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 219
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

    .line 220
    .local v4, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/ActivityViewHolder;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ActivityViewHolder;

    .line 221
    .local v0, holder:Lco/vine/android/widget/ActivityViewHolder;
    if-nez v0, :cond_1

    .line 222
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_1
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v7, :cond_2

    .line 225
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    .line 226
    .local v2, image:Lco/vine/android/util/image/UrlImage;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->userImage:Landroid/widget/ImageView;

    iget-object v8, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7, v8}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 230
    .end local v2           #image:Lco/vine/android/util/image/UrlImage;
    :cond_2
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->targetImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v7, :cond_0

    .line 231
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->targetImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/util/image/UrlImage;

    .line 232
    .local v5, targetImage:Lco/vine/android/util/image/UrlImage;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 233
    iget-object v7, v0, Lco/vine/android/widget/ActivityViewHolder;->targetUserImage:Landroid/widget/ImageView;

    iget-object v8, v5, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7, v8}, Lco/vine/android/ActivityAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 238
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

    .line 239
    .local v3, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/ActivityViewHolder;>;"
    iget-object v7, p0, Lco/vine/android/ActivityAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    .end local v3           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lco/vine/android/widget/ActivityViewHolder;>;"
    :cond_4
    return-void
.end method
