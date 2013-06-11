.class public final Lcom/vandalsoftware/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CroppableImageView:[I

.field public static CroppableImageView_cropRectPadding:I

.field public static CroppableImageView_cropRectStrokeColor:I

.field public static CroppableImageView_cropShadowColor:I

.field public static final FollowStateButton:[I

.field public static FollowStateButton_followingDrawable:I

.field public static FollowStateButton_followingString:I

.field public static FollowStateButton_followingTextColor:I

.field public static FollowStateButton_notFollowingDrawable:I

.field public static FollowStateButton_notFollowingString:I

.field public static FollowStateButton_notFollowingTextColor:I

.field public static FollowStateButton_selfDrawable:I

.field public static FollowStateButton_selfString:I

.field public static FollowStateButton_selfTextColor:I

.field public static final OverlayImageView:[I

.field public static OverlayImageView_overlayDrawable:I

.field public static final RefreshableListView:[I

.field public static RefreshableListView_loadingText:I

.field public static RefreshableListView_pullBackgroundColor:I

.field public static RefreshableListView_pullDivider:I

.field public static RefreshableListView_pullText:I

.field public static RefreshableListView_refreshFooter:I

.field public static RefreshableListView_refreshHeader:I

.field public static RefreshableListView_refreshTriangle1:I

.field public static RefreshableListView_refreshTriangle2:I

.field public static RefreshableListView_refreshTriangle3:I

.field public static RefreshableListView_rotateDownAnim:I

.field public static RefreshableListView_rotateUpAnim:I

.field public static final ViewPagerScrollBar:[I

.field public static ViewPagerScrollBar_lineColors:I

.field public static ViewPagerScrollBar_tabColor:I

.field public static final VineTextView:[I

.field public static VineTextView_textStyle:I

.field public static VineTextView_textWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1449
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vandalsoftware/R$styleable;->CroppableImageView:[I

    .line 1467
    sput v2, Lcom/vandalsoftware/R$styleable;->CroppableImageView_cropRectPadding:I

    .line 1482
    sput v3, Lcom/vandalsoftware/R$styleable;->CroppableImageView_cropRectStrokeColor:I

    .line 1497
    sput v4, Lcom/vandalsoftware/R$styleable;->CroppableImageView_cropShadowColor:I

    .line 1524
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vandalsoftware/R$styleable;->FollowStateButton:[I

    .line 1538
    const/4 v0, 0x6

    sput v0, Lcom/vandalsoftware/R$styleable;->FollowStateButton_followingDrawable:I

    .line 1548
    const/4 v0, 0x7

    sput v0, Lcom/vandalsoftware/R$styleable;->FollowStateButton_followingString:I

    .line 1563
    const/16 v0, 0x8

    sput v0, Lcom/vandalsoftware/R$styleable;->FollowStateButton_followingTextColor:I

    .line 1573
    sput v5, Lcom/vandalsoftware/R$styleable;->FollowStateButton_notFollowingDrawable:I

    .line 1583
    sput v6, Lcom/vandalsoftware/R$styleable;->FollowStateButton_notFollowingString:I

    .line 1598
    const/4 v0, 0x5

    sput v0, Lcom/vandalsoftware/R$styleable;->FollowStateButton_notFollowingTextColor:I

    .line 1608
    sput v2, Lcom/vandalsoftware/R$styleable;->FollowStateButton_selfDrawable:I

    .line 1618
    sput v3, Lcom/vandalsoftware/R$styleable;->FollowStateButton_selfString:I

    .line 1633
    sput v4, Lcom/vandalsoftware/R$styleable;->FollowStateButton_selfTextColor:I

    .line 1644
    new-array v0, v3, [I

    const v1, 0x7f010014

    aput v1, v0, v2

    sput-object v0, Lcom/vandalsoftware/R$styleable;->OverlayImageView:[I

    .line 1656
    sput v2, Lcom/vandalsoftware/R$styleable;->OverlayImageView_overlayDrawable:I

    .line 1687
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/vandalsoftware/R$styleable;->RefreshableListView:[I

    .line 1705
    sput v5, Lcom/vandalsoftware/R$styleable;->RefreshableListView_loadingText:I

    .line 1720
    sput v6, Lcom/vandalsoftware/R$styleable;->RefreshableListView_pullBackgroundColor:I

    .line 1730
    const/4 v0, 0x5

    sput v0, Lcom/vandalsoftware/R$styleable;->RefreshableListView_pullDivider:I

    .line 1744
    sput v4, Lcom/vandalsoftware/R$styleable;->RefreshableListView_pullText:I

    .line 1754
    sput v3, Lcom/vandalsoftware/R$styleable;->RefreshableListView_refreshFooter:I

    .line 1764
    sput v2, Lcom/vandalsoftware/R$styleable;->RefreshableListView_refreshHeader:I

    .line 1774
    const/4 v0, 0x6

    sput v0, Lcom/vandalsoftware/R$styleable;->RefreshableListView_refreshTriangle1:I

    .line 1784
    const/4 v0, 0x7

    sput v0, Lcom/vandalsoftware/R$styleable;->RefreshableListView_refreshTriangle2:I

    .line 1794
    const/16 v0, 0x8

    sput v0, Lcom/vandalsoftware/R$styleable;->RefreshableListView_refreshTriangle3:I

    .line 1804
    const/16 v0, 0xa

    sput v0, Lcom/vandalsoftware/R$styleable;->RefreshableListView_rotateDownAnim:I

    .line 1814
    const/16 v0, 0x9

    sput v0, Lcom/vandalsoftware/R$styleable;->RefreshableListView_rotateUpAnim:I

    .line 1827
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/vandalsoftware/R$styleable;->ViewPagerScrollBar:[I

    .line 1839
    sput v3, Lcom/vandalsoftware/R$styleable;->ViewPagerScrollBar_lineColors:I

    .line 1854
    sput v2, Lcom/vandalsoftware/R$styleable;->ViewPagerScrollBar_tabColor:I

    .line 1867
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/vandalsoftware/R$styleable;->VineTextView:[I

    .line 1883
    sput v3, Lcom/vandalsoftware/R$styleable;->VineTextView_textStyle:I

    .line 1897
    sput v2, Lcom/vandalsoftware/R$styleable;->VineTextView_textWeight:I

    return-void

    .line 1449
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
