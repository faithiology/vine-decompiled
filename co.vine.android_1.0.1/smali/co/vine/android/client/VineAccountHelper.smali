.class public Lco/vine/android/client/VineAccountHelper;
.super Ljava/lang/Object;
.source "VineAccountHelper.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "co.vine.android.auth"

.field public static final KEY_LOGIN_TYPE:Ljava/lang/String; = "account_login_type"

.field public static final KEY_SETTINGS:Ljava/lang/String; = "account_settings"

.field public static final KEY_TWITTER_SECRET:Ljava/lang/String; = "account_t_secret"

.field public static final KEY_TWITTER_TOKEN:Ljava/lang/String; = "account_t_token"

.field public static final KEY_TWITTER_USERNAME:Ljava/lang/String; = "account_t_username"

.field public static final KEY_TWITTER_USER_ID:Ljava/lang/String; = "account_t_id"

.field public static final KEY_USER_AVATAR:Ljava/lang/String; = "account_user_avatar"

.field public static final KEY_USER_DATA:Ljava/lang/String; = "account_user_data"

.field public static final KEY_USER_ID:Ljava/lang/String; = "account_user_info"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "account_user_name"

.field public static final LOGIN_TYPE_EMAIL:I = 0x1

.field public static final LOGIN_TYPE_TWITTER:I = 0x2

.field public static final SESSION_TOKEN_KEY:Ljava/lang/String; = "co.vine.android.basic_auth.token.secret"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAccount(Landroid/content/Context;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5
    .parameter "context"
    .parameter "uniqueLogin"
    .parameter "vl"
    .parameter "password"
    .parameter "avatar"
    .parameter "accountName"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 97
    .local v1, am:Landroid/accounts/AccountManager;
    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 98
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/accounts/Account;

    .end local v0           #account:Landroid/accounts/Account;
    const-string v3, "co.vine.android.auth"

    invoke-direct {v0, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .restart local v0       #account:Landroid/accounts/Account;
    invoke-virtual {v1, v0, v2, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    :goto_0
    return-object v2

    .line 104
    :cond_0
    iget v2, p2, Lco/vine/android/api/VineLogin;->loginType:I

    packed-switch v2, :pswitch_data_0

    .line 120
    :goto_1
    const-string v2, "account_user_name"

    invoke-virtual {v1, v0, v2, p5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "account_user_avatar"

    invoke-virtual {v1, v0, v2, p4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "account_user_info"

    iget-wide v3, p2, Lco/vine/android/api/VineLogin;->userId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "co.vine.android.basic_auth.token.secret"

    iget-object v3, p2, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 124
    goto :goto_0

    .line 106
    :pswitch_0
    invoke-virtual {v1, v0, p3}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 107
    const-string v2, "account_login_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :pswitch_1
    const-string v2, "account_t_token"

    iget-object v3, p2, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "account_t_secret"

    iget-object v3, p2, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "account_t_id"

    iget-wide v3, p2, Lco/vine/android/api/VineLogin;->twitterUserId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "account_t_username"

    iget-object v3, p2, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "account_login_type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 7
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 67
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 68
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v6, "co.vine.android.auth"

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 69
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 70
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return-object v0

    .line 69
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAccountsCount(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 85
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "co.vine.android.auth"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    return v1
.end method

.method public static getAvatarUrl(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "am"
    .parameter "account"

    .prologue
    .line 233
    const-string v0, "account_user_avatar"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I
    .locals 1
    .parameter "am"
    .parameter "account"

    .prologue
    .line 251
    const-string v0, "account_login_type"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getName(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "am"
    .parameter "account"

    .prologue
    .line 244
    const-string v0, "account_user_name"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPassword(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "am"
    .parameter "account"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "am"
    .parameter "account"

    .prologue
    .line 206
    const-string v0, "co.vine.android.basic_auth.token.secret"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTwitterSecret(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "am"
    .parameter "account"

    .prologue
    .line 272
    const-string v0, "account_t_secret"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTwitterToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "am"
    .parameter "account"

    .prologue
    .line 265
    const-string v0, "account_t_token"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTwitterUsername(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "am"
    .parameter "account"

    .prologue
    .line 279
    const-string v0, "account_t_username"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId(Landroid/accounts/AccountManager;Landroid/accounts/Account;)J
    .locals 3
    .parameter "am"
    .parameter "account"

    .prologue
    .line 217
    const-string v1, "account_user_info"

    invoke-virtual {p0, p1, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, userIdS:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 219
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 221
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static removeAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .parameter "context"
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 138
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 139
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v7, "co.vine.android.auth"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 141
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 142
    .local v0, account:Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 143
    invoke-virtual {v2, v0, v6, v6}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v6

    .line 146
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    return-object v6

    .line 141
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static removeTwitterInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 183
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 185
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v2, "account_t_token"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "account_t_secret"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "account_t_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "account_t_username"

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "account_login_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v1           #am:Landroid/accounts/AccountManager;
    :cond_0
    return-void
.end method

.method public static saveTwitterInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "accountName"
    .parameter "username"
    .parameter "token"
    .parameter "secret"
    .parameter "twitterUserId"

    .prologue
    .line 168
    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 169
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 170
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 171
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v2, "account_t_token"

    invoke-virtual {v1, v0, v2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "account_t_secret"

    invoke-virtual {v1, v0, v2, p4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "account_t_id"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "account_t_username"

    invoke-virtual {v1, v0, v2, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "account_login_type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v1           #am:Landroid/accounts/AccountManager;
    :cond_0
    return-void
.end method

.method public static saveUserId(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "accountName"
    .parameter "userId"

    .prologue
    .line 157
    invoke-static {p0, p1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 158
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 159
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 160
    .local v1, am:Landroid/accounts/AccountManager;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 161
    const-string v2, "account_user_info"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v1           #am:Landroid/accounts/AccountManager;
    :cond_0
    return-void
.end method

.method public static setSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter "am"
    .parameter "account"
    .parameter "key"

    .prologue
    .line 195
    const-string v0, "co.vine.android.basic_auth.token.secret"

    invoke-virtual {p0, p1, v0, p2}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method
