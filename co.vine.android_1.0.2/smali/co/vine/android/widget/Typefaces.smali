.class public Lco/vine/android/widget/Typefaces;
.super Ljava/lang/Object;
.source "Typefaces.java"


# static fields
.field public static final WEIGHT_BOLD:I = 0x4

.field public static final WEIGHT_LIGHT:I = 0x1

.field public static final WEIGHT_MEDIUM:I = 0x3

.field public static final WEIGHT_NORMAL:I = 0x2

.field private static sInstance:Lco/vine/android/widget/Typefaces;


# instance fields
.field public final boldContent:Landroid/graphics/Typeface;

.field public final boldContentBold:Landroid/graphics/Typeface;

.field public final boldContentBoldItalic:Landroid/graphics/Typeface;

.field public final boldContentDetail:Landroid/graphics/Typeface;

.field public final boldContentItalic:Landroid/graphics/Typeface;

.field public final lightContent:Landroid/graphics/Typeface;

.field public final lightContentBold:Landroid/graphics/Typeface;

.field public final lightContentBoldItalic:Landroid/graphics/Typeface;

.field public final lightContentDetail:Landroid/graphics/Typeface;

.field public final lightContentItalic:Landroid/graphics/Typeface;

.field public final mediumContent:Landroid/graphics/Typeface;

.field public final mediumContentBold:Landroid/graphics/Typeface;

.field public final mediumContentBoldItalic:Landroid/graphics/Typeface;

.field public final mediumContentDetail:Landroid/graphics/Typeface;

.field public final mediumContentItalic:Landroid/graphics/Typeface;

.field public final regularContent:Landroid/graphics/Typeface;

.field public final regularContentBold:Landroid/graphics/Typeface;

.field public final regularContentBoldItalic:Landroid/graphics/Typeface;

.field public final regularContentDetail:Landroid/graphics/Typeface;

.field public final regularContentItalic:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 48
    .local v3, mgr:Landroid/content/res/AssetManager;
    const-string v5, "fonts/Roboto-Regular.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 49
    .local v4, regular:Landroid/graphics/Typeface;
    iput-object v4, p0, Lco/vine/android/widget/Typefaces;->regularContent:Landroid/graphics/Typeface;

    .line 50
    const-string v5, "fonts/Roboto-Italic.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContentItalic:Landroid/graphics/Typeface;

    .line 51
    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContentBold:Landroid/graphics/Typeface;

    .line 52
    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContentBold:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContentBoldItalic:Landroid/graphics/Typeface;

    .line 53
    iput-object v4, p0, Lco/vine/android/widget/Typefaces;->regularContentDetail:Landroid/graphics/Typeface;

    .line 55
    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 56
    .local v0, bold:Landroid/graphics/Typeface;
    iput-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;

    .line 57
    const-string v5, "fonts/Roboto-BoldItalic.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->boldContentItalic:Landroid/graphics/Typeface;

    .line 58
    iput-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentBold:Landroid/graphics/Typeface;

    .line 59
    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->boldContentBoldItalic:Landroid/graphics/Typeface;

    .line 60
    iput-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentDetail:Landroid/graphics/Typeface;

    .line 62
    const-string v5, "fonts/Roboto-Medium.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 63
    .local v2, medium:Landroid/graphics/Typeface;
    iput-object v2, p0, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;

    .line 64
    const-string v5, "fonts/Roboto-MediumItalic.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->mediumContentItalic:Landroid/graphics/Typeface;

    .line 65
    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->mediumContentBold:Landroid/graphics/Typeface;

    .line 66
    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->mediumContentBold:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->mediumContentBoldItalic:Landroid/graphics/Typeface;

    .line 67
    iput-object v2, p0, Lco/vine/android/widget/Typefaces;->mediumContentDetail:Landroid/graphics/Typeface;

    .line 69
    const-string v5, "fonts/Roboto-Light.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 70
    .local v1, light:Landroid/graphics/Typeface;
    iput-object v1, p0, Lco/vine/android/widget/Typefaces;->lightContent:Landroid/graphics/Typeface;

    .line 71
    const-string v5, "fonts/Roboto-LightItalic.ttf"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->lightContentItalic:Landroid/graphics/Typeface;

    .line 72
    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->regularContent:Landroid/graphics/Typeface;

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->lightContentBold:Landroid/graphics/Typeface;

    .line 73
    iget-object v5, p0, Lco/vine/android/widget/Typefaces;->lightContentBold:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lco/vine/android/widget/Typefaces;->lightContentBoldItalic:Landroid/graphics/Typeface;

    .line 74
    iput-object v1, p0, Lco/vine/android/widget/Typefaces;->lightContentDetail:Landroid/graphics/Typeface;

    .line 75
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
    .locals 2
    .parameter "context"

    .prologue
    .line 135
    const-class v1, Lco/vine/android/widget/Typefaces;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lco/vine/android/widget/Typefaces;->sInstance:Lco/vine/android/widget/Typefaces;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lco/vine/android/widget/Typefaces;

    invoke-direct {v0, p0}, Lco/vine/android/widget/Typefaces;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/widget/Typefaces;->sInstance:Lco/vine/android/widget/Typefaces;

    .line 138
    :cond_0
    sget-object v0, Lco/vine/android/widget/Typefaces;->sInstance:Lco/vine/android/widget/Typefaces;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getContentTypeface(II)Landroid/graphics/Typeface;
    .locals 1
    .parameter "style"
    .parameter "weight"

    .prologue
    .line 85
    packed-switch p2, :pswitch_data_0

    .line 121
    :pswitch_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->regularContentBoldItalic:Landroid/graphics/Typeface;

    .line 128
    :goto_0
    return-object v0

    .line 87
    :pswitch_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->lightContentBoldItalic:Landroid/graphics/Typeface;

    goto :goto_0

    .line 89
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->lightContentBold:Landroid/graphics/Typeface;

    goto :goto_0

    .line 91
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->lightContentItalic:Landroid/graphics/Typeface;

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->lightContent:Landroid/graphics/Typeface;

    goto :goto_0

    .line 98
    :pswitch_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->mediumContentBoldItalic:Landroid/graphics/Typeface;

    goto :goto_0

    .line 100
    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->mediumContentBold:Landroid/graphics/Typeface;

    goto :goto_0

    .line 102
    :cond_4
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->mediumContentItalic:Landroid/graphics/Typeface;

    goto :goto_0

    .line 105
    :cond_5
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;

    goto :goto_0

    .line 109
    :pswitch_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentBoldItalic:Landroid/graphics/Typeface;

    goto :goto_0

    .line 111
    :cond_6
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7

    .line 112
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentBold:Landroid/graphics/Typeface;

    goto :goto_0

    .line 113
    :cond_7
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    .line 114
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContentItalic:Landroid/graphics/Typeface;

    goto :goto_0

    .line 116
    :cond_8
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;

    goto :goto_0

    .line 123
    :cond_9
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    .line 124
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->regularContentBold:Landroid/graphics/Typeface;

    goto :goto_0

    .line 125
    :cond_a
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->regularContentItalic:Landroid/graphics/Typeface;

    goto :goto_0

    .line 128
    :cond_b
    iget-object v0, p0, Lco/vine/android/widget/Typefaces;->regularContent:Landroid/graphics/Typeface;

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
