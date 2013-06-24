.class public Lco/vine/android/StartActivity;
.super Lco/vine/android/BaseActivity;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/StartActivity$StartSessionListener;
    }
.end annotation


# static fields
.field public static final ACTION_VIEW_POST:Ljava/lang/String; = "view_post"

.field private static final PREF_LOG_STARTUP_FAIL:Ljava/lang/String; = "pref_log_startup_fail"

.field private static final REQUEST_CODE_TWITTER_SDK:I = 0x1

.field private static final STATE_STOP_POSITION:Ljava/lang/String; = "state_p"


# instance fields
.field private mStopPosition:I

.field private mTwitter:Lcom/twitter/android/sdk/Twitter;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lco/vine/android/BaseActivity;-><init>()V

    .line 225
    return-void
.end method

.method public static toStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 179
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 207
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 208
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 209
    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, username:Ljava/lang/String;
    const-string v0, "tk"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, mToken:Ljava/lang/String;
    const-string v0, "ts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, mSecret:Ljava/lang/String;
    new-instance v6, Landroid/app/ProgressDialog;

    const/4 v0, 0x2

    invoke-direct {v6, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 214
    .local v6, dialog:Landroid/app/ProgressDialog;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 215
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 217
    iput-object v6, p0, Lco/vine/android/StartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 219
    iget-object v0, p0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    const-string v4, "user_id"

    const-wide/16 v7, 0x0

    invoke-virtual {p3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 223
    .end local v1           #username:Ljava/lang/String;
    .end local v2           #mToken:Ljava/lang/String;
    .end local v3           #mSecret:Ljava/lang/String;
    .end local v6           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 185
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/SignUpPagerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lco/vine/android/StartActivity;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/twitter/android/sdk/Twitter;->startAuthActivityForResult(Landroid/app/Activity;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/LoginTwitterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x7f090093
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const v19, 0x7f03002f

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-super {v0, v1, v2, v3}, Lco/vine/android/BaseActivity;->onCreate(Landroid/os/Bundle;IZ)V

    .line 60
    invoke-static/range {p0 .. p0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    .line 62
    const/16 v19, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->setRequestedOrientation(I)V

    .line 63
    invoke-static/range {p0 .. p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v5

    .line 65
    .local v5, appController:Lco/vine/android/client/AppController;
    invoke-static/range {p0 .. p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->needsUpdate(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 66
    invoke-virtual {v5}, Lco/vine/android/client/AppController;->updateClientProfile()Ljava/lang/String;

    .line 69
    :cond_0
    const/4 v7, 0x0

    .line 70
    .local v7, data:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, action:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 72
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 75
    :cond_1
    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/client/Session;->isLoggedIn()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 76
    new-instance v10, Landroid/content/Intent;

    const-class v19, Lco/vine/android/HomeTabActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v10, i:Landroid/content/Intent;
    if-eqz v7, :cond_2

    .line 78
    const-string v19, "view_post"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    :cond_2
    const/high16 v19, 0x400

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->finish()V

    .line 146
    .end local v4           #action:Ljava/lang/String;
    .end local v5           #appController:Lco/vine/android/client/AppController;
    .end local v7           #data:Landroid/net/Uri;
    .end local v10           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 85
    .restart local v4       #action:Ljava/lang/String;
    .restart local v5       #appController:Lco/vine/android/client/AppController;
    .restart local v7       #data:Landroid/net/Uri;
    :cond_3
    new-instance v6, Landroid/text/style/StyleSpan;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 86
    .local v6, boldSpan:Landroid/text/style/StyleSpan;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v14, v0, [Landroid/text/style/StyleSpan;

    const/16 v19, 0x0

    aput-object v6, v14, v19

    .line 90
    .local v14, mStyleSpanBoldSingle:[Landroid/text/style/StyleSpan;
    const v19, 0x7f090093

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 91
    .local v12, mSignUpEmail:Landroid/widget/Button;
    const v19, 0x7f070029

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 93
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v19, 0x7f090094

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 96
    .local v13, mSignUpTwitter:Landroid/widget/Button;
    const v19, 0x7f07002a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v19, 0x7f090095

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 101
    .local v11, mSignIn:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 103
    const v19, 0x7f07002b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Lco/vine/android/util/Util;->getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v17

    .line 105
    .local v17, spanned:Landroid/text/Spanned;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spannable;

    .line 108
    .local v16, spannable:Landroid/text/Spannable;
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 109
    .local v18, start:I
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 111
    .local v9, end:I
    new-instance v19, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080027

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v20, 0x21

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v9, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lco/vine/android/client/AppController;->getTwitter()Lcom/twitter/android/sdk/Twitter;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mTwitter:Lcom/twitter/android/sdk/Twitter;

    .line 118
    const v19, 0x7f090092

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lco/vine/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/VideoView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v19, v0

    new-instance v20, Lco/vine/android/StartActivity$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/StartActivity$1;-><init>(Lco/vine/android/StartActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "android.resource://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f060001

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 127
    if-eqz p1, :cond_4

    const-string v19, "state_p"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 129
    const-string v19, "state_p"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/StartActivity;->mStopPosition:I

    .line 131
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/StartActivity;->mStopPosition:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/VideoView;->seekTo(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/VideoView;->start()V

    .line 133
    new-instance v19, Lco/vine/android/StartActivity$StartSessionListener;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lco/vine/android/StartActivity$StartSessionListener;-><init>(Lco/vine/android/StartActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/StartActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 134
    move-object/from16 v0, p0

    iput-object v5, v0, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;

    .line 135
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "pref_log_startup_fail"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 138
    .end local v4           #action:Ljava/lang/String;
    .end local v5           #appController:Lco/vine/android/client/AppController;
    .end local v6           #boldSpan:Landroid/text/style/StyleSpan;
    .end local v7           #data:Landroid/net/Uri;
    .end local v9           #end:I
    .end local v11           #mSignIn:Landroid/widget/TextView;
    .end local v12           #mSignUpEmail:Landroid/widget/Button;
    .end local v13           #mSignUpTwitter:Landroid/widget/Button;
    .end local v14           #mStyleSpanBoldSingle:[Landroid/text/style/StyleSpan;
    .end local v16           #spannable:Landroid/text/Spannable;
    .end local v17           #spanned:Landroid/text/Spanned;
    .end local v18           #start:I
    :catch_0
    move-exception v8

    .line 139
    .local v8, e:Landroid/database/sqlite/SQLiteDatabaseLockedException;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 140
    .local v15, prefs:Landroid/content/SharedPreferences;
    const-string v19, "pref_log_startup_fail: {}."

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "pref_log_startup_fail"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v8, v0, v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const v19, 0x7f070028

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    .line 142
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "pref_log_startup_fail"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/StartActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onPause()V

    .line 151
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lco/vine/android/StartActivity;->mStopPosition:I

    .line 153
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/StartActivity;->dismissDialog()V

    .line 156
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lco/vine/android/BaseActivity;->onResume()V

    .line 161
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lco/vine/android/StartActivity;->mStopPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 163
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 164
    iget-object v0, p0, Lco/vine/android/StartActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 166
    :cond_0
    return-void
.end method
