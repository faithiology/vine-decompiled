.class final Lcom/flurry/android/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdListener;


# instance fields
.field private synthetic bM:Lcom/flurry/android/an;


# direct methods
.method constructor <init>(Lcom/flurry/android/an;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/flurry/android/as;->bM:Lcom/flurry/android/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdRequestCompleted(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/flurry/android/as;->bM:Lcom/flurry/android/an;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/an;->onAdFilled(Ljava/util/Map;)V

    .line 150
    iget-object v0, p0, Lcom/flurry/android/as;->bM:Lcom/flurry/android/an;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/an;->onAdShown(Ljava/util/Map;)V

    .line 151
    invoke-static {}, Lcom/flurry/android/an;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView ad request completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public final onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/android/as;->bM:Lcom/flurry/android/an;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/an;->onRenderFailed(Ljava/util/Map;)V

    .line 143
    invoke-static {}, Lcom/flurry/android/an;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView ad request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public final onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/flurry/android/as;->bM:Lcom/flurry/android/an;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/an;->onAdClosed(Ljava/util/Map;)V

    .line 136
    invoke-static {}, Lcom/flurry/android/an;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView dismiss ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public final onLeaveApplication(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lcom/flurry/android/an;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi onLeaveApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public final onShowAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/android/as;->bM:Lcom/flurry/android/an;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/an;->onAdClicked(Ljava/util/Map;)V

    .line 129
    invoke-static {}, Lcom/flurry/android/an;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InMobi imAdView ad shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method
