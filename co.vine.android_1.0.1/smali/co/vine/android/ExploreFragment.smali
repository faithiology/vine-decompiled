.class public Lco/vine/android/ExploreFragment;
.super Lco/vine/android/BaseFragment;
.source "ExploreFragment.java"

# interfaces
.implements Lco/vine/android/widget/OnTabChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGGABLE:Z = false

.field private static final PARAM_MODEL:Ljava/lang/String; = "model"

.field private static final PARAM_OS:Ljava/lang/String; = "os"

.field private static final PARAM_VERSION:Ljava/lang/String; = "v"

.field private static final PREF_LAST_REFRESH_TIME:Ljava/lang/String; = "last_explore"

.field private static final REFRESH_INTERVAL:J = 0xdbba0L

.field private static final TAG:Ljava/lang/String; = "ExploreFragment"

.field private static final VALUE_OS:Ljava/lang/String; = "android"

.field private static final VALUE_UNDEFINED:Ljava/lang/String; = "undefined"


# instance fields
.field private mEmpty:Landroid/view/View;

.field private mEmptyText:Landroid/widget/TextView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressContainer:Landroid/widget/RelativeLayout;

.field private mSadface:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "ExploreFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/ExploreFragment;->LOGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    .line 124
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lco/vine/android/ExploreFragment;->LOGGABLE:Z

    return v0
.end method

.method static synthetic access$100(Lco/vine/android/ExploreFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/ExploreFragment;->mProgressContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/ExploreFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/ExploreFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/ExploreFragment;->mSadface:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/ExploreFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getExploreUrl()Ljava/lang/String;
    .locals 10

    .prologue
    .line 86
    const v5, 0x7f08000a

    invoke-virtual {p0, v5}, Lco/vine/android/ExploreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, baseUrl:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lco/vine/android/util/Util;->getVersionName(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 97
    .local v4, versionName:Ljava/lang/String;
    :goto_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s_%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, model:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    const-string v7, "\\s+"

    const-string v8, "-"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "v"

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "os"

    const-string v7, "android"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    .end local v1           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v2           #model:Ljava/lang/String;
    .end local v4           #versionName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 93
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "undefined"

    .restart local v4       #versionName:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, v:Landroid/view/View;
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;

    .line 63
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lco/vine/android/ExploreFragment;->mProgressContainer:Landroid/widget/RelativeLayout;

    .line 65
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/vine/android/ExploreFragment;->mSadface:Landroid/widget/ImageView;

    .line 66
    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;

    .line 67
    invoke-virtual {p0}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ExploreFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 68
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    .local v0, parent:Landroid/view/ViewGroup;
    iget-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 176
    iget-object v1, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 177
    invoke-super {p0}, Lco/vine/android/BaseFragment;->onDestroy()V

    .line 178
    return-void
.end method

.method public onMoveAway(I)V
    .locals 0
    .parameter "newPosition"

    .prologue
    .line 110
    return-void
.end method

.method public onMoveTo(I)V
    .locals 8
    .parameter "oldPosition"

    .prologue
    const-wide/16 v6, 0x0

    .line 114
    iget-object v4, p0, Lco/vine/android/ExploreFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "last_explore"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 115
    .local v0, lastTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    .local v2, now:J
    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    const-wide/32 v4, 0xdbba0

    add-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 117
    iget-object v4, p0, Lco/vine/android/ExploreFragment;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lco/vine/android/ExploreFragment;->getExploreUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lco/vine/android/ExploreFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_explore"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    cmp-long v4, v0, v6

    if-gtz v4, :cond_0

    .line 120
    iget-object v4, p0, Lco/vine/android/ExploreFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_explore"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    const v2, 0x7f09001c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 76
    .local v1, webView:Landroid/webkit/WebView;
    new-instance v2, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;

    invoke-direct {v2, p0}, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;-><init>(Lco/vine/android/ExploreFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 78
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 79
    .local v0, s:Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    invoke-direct {p0}, Lco/vine/android/ExploreFragment;->getExploreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    return-void
.end method
