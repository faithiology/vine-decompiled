.class final Lcom/flurry/android/bi;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/android/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/bi;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdCreative;)V

    .line 30
    const-string v0, "com.flurry.millennial.MYAPID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/bi;->g:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/bi;->setFocusable(Z)V

    .line 32
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/flurry/android/bi;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/flurry/android/bi;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/flurry/android/bi;->getAdCreative()Lcom/flurry/android/AdCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v1

    const/16 v2, 0x140

    if-lt v1, v2, :cond_0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/flurry/android/bi;->d:Ljava/lang/String;

    const-string v1, "Determined Millennial AdSize as MMBannerAdBottom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MMBannerAdBottom"

    .line 59
    :goto_0
    if-eqz v0, :cond_2

    .line 62
    new-instance v1, Lcom/millennialmedia/android/MMAdView;

    check-cast p1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/android/bi;->g:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    const v0, 0x711e41a1

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 65
    invoke-virtual {v1, v3}, Lcom/millennialmedia/android/MMAdView;->setHorizontalScrollBarEnabled(Z)V

    .line 66
    invoke-virtual {v1, v3}, Lcom/millennialmedia/android/MMAdView;->setVerticalScrollBarEnabled(Z)V

    .line 67
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/bi;->setGravity(I)V

    .line 117
    new-instance v0, Lcom/flurry/android/bg;

    invoke-direct {v0, p0}, Lcom/flurry/android/bg;-><init>(Lcom/flurry/android/bi;)V

    .line 118
    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/flurry/android/bi;->addView(Landroid/view/View;)V

    .line 126
    :goto_1
    return-void

    .line 57
    :cond_0
    const/16 v2, 0x12c

    if-lt v1, v2, :cond_1

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/flurry/android/bi;->d:Ljava/lang/String;

    const-string v1, "Determined Millennial AdSize as MMBannerAdRectangle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MMBannerAdRectangle"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/android/bi;->d:Ljava/lang/String;

    const-string v1, "Could not find Millennial AdSize that matches size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :cond_2
    sget-object v0, Lcom/flurry/android/bi;->d:Ljava/lang/String;

    const-string v1, "**********Could not load Millennial Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
