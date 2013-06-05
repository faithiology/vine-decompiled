.class final Lcom/flurry/android/cg;
.super Lcom/flurry/android/m;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/android/cg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/cg;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/m;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)V

    .line 20
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/flurry/android/cg;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final f()V
    .locals 2

    .prologue
    .line 27
    new-instance v1, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-virtual {p0}, Lcom/flurry/android/cg;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;-><init>(Landroid/app/Activity;)V

    .line 68
    new-instance v0, Lcom/flurry/android/au;

    invoke-direct {v0, p0}, Lcom/flurry/android/au;-><init>(Lcom/flurry/android/cg;)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;)Z

    .line 72
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestAndDisplayAd()V

    .line 73
    return-void
.end method
