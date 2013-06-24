.class public Lco/vine/android/widget/FollowStateButton;
.super Landroid/widget/Button;
.source "FollowStateButton.java"


# static fields
.field public static final STATE_FOLLOWING:I = 0x3

.field public static final STATE_NOT_FOLLOWING:I = 0x2

.field public static final STATE_SELF:I = 0x1


# instance fields
.field private mFollowingDrawableRes:I

.field private mFollowingText:I

.field private mFollowingTextColor:I

.field private mNotFollowingDrawableRes:I

.field private mNotFollowingText:I

.field private mNotFollowingTextColor:I

.field private mSelfDrawableRes:I

.field private mSelfText:I

.field private mSelfTextColor:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lco/vine/android/widget/FollowStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/FollowStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget-object v1, Lco/vine/android/R$styleable;->FollowStateButton:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, a:Landroid/content/res/TypedArray;
    const v1, 0x7f02004a

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mSelfDrawableRes:I

    .line 47
    const/4 v1, 0x3

    const v2, 0x7f020044

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingDrawableRes:I

    .line 50
    const/4 v1, 0x6

    const v2, 0x7f020047

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingDrawableRes:I

    .line 53
    const/4 v1, 0x1

    const v2, 0x7f070066

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mSelfText:I

    .line 56
    const/4 v1, 0x4

    const v2, 0x7f070067

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingText:I

    .line 59
    const/4 v1, 0x7

    const v2, 0x7f070068

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingText:I

    .line 62
    const/4 v1, 0x2

    invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mSelfTextColor:I

    .line 65
    invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingTextColor:I

    .line 68
    invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingTextColor:I

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mSelfDrawableRes:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setBackgroundResource(I)V

    .line 108
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mSelfText:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setText(I)V

    .line 109
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mSelfTextColor:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setTextColor(I)V

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I

    goto :goto_0

    .line 114
    :pswitch_1
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingDrawableRes:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setBackgroundResource(I)V

    .line 115
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingText:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setText(I)V

    .line 116
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mNotFollowingTextColor:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setTextColor(I)V

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I

    goto :goto_0

    .line 121
    :pswitch_2
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingDrawableRes:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setBackgroundResource(I)V

    .line 122
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingText:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setText(I)V

    .line 123
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mFollowingTextColor:I

    invoke-virtual {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setTextColor(I)V

    .line 124
    const/4 v0, 0x3

    iput v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public follow()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 91
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I

    if-eq v0, v1, :cond_0

    .line 92
    invoke-direct {p0, v1}, Lco/vine/android/widget/FollowStateButton;->setState(I)V

    .line 93
    invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->invalidate()V

    .line 95
    :cond_0
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I

    return v0
.end method

.method public setUser(JLco/vine/android/api/VineUser;)V
    .locals 3
    .parameter "ownerId"
    .parameter "user"

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-wide v0, p3, Lco/vine/android/api/VineUser;->userId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, v2}, Lco/vine/android/widget/FollowStateButton;->setState(I)V

    .line 82
    :goto_0
    invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->invalidate()V

    .line 83
    return-void

    .line 77
    :cond_0
    iget v0, p3, Lco/vine/android/api/VineUser;->following:I

    if-ne v0, v2, :cond_1

    .line 78
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setState(I)V

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lco/vine/android/widget/FollowStateButton;->setState(I)V

    goto :goto_0
.end method

.method public unfollow()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 98
    iget v0, p0, Lco/vine/android/widget/FollowStateButton;->mState:I

    if-eq v0, v1, :cond_0

    .line 99
    invoke-direct {p0, v1}, Lco/vine/android/widget/FollowStateButton;->setState(I)V

    .line 100
    invoke-virtual {p0}, Lco/vine/android/widget/FollowStateButton;->invalidate()V

    .line 102
    :cond_0
    return-void
.end method
