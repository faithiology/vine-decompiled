.class Lco/vine/android/SettingsFragment$SettingsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SettingsFragment;


# direct methods
.method constructor <init>(Lco/vine/android/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "username"
    .parameter "token"
    .parameter "secret"
    .parameter "userId"

    .prologue
    .line 745
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 748
    :cond_0
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const-string v1, "twitter"

    invoke-virtual {v0, v1}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 749
    .local v8, pref:Landroid/preference/Preference;
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    const v0, 0x7f080078

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$400(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-wide/from16 v5, p7

    invoke-static/range {v0 .. v6}, Lco/vine/android/client/VineAccountHelper;->saveTwitterInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 756
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const/4 v1, 0x1

    #setter for: Lco/vine/android/SettingsFragment;->mTwitterLogin:Z
    invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$502(Lco/vine/android/SettingsFragment;Z)Z

    .line 757
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$300(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 758
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "settings_twitter_connected"

    const/4 v1, 0x1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 759
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 766
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 761
    :cond_1
    const v0, 0x7f080077

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 762
    const v0, 0x7f08007c

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 763
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/SettingsFragment;->mTwitterLogin:Z
    invoke-static {v0, v1}, Lco/vine/android/SettingsFragment;->access$502(Lco/vine/android/SettingsFragment;Z)Z

    .line 764
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisconnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    const/4 v4, 0x0

    .line 770
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 773
    :cond_0
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const-string v3, "twitter"

    invoke-virtual {v2, v3}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 774
    .local v1, pref:Landroid/preference/Preference;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_1

    .line 775
    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 776
    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 777
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAppController:Lco/vine/android/client/AppController;
    invoke-static {v3}, Lco/vine/android/SettingsFragment;->access$400(Lco/vine/android/SettingsFragment;)Lco/vine/android/client/AppController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/vine/android/client/VineAccountHelper;->removeTwitterInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 779
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #setter for: Lco/vine/android/SettingsFragment;->mTwitterLogin:Z
    invoke-static {v2, v4}, Lco/vine/android/SettingsFragment;->access$502(Lco/vine/android/SettingsFragment;Z)Z

    .line 780
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$300(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 781
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "settings_twitter_connected"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 782
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 786
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLogoutComplete(Ljava/lang/String;)V
    .locals 1
    .parameter "reqId"

    .prologue
    .line 790
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 796
    :cond_2
    iget-object v0, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mAvatarKey:Lco/vine/android/util/image/ImageKey;
    invoke-static {v2}, Lco/vine/android/SettingsFragment;->access$000(Lco/vine/android/SettingsFragment;)Lco/vine/android/util/image/ImageKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/image/UrlImage;

    .line 710
    .local v1, urlImage:Lco/vine/android/util/image/UrlImage;
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const-string v3, "settings_profile_avatar"

    invoke-virtual {v2, v3}, Lco/vine/android/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/ImagePreference;

    .line 711
    .local v0, pref:Lco/vine/android/widget/ImagePreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, v1, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lco/vine/android/widget/ImagePreference;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 713
    iget-object v2, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    const/4 v3, 0x1

    #setter for: Lco/vine/android/SettingsFragment;->mPhotoAttached:Z
    invoke-static {v2, v3}, Lco/vine/android/SettingsFragment;->access$102(Lco/vine/android/SettingsFragment;Z)Z

    .line 715
    :cond_0
    return-void
.end method

.method public onUpdateProfileComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "avatarUrl"

    .prologue
    .line 720
    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$200(Lco/vine/android/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 723
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 734
    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v1}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SettingsActivity;

    .line 735
    .local v0, activity:Lco/vine/android/SettingsActivity;
    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 739
    :goto_0
    return-void

    .line 725
    .end local v0           #activity:Lco/vine/android/SettingsActivity;
    :pswitch_0
    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v1}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lco/vine/android/SettingsActivity;

    .line 726
    .restart local v0       #activity:Lco/vine/android/SettingsActivity;
    const v1, 0x7f080073

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 727
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 728
    iget-object v1, p0, Lco/vine/android/SettingsFragment$SettingsListener;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$300(Lco/vine/android/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "settings_profile_avatar"

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 730
    :cond_1
    invoke-virtual {v0}, Lco/vine/android/SettingsActivity;->onFinishedWithBackPress()V

    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
