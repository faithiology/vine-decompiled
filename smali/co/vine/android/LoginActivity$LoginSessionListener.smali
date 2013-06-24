.class Lco/vine/android/LoginActivity$LoginSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/LoginActivity;


# direct methods
.method constructor <init>(Lco/vine/android/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lco/vine/android/LoginActivity$LoginSessionListener;->this$0:Lco/vine/android/LoginActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V
    .locals 1
    .parameter "session"
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "login"

    .prologue
    .line 177
    iget-object v0, p0, Lco/vine/android/LoginActivity$LoginSessionListener;->this$0:Lco/vine/android/LoginActivity;

    invoke-virtual {v0, p3, p4}, Lco/vine/android/LoginActivity;->completeLogin(ILjava/lang/String;)V

    .line 178
    iget-object v0, p0, Lco/vine/android/LoginActivity$LoginSessionListener;->this$0:Lco/vine/android/LoginActivity;

    invoke-virtual {v0}, Lco/vine/android/LoginActivity;->dismissDialog()V

    .line 179
    return-void
.end method
