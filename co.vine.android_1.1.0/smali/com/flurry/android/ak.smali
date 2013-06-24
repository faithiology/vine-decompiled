.class final Lcom/flurry/android/ak;
.super Lcom/flurry/android/m;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final P:Z

.field private final bD:Ljava/lang/String;

.field private final bI:Lcom/google/ads/InterstitialAd;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/android/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ak;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/m;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)V

    .line 28
    const-string v0, "com.flurry.admob.MY_AD_UNIT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ak;->g:Ljava/lang/String;

    .line 29
    const-string v0, "com.flurry.admob.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ak;->bD:Ljava/lang/String;

    .line 30
    const-string v0, "com.flurry.admob.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/ak;->P:Z

    .line 32
    new-instance v1, Lcom/google/ads/InterstitialAd;

    invoke-virtual {p0}, Lcom/flurry/android/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/android/ak;->g:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/android/ak;->bI:Lcom/google/ads/InterstitialAd;

    .line 33
    iget-object v0, p0, Lcom/flurry/android/ak;->bI:Lcom/google/ads/InterstitialAd;

    new-instance v1, Lcom/flurry/android/ch;

    invoke-direct {v1, p0}, Lcom/flurry/android/ch;-><init>(Lcom/flurry/android/ak;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 34
    return-void
.end method

.method static synthetic B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/flurry/android/ak;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/ak;)Lcom/google/ads/InterstitialAd;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/flurry/android/ak;->bI:Lcom/google/ads/InterstitialAd;

    return-object v0
.end method


# virtual methods
.method public final f()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 39
    iget-boolean v1, p0, Lcom/flurry/android/ak;->P:Z

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/flurry/android/ak;->d:Ljava/lang/String;

    const-string v2, "Admob AdView set to Test Mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v1, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 43
    iget-object v1, p0, Lcom/flurry/android/ak;->bD:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/flurry/android/ak;->bD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/ak;->bI:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 48
    return-void
.end method
