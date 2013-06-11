.class Lcom/flurry/android/u;
.super Lcom/flurry/android/m;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final P:Z

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/android/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/m;-><init>(Landroid/content/Context;Lcom/flurry/android/FlurryAds;Lcom/flurry/android/cz;Lcom/flurry/android/AdUnit;)V

    .line 25
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/u;->g:Ljava/lang/String;

    .line 26
    const-string v0, "com.flurry.inmobi.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/u;->P:Z

    .line 27
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final f()V
    .locals 4

    .prologue
    .line 34
    new-instance v1, Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {p0}, Lcom/flurry/android/u;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/android/u;->g:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/flurry/android/ca;

    invoke-direct {v0, p0}, Lcom/flurry/android/ca;-><init>(Lcom/flurry/android/u;)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->setImAdInterstitialListener(Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V

    .line 79
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    .line 80
    iget-boolean v2, p0, Lcom/flurry/android/u;->P:Z

    if-eqz v2, :cond_0

    .line 81
    sget-object v2, Lcom/flurry/android/u;->d:Ljava/lang/String;

    const-string v3, "InMobi Interstitial set to Test Mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 86
    :cond_0
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 87
    return-void
.end method
