.class final Lcom/flurry/android/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jumptap/adtag/JtAdViewListener;


# instance fields
.field private synthetic ad:Lcom/flurry/android/e;


# direct methods
.method constructor <init>(Lcom/flurry/android/e;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/android/aa;->ad:Lcom/flurry/android/e;

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
    .line 84
    invoke-static {}, Lcom/flurry/android/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap AdView error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/flurry/android/aa;->ad:Lcom/flurry/android/e;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/e;->onRenderFailed(Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method public final onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/flurry/android/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap AdView focus changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/android/aa;->ad:Lcom/flurry/android/e;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/e;->onAdClosed(Ljava/util/Map;)V

    .line 72
    invoke-static {}, Lcom/flurry/android/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap AdView dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public final onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/android/aa;->ad:Lcom/flurry/android/e;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/e;->onAdFilled(Ljava/util/Map;)V

    .line 64
    iget-object v0, p0, Lcom/flurry/android/aa;->ad:Lcom/flurry/android/e;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/e;->onAdShown(Ljava/util/Map;)V

    .line 65
    invoke-static {}, Lcom/flurry/android/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap AdView new ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public final onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/android/aa;->ad:Lcom/flurry/android/e;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/e;->onRenderFailed(Ljava/util/Map;)V

    .line 57
    invoke-static {}, Lcom/flurry/android/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Jumptap AdView no ad found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method
