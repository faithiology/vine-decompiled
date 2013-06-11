.class final Lcom/flurry/android/bz;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic dW:Lcom/flurry/android/bn;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/bn;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/bz;-><init>(Lcom/flurry/android/bn;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/bn;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 109
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->c(Lcom/flurry/android/bn;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->d(Lcom/flurry/android/bn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    const-string v1, "mraid.js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Z)Z

    .line 134
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->e(Lcom/flurry/android/bn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->f(Lcom/flurry/android/bn;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->c(Lcom/flurry/android/bn;)V

    .line 173
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->h(Lcom/flurry/android/bn;)V

    .line 175
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v1, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bn;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-virtual {v0}, Lcom/flurry/android/bn;->ad()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-virtual {v0}, Lcom/flurry/android/bn;->ad()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v1, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/bn;->addView(Landroid/view/View;)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, v2}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;Z)Z

    .line 182
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->d(Lcom/flurry/android/bn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->f(Lcom/flurry/android/bn;)V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->g(Lcom/flurry/android/bn;)V

    .line 154
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, v2}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;Z)Z

    .line 155
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0, v2}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Z)Z

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v3, v3, Lcom/flurry/android/bn;->M:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v4, v4, Lcom/flurry/android/bn;->L:Lcom/flurry/android/cz;

    iget-object v5, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget v5, v5, Lcom/flurry/android/bn;->N:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/bn;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;II)V

    .line 246
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v0}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    .line 196
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flurry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_2

    .line 202
    iget-object v2, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v2}, Lcom/flurry/android/bn;->i(Lcom/flurry/android/bn;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/bd;->t(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 205
    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v3, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v3

    .line 208
    iget-object v4, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/flurry/android/bn;->b(Lcom/flurry/android/bn;Ljava/lang/String;)Lcom/flurry/android/cz;

    move-result-object v4

    .line 209
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 211
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/bn;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;II)V

    .line 219
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v3, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v3, v3, Lcom/flurry/android/bn;->M:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v4, v4, Lcom/flurry/android/bn;->L:Lcom/flurry/android/cz;

    iget-object v5, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget v5, v5, Lcom/flurry/android/bn;->N:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/bn;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/cz;II)V

    goto :goto_1

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    const-string v1, "clicked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/bn;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 224
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-virtual {v0}, Lcom/flurry/android/bn;->ag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v0, v0, Lcom/flurry/android/bn;->M:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->getAdSpace()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v2}, Lcom/flurry/android/bn;->j(Lcom/flurry/android/bn;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v2, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v2, v2, Lcom/flurry/android/bn;->K:Lcom/flurry/android/FlurryAds;

    iget-object v3, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v3}, Lcom/flurry/android/bn;->j(Lcom/flurry/android/bn;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 234
    iget-object v1, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v1}, Lcom/flurry/android/bn;->a(Lcom/flurry/android/bn;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v1, v2}, Lcom/flurry/android/db;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    iget-object v1, v1, Lcom/flurry/android/bn;->K:Lcom/flurry/android/FlurryAds;

    iget-object v2, p0, Lcom/flurry/android/bz;->dW:Lcom/flurry/android/bn;

    invoke-static {v2}, Lcom/flurry/android/bn;->j(Lcom/flurry/android/bn;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/flurry/android/FlurryAds;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
