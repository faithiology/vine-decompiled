.class final Lcom/flurry/android/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# instance fields
.field private synthetic ep:Lcom/flurry/android/ar;


# direct methods
.method constructor <init>(Lcom/flurry/android/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flurry/android/cc;->ep:Lcom/flurry/android/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {}, Lcom/flurry/android/ar;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial caching completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fInter_success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/cc;->ep:Lcom/flurry/android/ar;

    invoke-static {v2}, Lcom/flurry/android/ar;->a(Lcom/flurry/android/ar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/flurry/android/cc;->ep:Lcom/flurry/android/ar;

    invoke-static {v0}, Lcom/flurry/android/ar;->a(Lcom/flurry/android/ar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->display()Z

    .line 95
    :cond_0
    return-void
.end method

.method public final MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/cc;->ep:Lcom/flurry/android/ar;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ar;->onAdClicked(Ljava/util/Map;)V

    .line 63
    invoke-static {}, Lcom/flurry/android/ar;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial clicked to overlay."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public final MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/android/cc;->ep:Lcom/flurry/android/ar;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ar;->onRenderFailed(Ljava/util/Map;)V

    .line 45
    invoke-static {}, Lcom/flurry/android/ar;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView Interstitial failed to load ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public final MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/android/cc;->ep:Lcom/flurry/android/ar;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ar;->onAdFilled(Ljava/util/Map;)V

    .line 71
    iget-object v0, p0, Lcom/flurry/android/cc;->ep:Lcom/flurry/android/ar;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ar;->onAdShown(Ljava/util/Map;)V

    .line 72
    iget-object v0, p0, Lcom/flurry/android/cc;->ep:Lcom/flurry/android/ar;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ar;->onAdClosed(Ljava/util/Map;)V

    .line 74
    invoke-static {}, Lcom/flurry/android/ar;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial overlay launched."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public final MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/flurry/android/ar;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView Interstitial request is caching."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public final MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-static {}, Lcom/flurry/android/ar;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView In returned interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
