.class Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ExploreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ExploreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VineVideoListWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ExploreFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ExploreFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 147
    invoke-static {}, Lco/vine/android/ExploreFragment;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "ExploreFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewClient errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mProgressContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$100(Lco/vine/android/ExploreFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mProgressContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$100(Lco/vine/android/ExploreFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    :cond_1
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$200(Lco/vine/android/ExploreFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$200(Lco/vine/android/ExploreFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_2
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mSadface:Landroid/widget/ImageView;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$300(Lco/vine/android/ExploreFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mSadface:Landroid/widget/ImageView;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$300(Lco/vine/android/ExploreFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :cond_3
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$400(Lco/vine/android/ExploreFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$400(Lco/vine/android/ExploreFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :cond_4
    const/4 v1, -0x2

    if-ne p2, v1, :cond_5

    .line 170
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    const v2, 0x7f0700d2

    invoke-virtual {v1, v2}, Lco/vine/android/ExploreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    #getter for: Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$400(Lco/vine/android/ExploreFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .line 172
    .end local v0           #message:Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    const v2, 0x7f0700d3

    invoke-virtual {v1, v2}, Lco/vine/android/ExploreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 134
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .local v0, parsedUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;

    invoke-virtual {v3}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lco/vine/android/ExploreVideoListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/ExploreFragment;->startActivity(Landroid/content/Intent;)V

    .line 138
    const/4 v1, 0x1

    .line 140
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
