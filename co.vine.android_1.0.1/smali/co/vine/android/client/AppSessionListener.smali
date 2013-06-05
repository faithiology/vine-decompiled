.class public abstract Lco/vine/android/client/AppSessionListener;
.super Ljava/lang/Object;
.source "AppSessionListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckTwitterComplete(Ljava/lang/String;ILjava/lang/String;ZLco/vine/android/api/VineUser;Lco/vine/android/api/VineLogin;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "accountExists"
    .parameter "user"
    .parameter "login"

    .prologue
    .line 65
    return-void
.end method

.method public onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "username"
    .parameter "token"
    .parameter "secret"
    .parameter "userId"

    .prologue
    .line 153
    return-void
.end method

.method public onDeletePostComplete(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 148
    return-void
.end method

.method public onDisconnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 156
    return-void
.end method

.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "userId"

    .prologue
    .line 122
    return-void
.end method

.method public onGetActivityComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "count"

    .prologue
    .line 129
    return-void
.end method

.method public onGetAddressFriendsComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "count"

    .prologue
    .line 133
    return-void
.end method

.method public onGetCommentsComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 107
    return-void
.end method

.method public onGetPostIdComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 169
    return-void
.end method

.method public onGetSinglePostComplete(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 166
    return-void
.end method

.method public onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "type"
    .parameter "count"

    .prologue
    .line 119
    return-void
.end method

.method public onGetTwitterAuthUrlComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "authUrl"

    .prologue
    .line 61
    return-void
.end method

.method public onGetTwitterFriendsComplete(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "count"

    .prologue
    .line 91
    return-void
.end method

.method public onGetTwitterUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "user"
    .parameter "login"

    .prologue
    .line 69
    return-void
.end method

.method public onGetUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineUser;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "user"

    .prologue
    .line 139
    return-void
.end method

.method public onGetUsersComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;II)V
    .locals 0
    .parameter "session"
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "count"
    .parameter
    .parameter "nextPage"
    .parameter "previousPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/client/Session;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p6, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    return-void
.end method

.method public onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "sessionOwnerId"
    .parameter "meUser"

    .prologue
    .line 115
    return-void
.end method

.method public onLikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 160
    return-void
.end method

.method public onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V
    .locals 0
    .parameter "session"
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "login"

    .prologue
    .line 30
    return-void
.end method

.method public onLogoutComplete(Ljava/lang/String;)V
    .locals 0
    .parameter "reqId"

    .prologue
    .line 38
    return-void
.end method

.method public onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "key"
    .parameter "result"

    .prologue
    .line 81
    return-void
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .locals 0
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
    .line 77
    .local p1, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/image/ImageKey;Lco/vine/android/util/image/UrlImage;>;"
    return-void
.end method

.method public onPostCommentComplete(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"
    .parameter "comment"

    .prologue
    .line 111
    return-void
.end method

.method public onRemoveUsersComplete(Ljava/lang/String;)V
    .locals 0
    .parameter "reqId"

    .prologue
    .line 136
    return-void
.end method

.method public onReportPostComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 145
    return-void
.end method

.method public onResetPasswordComplete(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 95
    return-void
.end method

.method public onSignUpComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "vineLogin"
    .parameter "accountName"
    .parameter "password"
    .parameter "avatarUrl"

    .prologue
    .line 51
    return-void
.end method

.method public onTwitterxAuthComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "login"

    .prologue
    .line 86
    return-void
.end method

.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "userId"

    .prologue
    .line 125
    return-void
.end method

.method public onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "postId"

    .prologue
    .line 163
    return-void
.end method

.method public onUpdateProfileComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "reqId"
    .parameter "statusCode"
    .parameter "reasonPhrase"
    .parameter "avatarUrl"

    .prologue
    .line 142
    return-void
.end method

.method public onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "key"
    .parameter "result"

    .prologue
    .line 103
    return-void
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, videos:Ljava/util/HashMap;,"Ljava/util/HashMap<Lco/vine/android/util/video/VideoKey;Lco/vine/android/util/video/UrlVideo;>;"
    return-void
.end method
