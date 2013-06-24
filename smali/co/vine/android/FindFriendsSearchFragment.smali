.class public Lco/vine/android/FindFriendsSearchFragment;
.super Lco/vine/android/BaseFragment;
.source "FindFriendsSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ARG_LAYOUT:Ljava/lang/String; = "layout"


# instance fields
.field private mBold:[Landroid/text/style/StyleSpan;

.field private mInviteEmail:Landroid/widget/Button;

.field private mInviteText:Landroid/widget/Button;

.field private mLayoutRes:I

.field private mSearch:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lco/vine/android/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 65
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "sms_body"

    const v2, 0x7f0700bb

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lco/vine/android/FindFriendsSearchFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lco/vine/android/FindFriendsSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lco/vine/android/FindFriendsSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0700bd

    invoke-virtual {p0, v2}, Lco/vine/android/FindFriendsSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "android.intent.extra.TEXT"

    const v2, 0x7f0700be

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lco/vine/android/FindFriendsSearchFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lco/vine/android/FindFriendsSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const v1, 0x7f0700bc

    invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/vine/android/FindFriendsSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/vine/android/SearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x7f090025
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-super {p0, p1}, Lco/vine/android/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-array v1, v4, [Landroid/text/style/StyleSpan;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v1, v3

    iput-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mBold:[Landroid/text/style/StyleSpan;

    .line 35
    invoke-virtual {p0}, Lco/vine/android/FindFriendsSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "layout"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mLayoutRes:I

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x22

    .line 42
    iget v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, v:Landroid/view/View;
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mSearch:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mSearch:Landroid/widget/Button;

    iget-object v2, p0, Lco/vine/android/FindFriendsSearchFragment;->mBold:[Landroid/text/style/StyleSpan;

    const v3, 0x7f0700b1

    invoke-virtual {p0, v3}, Lco/vine/android/FindFriendsSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mSearch:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mInviteText:Landroid/widget/Button;

    .line 50
    iget-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mInviteText:Landroid/widget/Button;

    iget-object v2, p0, Lco/vine/android/FindFriendsSearchFragment;->mBold:[Landroid/text/style/StyleSpan;

    const v3, 0x7f0700af

    invoke-virtual {p0, v3}, Lco/vine/android/FindFriendsSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mInviteText:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mInviteEmail:Landroid/widget/Button;

    .line 55
    iget-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mInviteEmail:Landroid/widget/Button;

    iget-object v2, p0, Lco/vine/android/FindFriendsSearchFragment;->mBold:[Landroid/text/style/StyleSpan;

    const v3, 0x7f0700b0

    invoke-virtual {p0, v3}, Lco/vine/android/FindFriendsSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lco/vine/android/FindFriendsSearchFragment;->mInviteEmail:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-object v0
.end method
