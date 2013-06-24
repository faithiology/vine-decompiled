.class final Lcom/flurry/android/bw;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/android/AdUnit;",
        ">;>;"
    }
.end annotation


# instance fields
.field private H:Ljava/lang/String;

.field private J:Landroid/content/Context;

.field private ao:Landroid/view/ViewGroup;

.field private eb:Lcom/flurry/android/FlurryAdSize;

.field private ec:Z

.field private ed:Z

.field private synthetic ee:Lcom/flurry/android/FlurryAds;


# direct methods
.method public constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/flurry/android/bw;->ee:Lcom/flurry/android/FlurryAds;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 951
    iput-object p2, p0, Lcom/flurry/android/bw;->J:Landroid/content/Context;

    .line 952
    iput-object p3, p0, Lcom/flurry/android/bw;->H:Ljava/lang/String;

    .line 953
    iput-object p4, p0, Lcom/flurry/android/bw;->eb:Lcom/flurry/android/FlurryAdSize;

    .line 954
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 958
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/bw;-><init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)V

    .line 959
    iput-object p5, p0, Lcom/flurry/android/bw;->ao:Landroid/view/ViewGroup;

    .line 960
    iput-boolean p7, p0, Lcom/flurry/android/bw;->ec:Z

    .line 961
    iput-boolean p6, p0, Lcom/flurry/android/bw;->ed:Z

    .line 962
    return-void
.end method

.method private varargs aj()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bw;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/bw;->J:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/bw;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/bw;->ao:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flurry/android/bw;->eb:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;)Ljava/util/List;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/flurry/android/bw;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v1, v1, Lcom/flurry/android/FlurryAds;->cJ:Lcom/flurry/android/aj;

    invoke-virtual {v1, v0}, Lcom/flurry/android/aj;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :goto_0
    return-object v0

    .line 974
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 977
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/flurry/android/bw;->aj()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 940
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/bw;->ed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flurry/android/bw;->ec:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/bw;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/bw;->J:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/bw;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/FlurryAds;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/bw;->ed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/android/bw;->ec:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/bw;->ee:Lcom/flurry/android/FlurryAds;

    iget-object v1, p0, Lcom/flurry/android/bw;->J:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/bw;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/bw;->ao:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
