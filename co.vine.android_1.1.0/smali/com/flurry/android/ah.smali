.class final Lcom/flurry/android/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jumptap/adtag/JtAdViewListener;


# instance fields
.field private synthetic bz:Lcom/flurry/android/bo;


# direct methods
.method constructor <init>(Lcom/flurry/android/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/flurry/android/ah;->bz:Lcom/flurry/android/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdError(Lcom/jumptap/adtag/JtAdView;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {}, Lcom/flurry/android/bo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public final onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/flurry/android/bo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial focus changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/android/ah;->bz:Lcom/flurry/android/bo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bo;->onAdClosed(Ljava/util/Map;)V

    .line 66
    invoke-static {}, Lcom/flurry/android/bo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public final onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/android/ah;->bz:Lcom/flurry/android/bo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bo;->onAdFilled(Ljava/util/Map;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/ah;->bz:Lcom/flurry/android/bo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bo;->onAdShown(Ljava/util/Map;)V

    .line 60
    invoke-static {}, Lcom/flurry/android/bo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial new ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public final onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/ah;->bz:Lcom/flurry/android/bo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bo;->onRenderFailed(Ljava/util/Map;)V

    .line 53
    invoke-static {}, Lcom/flurry/android/bo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap Interstitial no ad found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
