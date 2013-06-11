.class final Lcom/flurry/android/ab;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private J:Landroid/content/Context;

.field private ae:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/android/FlurryAds;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2834
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2828
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ab;->d:Ljava/lang/String;

    .line 2836
    iput-object p2, p0, Lcom/flurry/android/ab;->J:Landroid/content/Context;

    .line 2837
    iput-object p3, p0, Lcom/flurry/android/ab;->ae:Ljava/lang/String;

    .line 2838
    return-void
.end method

.method private varargs g()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2846
    .line 2849
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 2853
    :try_start_0
    iget-object v2, p0, Lcom/flurry/android/ab;->ae:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2855
    iget-object v2, p0, Lcom/flurry/android/ab;->J:Landroid/content/Context;

    invoke-static {v2}, Lcom/flurry/android/FlurryAds;->j(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/flurry/android/ab;->J:Landroid/content/Context;

    invoke-static {v2}, Lcom/flurry/android/FlurryAds;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2858
    iget-object v2, p0, Lcom/flurry/android/ab;->ae:Ljava/lang/String;

    const/16 v3, 0x2710

    const/16 v4, 0x3a98

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/flurry/android/bd;->a(Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 2859
    if-eqz v2, :cond_2

    .line 2861
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 2862
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 2864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/ab;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2865
    iget-object v0, p0, Lcom/flurry/android/ab;->ae:Ljava/lang/String;

    .line 2915
    :cond_0
    :goto_1
    return-object v0

    .line 2868
    :cond_1
    const/16 v4, 0x12c

    if-lt v3, v4, :cond_3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_3

    .line 2870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumRedirects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2871
    const-string v3, "Location"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2873
    const-string v3, "Location"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/ab;->ae:Ljava/lang/String;

    .line 2907
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2878
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Response status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2912
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2887
    :cond_4
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2889
    :catch_1
    move-exception v2

    .line 2891
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 2898
    :cond_5
    iget-object v1, p0, Lcom/flurry/android/ab;->J:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/ab;->ae:Ljava/lang/String;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/FlurryAds;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2900
    iget-object v0, p0, Lcom/flurry/android/ab;->ae:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2826
    invoke-direct {p0}, Lcom/flurry/android/ab;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
