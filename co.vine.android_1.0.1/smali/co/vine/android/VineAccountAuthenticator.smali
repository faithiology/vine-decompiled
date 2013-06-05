.class public Lco/vine/android/VineAccountAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "VineAccountAuthenticator.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lco/vine/android/VineAccountAuthenticator;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "intent"

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lco/vine/android/VineAccountAuthenticator;->mContext:Landroid/content/Context;

    const-class v4, Lco/vine/android/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "accountAuthenticatorResponse"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    return-object v0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter "response"
    .parameter "account"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lco/vine/android/VineAccountAuthenticator;->mContext:Landroid/content/Context;

    const-class v3, Lco/vine/android/AuthenticatorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "username"

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "confirm_credentials"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v5, "co.vine.android.basic_auth.token.secret"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v3, result:Landroid/os/Bundle;
    const-string v5, "errorMessage"

    const-string v6, "invalid authTokenType"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v3           #result:Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 96
    :cond_0
    iget-object v5, p0, Lco/vine/android/VineAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 97
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-virtual {v0, p2, p3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, token:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 99
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 100
    .restart local v3       #result:Landroid/os/Bundle;
    const-string v5, "authAccount"

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v5, "accountType"

    const-string v6, "co.vine.android.auth"

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "authtoken"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v3           #result:Landroid/os/Bundle;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lco/vine/android/VineAccountAuthenticator;->mContext:Landroid/content/Context;

    const-class v6, Lco/vine/android/AuthenticatorActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "accountAuthenticatorResponse"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    const-string v5, "username"

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v5, "auth_token_type"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "intent"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v3, v1

    .line 115
    goto :goto_0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "authTokenType"

    .prologue
    .line 120
    iget-object v0, p0, Lco/vine/android/VineAccountAuthenticator;->mContext:Landroid/content/Context;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 75
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lco/vine/android/VineAccountAuthenticator;->mContext:Landroid/content/Context;

    const-class v3, Lco/vine/android/AuthenticatorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "username"

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v2, "auth_token_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    return-object v0
.end method
