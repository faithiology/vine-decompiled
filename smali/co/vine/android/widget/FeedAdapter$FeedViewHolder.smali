.class public Lco/vine/android/widget/FeedAdapter$FeedViewHolder;
.super Ljava/lang/Object;
.source "FeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedViewHolder"
.end annotation


# instance fields
.field public avatarKey:Lco/vine/android/util/image/ImageKey;

.field public comment:Landroid/widget/ImageButton;

.field public commentList:Landroid/widget/LinearLayout;

.field public commentType:I

.field public comments1:Landroid/widget/TextView;

.field public comments2:Landroid/widget/TextView;

.field public comments3:Landroid/widget/TextView;

.field public comments4:Landroid/widget/TextView;

.field public comments5:Landroid/widget/TextView;

.field public commentsContainer:Landroid/widget/RelativeLayout;

.field public description:Landroid/widget/TextView;

.field public hasVideoImage:Z

.field public isVideoImageLoaded:Z

.field public likeType:I

.field public liked:Landroid/widget/ImageButton;

.field public likers:Landroid/widget/TextView;

.field public likersContainer:Landroid/widget/RelativeLayout;

.field public listener:Lco/vine/android/player/OnListVideoClickListener;

.field public location:Landroid/widget/TextView;

.field public locationContainer:Landroid/widget/RelativeLayout;

.field public locationIcon:Landroid/widget/ImageView;

.field public more:Landroid/widget/ImageView;

.field public olderComments:Landroid/widget/TextView;

.field public olderCommentsContainer:Landroid/widget/RelativeLayout;

.field public position:I

.field public postId:J

.field public timestamp:Landroid/widget/TextView;

.field public userImage:Landroid/widget/ImageView;

.field public username:Landroid/widget/TextView;

.field public videoImage:Landroid/widget/ImageView;

.field public videoImageKey:Lco/vine/android/util/image/ImageKey;

.field public videoLoadImage:Landroid/widget/ProgressBar;

.field public videoView:Lco/vine/android/player/SdkVideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    const v0, 0x7f090041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->description:Landroid/widget/TextView;

    .line 1093
    const v0, 0x7f09002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->username:Landroid/widget/TextView;

    .line 1094
    const v0, 0x7f090044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->location:Landroid/widget/TextView;

    .line 1095
    const v0, 0x7f090043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->locationIcon:Landroid/widget/ImageView;

    .line 1096
    const v0, 0x7f090011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->timestamp:Landroid/widget/TextView;

    .line 1097
    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoImage:Landroid/widget/ImageView;

    .line 1098
    const v0, 0x7f09003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->videoLoadImage:Landroid/widget/ProgressBar;

    .line 1099
    const v0, 0x7f09000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->userImage:Landroid/widget/ImageView;

    .line 1100
    const v0, 0x7f090053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comment:Landroid/widget/ImageButton;

    .line 1101
    const v0, 0x7f090047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likers:Landroid/widget/TextView;

    .line 1102
    const v0, 0x7f09004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->commentList:Landroid/widget/LinearLayout;

    .line 1103
    const v0, 0x7f09004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderComments:Landroid/widget/TextView;

    .line 1104
    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->likersContainer:Landroid/widget/RelativeLayout;

    .line 1105
    const v0, 0x7f090048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->commentsContainer:Landroid/widget/RelativeLayout;

    .line 1106
    const v0, 0x7f09004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->olderCommentsContainer:Landroid/widget/RelativeLayout;

    .line 1108
    const v0, 0x7f090042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->locationContainer:Landroid/widget/RelativeLayout;

    .line 1109
    const v0, 0x7f090052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->liked:Landroid/widget/ImageButton;

    .line 1110
    const v0, 0x7f090054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->more:Landroid/widget/ImageView;

    .line 1111
    const v0, 0x7f09004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments1:Landroid/widget/TextView;

    .line 1112
    const v0, 0x7f09004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments2:Landroid/widget/TextView;

    .line 1113
    const v0, 0x7f09004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments3:Landroid/widget/TextView;

    .line 1114
    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments4:Landroid/widget/TextView;

    .line 1115
    const v0, 0x7f090051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/FeedAdapter$FeedViewHolder;->comments5:Landroid/widget/TextView;

    .line 1116
    return-void
.end method
