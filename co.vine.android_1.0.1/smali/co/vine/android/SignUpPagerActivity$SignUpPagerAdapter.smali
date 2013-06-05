.class Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SignUpPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SignUpPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignUpPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SignUpPagerActivity;


# direct methods
.method public constructor <init>(Lco/vine/android/SignUpPagerActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter "fm"

    .prologue
    .line 166
    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;->this$0:Lco/vine/android/SignUpPagerActivity;

    .line 167
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 168
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter "i"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no pager found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :pswitch_0
    new-instance v0, Lco/vine/android/SignUpNameAvatarFragment;

    invoke-direct {v0}, Lco/vine/android/SignUpNameAvatarFragment;-><init>()V

    .line 175
    .local v0, fragment:Lco/vine/android/SignUpNameAvatarFragment;
    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;->this$0:Lco/vine/android/SignUpPagerActivity;

    #getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
    invoke-static {v1}, Lco/vine/android/SignUpPagerActivity;->access$100(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;->this$0:Lco/vine/android/SignUpPagerActivity;

    invoke-virtual {v1}, Lco/vine/android/SignUpPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/SignUpNameAvatarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 181
    .end local v0           #fragment:Lco/vine/android/SignUpNameAvatarFragment;
    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lco/vine/android/SignUpDetailsFragment;

    invoke-direct {v0}, Lco/vine/android/SignUpDetailsFragment;-><init>()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
