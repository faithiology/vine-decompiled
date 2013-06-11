.class Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;
.super Ljava/lang/Object;
.source "ProfileHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ProfileHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public dot:Landroid/widget/TextView;

.field public followStateButton:Lco/vine/android/widget/FollowStateButton;

.field public followers:Landroid/widget/TextView;

.field public following:Landroid/widget/TextView;

.field public imageFrame:Landroid/widget/ImageView;

.field public imageView:Landroid/widget/ImageView;

.field public likes:Lco/vine/android/widget/TabButton;

.field public location:Landroid/widget/TextView;

.field public posts:Lco/vine/android/widget/TabButton;

.field public progress:Landroid/widget/ProgressBar;

.field public userId:J

.field public userImageKey:Lco/vine/android/util/image/ImageKey;

.field public username:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const v0, 0x7f09000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageView:Landroid/widget/ImageView;

    .line 300
    const v0, 0x7f09005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/FollowStateButton;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->followStateButton:Lco/vine/android/widget/FollowStateButton;

    .line 301
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->username:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f090059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->description:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f090040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->location:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f09005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->followers:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f09005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->following:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f090060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/TabButton;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->posts:Lco/vine/android/widget/TabButton;

    .line 307
    const v0, 0x7f090061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/TabButton;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likes:Lco/vine/android/widget/TabButton;

    .line 308
    const v0, 0x7f09005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dot:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f090062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 310
    const v0, 0x7f090081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->imageFrame:Landroid/widget/ImageView;

    .line 311
    return-void
.end method
