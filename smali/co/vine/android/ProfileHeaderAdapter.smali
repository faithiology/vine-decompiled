.class public Lco/vine/android/ProfileHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfileHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;
    }
.end annotation


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mContext:Landroid/content/Context;

.field private mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mProfileSpanClickListener:Lco/vine/android/widget/SpanClickListener;

.field private mUser:Lco/vine/android/api/VineUser;

.field private mWhite:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Landroid/view/View$OnClickListener;Lco/vine/android/widget/SpanClickListener;)V
    .locals 5
    .parameter "context"
    .parameter "appController"
    .parameter "listener"
    .parameter "spanClickListener"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput-object p1, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 49
    iput-object p2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f080027

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mWhite:[Ljava/lang/Object;

    .line 53
    iput-object p4, p0, Lco/vine/android/ProfileHeaderAdapter;->mProfileSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    .line 54
    return-void
.end method

.method private getProfileTabSpanned(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/text/Spanned;
    .locals 6
    .parameter "text"
    .parameter "res"

    .prologue
    const/16 v5, 0x22

    .line 183
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f08001f

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 187
    .local v0, colorSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 188
    .local v3, styleStart:I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 189
    .local v2, styleEnd:I
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 190
    .local v1, ssb:Landroid/text/SpannableStringBuilder;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 191
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 193
    const/16 v4, 0x21

    invoke-static {v1, v0, v3, v2, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 195
    return-object v1
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "v"
    .parameter "bmp"

    .prologue
    .line 275
    if-nez p2, :cond_1

    .line 276
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 277
    const v0, 0x7f02001b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public bindUser(Lco/vine/android/api/VineUser;)V
    .locals 19
    .parameter "profileUser"

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    if-eqz v13, :cond_1

    .line 91
    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    .line 92
    .local v7, holder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 93
    .local v10, res:Landroid/content/res/Resources;
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-static {v13}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 95
    :cond_0
    move-object/from16 v0, p1

    iget-wide v13, v0, Lco/vine/android/api/VineUser;->userId:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v15}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_2

    .line 96
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageView:Landroid/widget/ImageView;

    const v14, 0x7f02001b

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :goto_0
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->username:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 108
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->description:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 115
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->location:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->location:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :goto_2
    move-object/from16 v0, p1

    iget-wide v13, v0, Lco/vine/android/api/VineUser;->userId:J

    iput-wide v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userId:J

    .line 122
    iget-object v2, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->followStateButton:Lco/vine/android/widget/FollowStateButton;

    .line 124
    .local v2, button:Lco/vine/android/widget/FollowStateButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v13}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v2, v13, v14, v0}, Lco/vine/android/widget/FollowStateButton;->setUser(JLco/vine/android/api/VineUser;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v13}, Lco/vine/android/widget/FollowStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v5, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->followers:Landroid/widget/TextView;

    .line 128
    .local v5, followers:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mWhite:[Ljava/lang/Object;

    const v14, 0x7f0d0004

    move-object/from16 v0, p1

    iget v15, v0, Lco/vine/android/api/VineUser;->followerCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lco/vine/android/api/VineUser;->followerCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Lco/vine/android/util/Util;->bigNumberFormat(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x22

    invoke-static {v13, v14, v15}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v11

    .line 134
    .local v11, spanned:Landroid/text/Spanned;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 137
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 138
    .local v3, clickSpannable:Landroid/text/Spannable;
    new-instance v4, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/ProfileHeaderAdapter;->mProfileSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    invoke-direct {v4, v13, v14, v15}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 140
    .local v4, clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/4 v13, 0x0

    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-static {v3, v4, v13, v14, v15}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 143
    iget-object v6, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->following:Landroid/widget/TextView;

    .line 144
    .local v6, following:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mWhite:[Ljava/lang/Object;

    const v14, 0x7f0700db

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lco/vine/android/api/VineUser;->followingCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v10, v0}, Lco/vine/android/util/Util;->bigNumberFormat(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x22

    invoke-static {v13, v14, v15}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v11

    .line 149
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 152
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #clickSpannable:Landroid/text/Spannable;
    check-cast v3, Landroid/text/Spannable;

    .line 153
    .restart local v3       #clickSpannable:Landroid/text/Spannable;
    new-instance v4, Lco/vine/android/widget/StyledClickableSpan;

    .end local v4           #clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/ProfileHeaderAdapter;->mProfileSpanClickListener:Lco/vine/android/widget/SpanClickListener;

    invoke-direct {v4, v13, v14, v15}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    .line 155
    .restart local v4       #clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    const/4 v13, 0x0

    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-static {v3, v4, v13, v14, v15}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 158
    iget-object v9, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->posts:Lco/vine/android/widget/TabButton;

    .line 160
    .local v9, posts:Lco/vine/android/widget/TabButton;
    const v13, 0x7f0d0006

    move-object/from16 v0, p1

    iget v14, v0, Lco/vine/android/api/VineUser;->postCount:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lco/vine/android/api/VineUser;->postCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v10, v0}, Lco/vine/android/util/Util;->bigNumberFormat(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, text:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lco/vine/android/ProfileHeaderAdapter;->getProfileTabSpanned(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v9, v13}, Lco/vine/android/widget/TabButton;->setText(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v13}, Lco/vine/android/widget/TabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lco/vine/android/widget/TabButton;->setSelected(Z)V

    .line 167
    iget-object v8, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likes:Lco/vine/android/widget/TabButton;

    .line 168
    .local v8, likes:Lco/vine/android/widget/TabButton;
    const v13, 0x7f0d0005

    move-object/from16 v0, p1

    iget v14, v0, Lco/vine/android/api/VineUser;->likeCount:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lco/vine/android/api/VineUser;->likeCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v10, v0}, Lco/vine/android/util/Util;->bigNumberFormat(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 171
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lco/vine/android/ProfileHeaderAdapter;->getProfileTabSpanned(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v8, v13}, Lco/vine/android/widget/TabButton;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v13}, Lco/vine/android/widget/TabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v13, v13, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dot:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v13, v13, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageFrame:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v13, v13, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    .end local v2           #button:Lco/vine/android/widget/FollowStateButton;
    .end local v3           #clickSpannable:Landroid/text/Spannable;
    .end local v4           #clickableSpan:Lco/vine/android/widget/StyledClickableSpan;
    .end local v5           #followers:Landroid/widget/TextView;
    .end local v6           #following:Landroid/widget/TextView;
    .end local v7           #holder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;
    .end local v8           #likes:Lco/vine/android/widget/TabButton;
    .end local v9           #posts:Lco/vine/android/widget/TabButton;
    .end local v10           #res:Landroid/content/res/Resources;
    .end local v11           #spanned:Landroid/text/Spanned;
    .end local v12           #text:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    .line 179
    return-void

    .line 98
    .restart local v7       #holder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;
    .restart local v10       #res:Landroid/content/res/Resources;
    :cond_2
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageView:Landroid/widget/ImageView;

    const v14, 0x7f020009

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 101
    :cond_3
    new-instance v13, Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p1

    iget-object v14, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-direct {v13, v14}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    iput-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    .line 102
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    iget-object v15, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {v14, v15}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lco/vine/android/ProfileHeaderAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 111
    :cond_4
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->description:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 118
    :cond_5
    iget-object v13, v7, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->location:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public changeSelectedTab(I)V
    .locals 3
    .parameter "tabId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 249
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likes:Lco/vine/android/widget/TabButton;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TabButton;->setSelected(Z)V

    .line 252
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->posts:Lco/vine/android/widget/TabButton;

    invoke-virtual {v0, v2}, Lco/vine/android/widget/TabButton;->setSelected(Z)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likes:Lco/vine/android/widget/TabButton;

    invoke-virtual {v0, v2}, Lco/vine/android/widget/TabButton;->setSelected(Z)V

    .line 257
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->posts:Lco/vine/android/widget/TabButton;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/TabButton;->setSelected(Z)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x7f09006d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "i"
    .parameter "convertView"
    .parameter "root"

    .prologue
    const/4 v2, 0x0

    .line 73
    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    invoke-direct {v0, p2}, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    .line 79
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageFrame:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileHeaderAdapter;->bindUser(Lco/vine/android/api/VineUser;)V

    .line 86
    :cond_0
    return-object p2
.end method

.method public onImageLoaded(Ljava/util/HashMap;)V
    .locals 3
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
    .line 264
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    .line 267
    .local v0, urlImage:Lco/vine/android/util/image/UrlImage;
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lco/vine/android/ProfileHeaderAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 272
    .end local v0           #urlImage:Lco/vine/android/util/image/UrlImage;
    :cond_0
    return-void
.end method

.method public onProfileHeaderClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 201
    :sswitch_0
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->followStateButton:Lco/vine/android/widget/FollowStateButton;

    invoke-virtual {v1}, Lco/vine/android/widget/FollowStateButton;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lco/vine/android/FindFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->followStateButton:Lco/vine/android/widget/FollowStateButton;

    invoke-virtual {v1}, Lco/vine/android/widget/FollowStateButton;->unfollow()V

    .line 211
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-wide v3, v3, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->followStateButton:Lco/vine/android/widget/FollowStateButton;

    invoke-virtual {v1}, Lco/vine/android/widget/FollowStateButton;->follow()V

    .line 217
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-wide v3, v3, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lco/vine/android/client/AppController;->followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    goto :goto_0

    .line 230
    :sswitch_1
    const v1, 0x7f09006e

    invoke-virtual {p0, v1}, Lco/vine/android/ProfileHeaderAdapter;->changeSelectedTab(I)V

    goto :goto_0

    .line 234
    :sswitch_2
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    iget-wide v1, v1, Lco/vine/android/api/VineUser;->userId:J

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lco/vine/android/SettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    :sswitch_data_0
    .sparse-switch
        0x7f09000b -> :sswitch_2
        0x7f09006b -> :sswitch_0
        0x7f09006d -> :sswitch_1
        0x7f09006e -> :sswitch_1
    .end sparse-switch

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
