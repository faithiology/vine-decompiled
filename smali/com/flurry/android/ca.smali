.class final Lcom/flurry/android/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdInterstitialListener;


# instance fields
.field private synthetic en:Lcom/flurry/android/u;


# direct methods
.method constructor <init>(Lcom/flurry/android/u;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/flurry/android/ca;->en:Lcom/flurry/android/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/ca;->en:Lcom/flurry/android/u;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/u;->onRenderFailed(Ljava/util/Map;)V

    .line 43
    invoke-static {}, Lcom/flurry/android/u;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView ad request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public final onAdRequestLoaded(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/android/ca;->en:Lcom/flurry/android/u;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/u;->onAdFilled(Ljava/util/Map;)V

    .line 49
    invoke-static {}, Lcom/flurry/android/u;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi Interstitial ad request completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->getState()Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/flurry/android/ca;->en:Lcom/flurry/android/u;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/u;->onAdShown(Ljava/util/Map;)V

    .line 52
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->show()V

    .line 54
    :cond_0
    return-void
.end method

.method public final onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/android/ca;->en:Lcom/flurry/android/u;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/u;->onAdClosed(Ljava/util/Map;)V

    .line 59
    invoke-static {}, Lcom/flurry/android/u;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi Interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public final onLeaveApplication(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-static {}, Lcom/flurry/android/u;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi onLeaveApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public final onShowAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-static {}, Lcom/flurry/android/u;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi Interstitial ad shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
