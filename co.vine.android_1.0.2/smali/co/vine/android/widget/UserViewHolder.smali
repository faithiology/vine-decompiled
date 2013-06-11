.class public Lco/vine/android/widget/UserViewHolder;
.super Ljava/lang/Object;
.source "UserViewHolder.java"


# instance fields
.field public avatarUrl:Lco/vine/android/util/image/ImageKey;

.field public bio:Landroid/widget/TextView;

.field public followButton:Landroid/widget/ImageButton;

.field public image:Landroid/widget/ImageView;

.field public location:Landroid/widget/TextView;

.field public userId:J

.field public username:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->username:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f090086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f090083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    .line 28
    const v0, 0x7f09000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    .line 29
    return-void
.end method
