.class public final Lco/vine/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CroppableImageView:[I = null

.field public static final CroppableImageView_cropRectPadding:I = 0x0

.field public static final CroppableImageView_cropRectStrokeColor:I = 0x1

.field public static final CroppableImageView_cropShadowColor:I = 0x2

.field public static final FollowStateButton:[I = null

.field public static final FollowStateButton_followingDrawable:I = 0x6

.field public static final FollowStateButton_followingString:I = 0x7

.field public static final FollowStateButton_followingTextColor:I = 0x8

.field public static final FollowStateButton_notFollowingDrawable:I = 0x3

.field public static final FollowStateButton_notFollowingString:I = 0x4

.field public static final FollowStateButton_notFollowingTextColor:I = 0x5

.field public static final FollowStateButton_selfDrawable:I = 0x0

.field public static final FollowStateButton_selfString:I = 0x1

.field public static final FollowStateButton_selfTextColor:I = 0x2

.field public static final OverlayImageView:[I = null

.field public static final OverlayImageView_overlayDrawable:I = 0x0

.field public static final RefreshableListView:[I = null

.field public static final RefreshableListView_loadingText:I = 0x3

.field public static final RefreshableListView_pullBackgroundColor:I = 0x4

.field public static final RefreshableListView_pullDivider:I = 0x5

.field public static final RefreshableListView_pullText:I = 0x2

.field public static final RefreshableListView_refreshFooter:I = 0x1

.field public static final RefreshableListView_refreshHeader:I = 0x0

.field public static final RefreshableListView_refreshTriangle1:I = 0x6

.field public static final RefreshableListView_refreshTriangle2:I = 0x7

.field public static final RefreshableListView_refreshTriangle3:I = 0x8

.field public static final RefreshableListView_rotateDownAnim:I = 0xa

.field public static final RefreshableListView_rotateUpAnim:I = 0x9

.field public static final ViewPagerScrollBar:[I = null

.field public static final ViewPagerScrollBar_lineColors:I = 0x1

.field public static final ViewPagerScrollBar_tabColor:I = 0x0

.field public static final VineTextView:[I = null

.field public static final VineTextView_textStyle:I = 0x1

.field public static final VineTextView_textWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1449
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lco/vine/android/R$styleable;->CroppableImageView:[I

    .line 1524
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lco/vine/android/R$styleable;->FollowStateButton:[I

    .line 1644
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010014

    aput v2, v0, v1

    sput-object v0, Lco/vine/android/R$styleable;->OverlayImageView:[I

    .line 1687
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lco/vine/android/R$styleable;->RefreshableListView:[I

    .line 1827
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lco/vine/android/R$styleable;->ViewPagerScrollBar:[I

    .line 1867
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lco/vine/android/R$styleable;->VineTextView:[I

    return-void

    .line 1449
    nop

    :array_0
    .array-data 0x4
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1524
    :array_1
    .array-data 0x4
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
        0x1at 0x0t 0x1t 0x7ft
        0x1bt 0x0t 0x1t 0x7ft
        0x1ct 0x0t 0x1t 0x7ft
        0x1dt 0x0t 0x1t 0x7ft
    .end array-data

    .line 1687
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 1827
    :array_3
    .array-data 0x4
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1867
    :array_4
    .array-data 0x4
        0x1et 0x0t 0x1t 0x7ft
        0x1ft 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
