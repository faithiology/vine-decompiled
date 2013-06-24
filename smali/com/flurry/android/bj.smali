.class final Lcom/flurry/android/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixAdViewListener;


# instance fields
.field private synthetic dn:Lcom/flurry/android/aw;


# direct methods
.method constructor <init>(Lcom/flurry/android/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/android/bj;->dn:Lcom/flurry/android/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final keywords()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/flurry/android/aw;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix keyword callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/android/bj;->dn:Lcom/flurry/android/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/aw;->onAdClicked(Ljava/util/Map;)V

    .line 85
    invoke-static {}, Lcom/flurry/android/aw;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public final onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/android/bj;->dn:Lcom/flurry/android/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/aw;->onAdClicked(Ljava/util/Map;)V

    .line 92
    invoke-static {}, Lcom/flurry/android/aw;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView custom ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public final onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/android/bj;->dn:Lcom/flurry/android/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/aw;->onRenderFailed(Ljava/util/Map;)V

    .line 71
    invoke-static {}, Lcom/flurry/android/aw;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public final onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {}, Lcom/flurry/android/aw;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView loaded an open allocation ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public final onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/bj;->dn:Lcom/flurry/android/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/aw;->onAdFilled(Ljava/util/Map;)V

    .line 63
    iget-object v0, p0, Lcom/flurry/android/bj;->dn:Lcom/flurry/android/aw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/aw;->onAdShown(Ljava/util/Map;)V

    .line 64
    invoke-static {}, Lcom/flurry/android/aw;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix AdView ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public final query()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/flurry/android/aw;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mobclix query callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
