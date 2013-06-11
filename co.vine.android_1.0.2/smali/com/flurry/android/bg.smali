.class final Lcom/flurry/android/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# instance fields
.field private synthetic dg:Lcom/flurry/android/bi;


# direct methods
.method constructor <init>(Lcom/flurry/android/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/flurry/android/bg;->dg:Lcom/flurry/android/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-static {}, Lcom/flurry/android/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView banner caching completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public final MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/android/bg;->dg:Lcom/flurry/android/bi;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bi;->onAdClicked(Ljava/util/Map;)V

    .line 96
    invoke-static {}, Lcom/flurry/android/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView clicked to overlay."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public final MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/android/bg;->dg:Lcom/flurry/android/bi;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bi;->onRenderFailed(Ljava/util/Map;)V

    .line 75
    invoke-static {}, Lcom/flurry/android/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView failed to load ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public final MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-static {}, Lcom/flurry/android/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView banner overlay launched."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public final MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/flurry/android/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Millennial MMAdView banner request is caching."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public final MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/android/bg;->dg:Lcom/flurry/android/bi;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bi;->onAdFilled(Ljava/util/Map;)V

    .line 82
    iget-object v0, p0, Lcom/flurry/android/bg;->dg:Lcom/flurry/android/bi;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bi;->onAdShown(Ljava/util/Map;)V

    .line 83
    invoke-static {}, Lcom/flurry/android/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView returned ad."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
