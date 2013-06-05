.class Lco/vine/android/HomeTabActivity$ChangesListener;
.super Lco/vine/android/client/AppSessionListener;
.source "HomeTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/HomeTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/HomeTabActivity;


# direct methods
.method constructor <init>(Lco/vine/android/HomeTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lco/vine/android/HomeTabActivity$ChangesListener;->this$0:Lco/vine/android/HomeTabActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V
    .locals 5
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "sessionOwnerId"
    .parameter "meUser"

    .prologue
    const/4 v2, 0x1

    .line 539
    if-eqz p6, :cond_0

    .line 540
    iget-object v3, p0, Lco/vine/android/HomeTabActivity$ChangesListener;->this$0:Lco/vine/android/HomeTabActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 543
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 545
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v3, "settings_profile_name"

    iget-object v4, p6, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 546
    const-string v3, "settings_profile_description"

    iget-object v4, p6, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 547
    const-string v3, "settings_profile_location"

    iget-object v4, p6, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    const-string v3, "settings_profile_phone"

    iget-object v4, p6, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 549
    const-string v3, "settings_profile_email"

    iget-object v4, p6, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    const-string v3, "settings_profile_avatar"

    iget-object v4, p6, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 551
    const-string v3, "settings_twitter_connected"

    iget v4, p6, Lco/vine/android/api/VineUser;->twitterConnected:I

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 551
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLogoutComplete(Ljava/lang/String;)V
    .locals 1
    .parameter "reqId"

    .prologue
    .line 528
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$ChangesListener;->this$0:Lco/vine/android/HomeTabActivity;

    invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$ChangesListener;->this$0:Lco/vine/android/HomeTabActivity;

    invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->dismissDialog()V

    .line 532
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$ChangesListener;->this$0:Lco/vine/android/HomeTabActivity;

    invoke-static {v0}, Lco/vine/android/StartActivity;->toStart(Landroid/app/Activity;)V

    .line 533
    iget-object v0, p0, Lco/vine/android/HomeTabActivity$ChangesListener;->this$0:Lco/vine/android/HomeTabActivity;

    invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->finish()V

    goto :goto_0
.end method
