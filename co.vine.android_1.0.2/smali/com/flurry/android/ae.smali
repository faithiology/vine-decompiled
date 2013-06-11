.class final Lcom/flurry/android/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private synthetic au:Lcom/flurry/android/ai;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/ai;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/ae;-><init>(Lcom/flurry/android/ai;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/ai;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/flurry/android/ae;->au:Lcom/flurry/android/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/flurry/android/ae;->au:Lcom/flurry/android/ai;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ai;->onAdClosed(Ljava/util/Map;)V

    .line 100
    invoke-static {}, Lcom/flurry/android/ai;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView dismissed from screen."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/android/ae;->au:Lcom/flurry/android/ai;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ai;->onRenderFailed(Ljava/util/Map;)V

    .line 89
    invoke-static {}, Lcom/flurry/android/ai;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView failed to receive ad."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/android/ae;->au:Lcom/flurry/android/ai;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ai;->onAdClicked(Ljava/util/Map;)V

    .line 106
    invoke-static {}, Lcom/flurry/android/ai;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView leave application."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-static {}, Lcom/flurry/android/ai;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView present on screen."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/android/ae;->au:Lcom/flurry/android/ai;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ai;->onAdFilled(Ljava/util/Map;)V

    .line 82
    iget-object v0, p0, Lcom/flurry/android/ae;->au:Lcom/flurry/android/ai;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ai;->onAdShown(Ljava/util/Map;)V

    .line 83
    invoke-static {}, Lcom/flurry/android/ai;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Admob AdView received ad."

    invoke-static {v0, v1}, Lcom/flurry/android/db;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method
