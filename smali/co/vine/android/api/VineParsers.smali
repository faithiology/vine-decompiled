.class public Lco/vine/android/api/VineParsers;
.super Ljava/lang/Object;
.source "VineParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/api/VineParsers$8;,
        Lco/vine/android/api/VineParsers$RecordParser;,
        Lco/vine/android/api/VineParsers$API_RESPONSE;
    }
.end annotation


# static fields
.field private static final ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory; = null

.field private static final LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineLike;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAM_DATA:Ljava/lang/String; = "data"

.field private static final PARAM_RECORDS:Ljava/lang/String; = "records"

.field private static final POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;"
        }
    .end annotation
.end field

.field private static final POST_RESPONSE_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VinePostResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMESTAMP_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

.field private static final USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 45
    new-instance v0, Lco/vine/android/api/VineParsers$1;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 53
    new-instance v0, Lco/vine/android/api/VineParsers$2;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$2;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 61
    new-instance v0, Lco/vine/android/api/VineParsers$3;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$3;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 69
    new-instance v0, Lco/vine/android/api/VineParsers$4;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$4;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 77
    new-instance v0, Lco/vine/android/api/VineParsers$5;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$5;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 85
    new-instance v0, Lco/vine/android/api/VineParsers$6;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$6;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->POST_RESPONSE_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 93
    new-instance v0, Lco/vine/android/api/VineParsers$7;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$7;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->TAG_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseLike(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotification;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseVinePostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineTag;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseTag(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineTag;

    move-result-object v0

    return-object v0
.end method

.method public static createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    sget-object v1, Lco/vine/android/api/VineParsers;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 1158
    .local v0, jp:Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1159
    return-object v0
.end method

.method public static parseClientProfile(Lcom/fasterxml/jackson/core/JsonParser;)Lorg/json/JSONObject;
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    const-string v3, "Parse client profile."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 820
    .local v2, t:Lcom/fasterxml/jackson/core/JsonToken;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 821
    .local v1, object:Lorg/json/JSONObject;
    :goto_0
    if-eqz v2, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 822
    sget-object v3, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 852
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 826
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "Failed to parse: {}."

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 834
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_2
    :try_start_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 835
    :catch_1
    move-exception v0

    .line 836
    .restart local v0       #e:Lorg/json/JSONException;
    const-string v3, "Failed to parse: {}."

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 841
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 845
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 854
    :cond_0
    const-string v3, "Parsed client profile: "

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    return-object v1

    .line 822
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;
    .locals 21
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    .line 473
    .local v20, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v6, 0x0

    .line 474
    .local v6, avatarUrl:Ljava/lang/String;
    const/4 v5, 0x0

    .line 475
    .local v5, comment:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 476
    .local v8, timestamp:J
    const-wide/16 v3, 0x0

    .line 477
    .local v3, commentId:J
    const/4 v10, 0x0

    .line 478
    .local v10, location:Ljava/lang/String;
    const/4 v7, 0x0

    .line 479
    .local v7, user:Lco/vine/android/api/VineUser;
    const-wide/16 v11, 0x0

    .line 480
    .local v11, userId:J
    const/4 v13, 0x0

    .line 481
    .local v13, username:Ljava/lang/String;
    const/4 v14, 0x0

    .line 482
    .local v14, verified:Z
    const/16 v17, 0x0

    .line 484
    .local v17, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :goto_0
    if-eqz v20, :cond_a

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_a

    .line 485
    sget-object v2, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v15

    aget v2, v2, v15

    packed-switch v2, :pswitch_data_0

    .line 545
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    goto :goto_0

    .line 487
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v18

    .line 488
    .local v18, cn:Ljava/lang/String;
    const-string v2, "user"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v7

    goto :goto_1

    .line 491
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 496
    .end local v18           #cn:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v18

    .line 497
    .restart local v18       #cn:Ljava/lang/String;
    const-string v2, "avatarUrl"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 499
    :cond_2
    const-string v2, "comment"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 501
    :cond_3
    const-string v2, "created"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v15, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    invoke-static {v2, v15}, Lco/vine/android/util/Util;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    .line 503
    :cond_4
    const-string v2, "location"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 505
    :cond_5
    const-string v2, "username"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 511
    .end local v18           #cn:Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v18

    .line 512
    .restart local v18       #cn:Ljava/lang/String;
    const-string v2, "commentId"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    goto/16 :goto_1

    .line 514
    :cond_6
    const-string v2, "userId"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v11

    goto/16 :goto_1

    .line 521
    .end local v18           #cn:Ljava/lang/String;
    :pswitch_3
    const-string v2, "verified"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v14

    goto/16 :goto_1

    .line 527
    :pswitch_4
    const-string v2, "entities"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    .line 529
    :goto_2
    if-eqz v20, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_0

    .line 530
    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;

    move-result-object v19

    .line 531
    .local v19, entity:Lco/vine/android/api/VineEntity;
    if-nez v17, :cond_7

    .line 532
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .restart local v17       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :cond_7
    if-eqz v19, :cond_8

    .line 535
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    .line 538
    goto :goto_2

    .line 540
    .end local v19           #entity:Lco/vine/android/api/VineEntity;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 547
    :cond_a
    if-eqz v17, :cond_b

    .line 548
    invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->validateAndFixEntities(Ljava/util/ArrayList;)V

    .line 550
    :cond_b
    new-instance v2, Lco/vine/android/api/VineComment;

    const-wide/16 v15, 0x0

    invoke-direct/range {v2 .. v17}, Lco/vine/android/api/VineComment;-><init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJLjava/util/ArrayList;)V

    return-object v2

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;
    .locals 11
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1042
    const/4 v1, 0x0

    .line 1043
    .local v1, type:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1044
    .local v3, link:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1045
    .local v2, title:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 1046
    .local v6, id:J
    const/4 v4, -0x1

    .line 1047
    .local v4, start:I
    const/4 v5, -0x1

    .line 1048
    .local v5, end:I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    .line 1049
    .local v9, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v9, :cond_6

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v9, v0, :cond_6

    .line 1050
    sget-object v0, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    .line 1092
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    goto :goto_0

    .line 1052
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    .line 1053
    .local v8, cn:Ljava/lang/String;
    const-string v0, "type"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1055
    :cond_1
    const-string v0, "link"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1056
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1057
    :cond_2
    const-string v0, "title"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1063
    .end local v8           #cn:Ljava/lang/String;
    :pswitch_1
    const-string v0, "range"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1064
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    .line 1065
    :goto_2
    if-eqz v9, :cond_5

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v9, v0, :cond_5

    .line 1066
    sget-object v0, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_1

    .line 1076
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    goto :goto_2

    .line 1068
    :pswitch_2
    const/4 v0, -0x1

    if-ne v4, v0, :cond_3

    .line 1069
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    goto :goto_3

    .line 1071
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v5

    goto :goto_3

    .line 1079
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 1083
    :cond_5
    :pswitch_3
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v6

    goto :goto_1

    .line 1094
    :cond_6
    new-instance v0, Lco/vine/android/api/VineEntity;

    invoke-direct/range {v0 .. v7}, Lco/vine/android/api/VineEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-object v0

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 1066
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method public static parseError(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineError;
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, error:I
    const/4 v1, 0x0

    .line 926
    .local v1, reason:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 928
    .local v2, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 929
    sget-object v3, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 950
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 931
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 935
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 939
    :pswitch_2
    const-string v3, "code"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    goto :goto_1

    .line 945
    :pswitch_3
    const-string v3, "error"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 952
    :cond_1
    new-instance v3, Lco/vine/android/api/VineError;

    invoke-direct {v3, v0, v1}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseGeneral(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 3
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 556
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_2

    .line 557
    sget-object v1, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 578
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 559
    :pswitch_1
    const-string v1, "success"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    sget-object v1, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;

    .line 580
    :goto_2
    return-object v1

    .line 565
    :pswitch_2
    const-string v1, "success"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    sget-object v1, Lco/vine/android/api/VineParsers$API_RESPONSE;->FAILURE:Lco/vine/android/api/VineParsers$API_RESPONSE;

    goto :goto_2

    .line 570
    :cond_1
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 574
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 580
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static declared-synchronized parseLike(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;
    .locals 9
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    const-class v6, Lco/vine/android/api/VineParsers;

    monitor-enter v6

    :try_start_0
    new-instance v4, Lco/vine/android/api/VineLike;

    invoke-direct {v4}, Lco/vine/android/api/VineLike;-><init>()V

    .line 230
    .local v4, vineLike:Lco/vine/android/api/VineLike;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 231
    .local v3, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v2, -0x1

    .line 232
    .local v2, following:I
    const/4 v0, 0x0

    .line 234
    .local v0, blocked:I
    :goto_0
    if-eqz v3, :cond_8

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v5, :cond_8

    .line 235
    sget-object v5, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 279
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 237
    :pswitch_0
    const-string v5, "user"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v5

    iput-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 229
    .end local v0           #blocked:I
    .end local v2           #following:I
    .end local v3           #t:Lcom/fasterxml/jackson/core/JsonToken;
    .end local v4           #vineLike:Lco/vine/android/api/VineLike;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 243
    .restart local v0       #blocked:I
    .restart local v2       #following:I
    .restart local v3       #t:Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4       #vineLike:Lco/vine/android/api/VineLike;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 247
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, cn:Ljava/lang/String;
    const-string v5, "created"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    invoke-static {v5, v7}, Lco/vine/android/util/Util;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lco/vine/android/api/VineLike;->created:J

    goto :goto_1

    .line 250
    :cond_1
    const-string v5, "location"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    goto :goto_1

    .line 252
    :cond_2
    const-string v5, "avatarUrl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    goto :goto_1

    .line 254
    :cond_3
    const-string v5, "username"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    goto :goto_1

    .line 260
    .end local v1           #cn:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 261
    .restart local v1       #cn:Ljava/lang/String;
    const-string v5, "likeId"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    iput-wide v7, v4, Lco/vine/android/api/VineLike;->likeId:J

    goto :goto_1

    .line 263
    :cond_4
    const-string v5, "userId"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 264
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    iput-wide v7, v4, Lco/vine/android/api/VineLike;->userId:J

    goto/16 :goto_1

    .line 265
    :cond_5
    const-string v5, "verified"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 266
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v5

    iput v5, v4, Lco/vine/android/api/VineLike;->verified:I

    goto/16 :goto_1

    .line 267
    :cond_6
    const-string v5, "following"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 268
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    goto/16 :goto_1

    .line 269
    :cond_7
    const-string v5, "blocked"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    goto/16 :goto_1

    .line 282
    .end local v1           #cn:Ljava/lang/String;
    :cond_8
    iget-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iput v2, v5, Lco/vine/android/api/VineUser;->following:I

    .line 283
    iget-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iput v0, v5, Lco/vine/android/api/VineUser;->blocked:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    monitor-exit v6

    return-object v4

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static parseLikeId(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    const-wide/16 v0, 0x0

    .line 585
    .local v0, id:J
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 586
    .local v2, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 587
    sget-object v3, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 600
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 589
    :pswitch_0
    const-string v3, "likeId"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    .line 591
    goto :goto_1

    .line 596
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 602
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLogin(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;
    .locals 9
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 863
    .local v6, username:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 865
    .local v4, userId:J
    const/4 v2, 0x0

    .line 867
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 868
    .local v3, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v3, :cond_4

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v7, :cond_4

    .line 869
    sget-object v7, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 912
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 871
    :pswitch_1
    const-string v7, "data"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 872
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 873
    :goto_2
    if-eqz v3, :cond_0

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v7, :cond_0

    .line 874
    sget-object v7, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 894
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_2

    .line 876
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, name:Ljava/lang/String;
    const-string v7, "key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 878
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 879
    :cond_2
    const-string v7, "username"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 880
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 885
    .end local v1           #name:Ljava/lang/String;
    :pswitch_3
    const-string v7, "userId"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v4

    goto :goto_3

    .line 897
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 903
    :pswitch_4
    const-string v7, "success"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v2

    goto :goto_1

    .line 915
    :cond_4
    if-eqz v2, :cond_5

    .line 916
    new-instance v7, Lco/vine/android/api/VineLogin;

    invoke-direct {v7, v0, v6, v4, v5}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 918
    :goto_4
    return-object v7

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 874
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static parseNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotification;
    .locals 23
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    .line 957
    .local v20, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v3, 0x0

    .line 958
    .local v3, avatarUrl:Ljava/lang/String;
    const/4 v4, 0x0

    .line 959
    .local v4, username:Ljava/lang/String;
    const/4 v5, 0x0

    .line 960
    .local v5, thumbnailUrl:Ljava/lang/String;
    const/4 v6, 0x0

    .line 961
    .local v6, comment:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 962
    .local v7, notificationId:J
    const-wide/16 v9, 0x0

    .line 963
    .local v9, userId:J
    const-wide/16 v11, 0x0

    .line 964
    .local v11, postId:J
    const-wide/16 v13, 0x0

    .line 965
    .local v13, createdAt:J
    const/4 v15, 0x0

    .line 966
    .local v15, verified:Z
    const/16 v16, 0x0

    .line 967
    .local v16, notificationType:I
    const/16 v17, 0x0

    .line 969
    .local v17, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :goto_0
    if-eqz v20, :cond_c

    sget-object v21, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 970
    sget-object v21, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 1023
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    goto :goto_0

    .line 972
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    .line 973
    .local v19, name:Ljava/lang/String;
    const-string v21, "avatarUrl"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 975
    :cond_1
    const-string v21, "body"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 978
    :cond_2
    const-string v21, "thumbnailUrl"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 979
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 980
    :cond_3
    const-string v21, "created"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v21

    const-string v22, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    invoke-static/range {v21 .. v22}, Lco/vine/android/util/Util;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_1

    .line 986
    .end local v19           #name:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    .line 987
    .restart local v19       #name:Ljava/lang/String;
    const-string v21, "notificationTypeId"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 988
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v16

    goto :goto_1

    .line 989
    :cond_4
    const-string v21, "notificationId"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    goto :goto_1

    .line 991
    :cond_5
    const-string v21, "userId"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v9

    goto/16 :goto_1

    .line 993
    :cond_6
    const-string v21, "postId"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v11

    goto/16 :goto_1

    .line 995
    :cond_7
    const-string v21, "verified"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const/4 v15, 0x1

    :goto_2
    goto/16 :goto_1

    :cond_8
    const/4 v15, 0x0

    goto :goto_2

    .line 1001
    .end local v19           #name:Ljava/lang/String;
    :pswitch_2
    const-string v21, "entities"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    .line 1003
    :goto_3
    if-eqz v20, :cond_0

    sget-object v21, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1004
    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;

    move-result-object v18

    .line 1005
    .local v18, entity:Lco/vine/android/api/VineEntity;
    if-nez v17, :cond_9

    .line 1006
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .restart local v17       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :cond_9
    if-eqz v18, :cond_a

    .line 1009
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    .line 1012
    goto :goto_3

    .line 1014
    .end local v18           #entity:Lco/vine/android/api/VineEntity;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1019
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1026
    :cond_c
    new-instance v2, Lco/vine/android/api/VineNotification;

    invoke-direct/range {v2 .. v17}, Lco/vine/android/api/VineNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZILjava/util/ArrayList;)V

    .line 1030
    .local v2, result:Lco/vine/android/api/VineNotification;
    if-eqz v17, :cond_d

    .line 1031
    invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->validateAndFixEntities(Ljava/util/ArrayList;)V

    .line 1034
    :cond_d
    if-lez v16, :cond_e

    .line 1037
    .end local v2           #result:Lco/vine/android/api/VineNotification;
    :goto_4
    return-object v2

    .restart local v2       #result:Lco/vine/android/api/VineNotification;
    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 970
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;
    .locals 6
    .parameter "p"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<TT;>;)",
            "Lco/vine/android/api/VinePagedData",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    .local p1, parser:Lco/vine/android/api/VineParsers$RecordParser;,"Lco/vine/android/api/VineParsers$RecordParser<TT;>;"
    new-instance v2, Lco/vine/android/api/VinePagedData;

    invoke-direct {v2}, Lco/vine/android/api/VinePagedData;-><init>()V

    .line 185
    .local v2, pagedData:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 188
    .local v3, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v3, :cond_6

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_6

    .line 189
    sget-object v4, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 223
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 195
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, cn:Ljava/lang/String;
    const-string v4, "count"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    iput v4, v2, Lco/vine/android/api/VinePagedData;->count:I

    goto :goto_1

    .line 198
    :cond_1
    const-string v4, "nextPage"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    iput v4, v2, Lco/vine/android/api/VinePagedData;->nextPage:I

    goto :goto_1

    .line 200
    :cond_2
    const-string v4, "previousPage"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    iput v4, v2, Lco/vine/android/api/VinePagedData;->previousPage:I

    goto :goto_1

    .line 202
    :cond_3
    const-string v4, "size"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    iput v4, v2, Lco/vine/android/api/VinePagedData;->size:I

    goto :goto_1

    .line 204
    :cond_4
    const-string v4, "anchor"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v4

    iput-wide v4, v2, Lco/vine/android/api/VinePagedData;->anchor:J

    goto :goto_1

    .line 210
    .end local v0           #cn:Ljava/lang/String;
    :pswitch_2
    const-string v4, "records"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 212
    :goto_2
    if-eqz v3, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_0

    .line 213
    invoke-interface {p1, p0}, Lco/vine/android/api/VineParsers$RecordParser;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 214
    .local v1, item:Landroid/os/Parcelable;,"TT;"
    if-eqz v1, :cond_5

    .line 215
    iget-object v4, v2, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 218
    goto :goto_2

    .line 225
    .end local v1           #item:Landroid/os/Parcelable;,"TT;"
    :cond_6
    return-object v2

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static declared-synchronized parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
    .locals 19
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const-class v16, Lco/vine/android/api/VineParsers;

    monitor-enter v16

    :try_start_0
    new-instance v15, Lco/vine/android/api/VinePost;

    invoke-direct {v15}, Lco/vine/android/api/VinePost;-><init>()V

    .line 290
    .local v15, vinePost:Lco/vine/android/api/VinePost;
    const/4 v10, 0x0

    .line 291
    .local v10, address:Ljava/lang/String;
    const/4 v3, 0x0

    .line 292
    .local v3, categoryIconUrl:Ljava/lang/String;
    const/4 v5, 0x0

    .line 293
    .local v5, categoryId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 294
    .local v4, categoryShortName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 295
    .local v6, city:Ljava/lang/String;
    const/4 v7, 0x0

    .line 296
    .local v7, countryCode:Ljava/lang/String;
    const/4 v8, 0x0

    .line 297
    .local v8, venueName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 298
    .local v9, state:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    .line 299
    .local v14, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v14, :cond_22

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v14, v2, :cond_22

    .line 300
    sget-object v2, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v14}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v17

    aget v2, v2, v17

    packed-switch v2, :pswitch_data_0

    .line 412
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    goto :goto_0

    .line 302
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, cn:Ljava/lang/String;
    const-string v2, "comments"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    sget-object v2, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 289
    .end local v3           #categoryIconUrl:Ljava/lang/String;
    .end local v4           #categoryShortName:Ljava/lang/String;
    .end local v5           #categoryId:Ljava/lang/String;
    .end local v6           #city:Ljava/lang/String;
    .end local v7           #countryCode:Ljava/lang/String;
    .end local v8           #venueName:Ljava/lang/String;
    .end local v9           #state:Ljava/lang/String;
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #cn:Ljava/lang/String;
    .end local v14           #t:Lcom/fasterxml/jackson/core/JsonToken;
    .end local v15           #vinePost:Lco/vine/android/api/VinePost;
    :catchall_0
    move-exception v2

    monitor-exit v16

    throw v2

    .line 305
    .restart local v3       #categoryIconUrl:Ljava/lang/String;
    .restart local v4       #categoryShortName:Ljava/lang/String;
    .restart local v5       #categoryId:Ljava/lang/String;
    .restart local v6       #city:Ljava/lang/String;
    .restart local v7       #countryCode:Ljava/lang/String;
    .restart local v8       #venueName:Ljava/lang/String;
    .restart local v9       #state:Ljava/lang/String;
    .restart local v10       #address:Ljava/lang/String;
    .restart local v11       #cn:Ljava/lang/String;
    .restart local v14       #t:Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v15       #vinePost:Lco/vine/android/api/VinePost;
    :cond_1
    :try_start_1
    const-string v2, "likes"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    sget-object v2, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    goto :goto_1

    .line 307
    :cond_2
    const-string v2, "user"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    goto :goto_1

    .line 310
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 315
    .end local v11           #cn:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    .line 316
    .restart local v11       #cn:Ljava/lang/String;
    const-string v2, "tags"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 317
    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseTags(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    goto :goto_1

    .line 318
    :cond_4
    const-string v2, "entities"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    .line 320
    const/4 v12, 0x0

    .line 321
    .local v12, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :goto_2
    if-eqz v14, :cond_7

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v14, v2, :cond_7

    .line 322
    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;

    move-result-object v13

    .line 323
    .local v13, entity:Lco/vine/android/api/VineEntity;
    if-nez v12, :cond_5

    .line 324
    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .restart local v12       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :cond_5
    if-eqz v13, :cond_6

    .line 327
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    .line 330
    goto :goto_2

    .line 331
    .end local v13           #entity:Lco/vine/android/api/VineEntity;
    :cond_7
    if-eqz v12, :cond_0

    .line 332
    invoke-static {v12}, Lco/vine/android/util/Util;->validateAndFixEntities(Ljava/util/ArrayList;)V

    .line 333
    iput-object v12, v15, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 336
    .end local v12           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineEntity;>;"
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 341
    .end local v11           #cn:Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    .line 342
    .restart local v11       #cn:Ljava/lang/String;
    const-string v2, "foursquareVenueId"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    goto/16 :goto_1

    .line 344
    :cond_9
    const-string v2, "description"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    goto/16 :goto_1

    .line 346
    :cond_a
    const-string v2, "created"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v17, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lco/vine/android/util/Util;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v15, Lco/vine/android/api/VinePost;->created:J

    goto/16 :goto_1

    .line 348
    :cond_b
    const-string v2, "location"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    goto/16 :goto_1

    .line 350
    :cond_c
    const-string v2, "avatarUrl"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 352
    :cond_d
    const-string v2, "videoLowURL"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    goto/16 :goto_1

    .line 354
    :cond_e
    const-string v2, "videoUrl"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 356
    :cond_f
    const-string v2, "username"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    goto/16 :goto_1

    .line 358
    :cond_10
    const-string v2, "shareUrl"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 360
    :cond_11
    const-string v2, "thumbnailUrl"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 362
    :cond_12
    const-string v2, "venueAddress"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 364
    :cond_13
    const-string v2, "venueCategoryIconUrl"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 366
    :cond_14
    const-string v2, "venueCategoryId"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 368
    :cond_15
    const-string v2, "venueCategoryShortName"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 370
    :cond_16
    const-string v2, "venueCity"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 372
    :cond_17
    const-string v2, "venueCountryCode"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 374
    :cond_18
    const-string v2, "venueName"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 376
    :cond_19
    const-string v2, "state"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 382
    .end local v11           #cn:Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    .line 383
    .restart local v11       #cn:Ljava/lang/String;
    const-string v2, "explicitContent"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    iput v2, v15, Lco/vine/android/api/VinePost;->explicitContent:I

    goto/16 :goto_1

    .line 385
    :cond_1a
    const-string v2, "postFlags"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    iput v2, v15, Lco/vine/android/api/VinePost;->postFlags:I

    goto/16 :goto_1

    .line 387
    :cond_1b
    const-string v2, "postToFacebook"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    iput v2, v15, Lco/vine/android/api/VinePost;->postToFacebook:I

    goto/16 :goto_1

    .line 389
    :cond_1c
    const-string v2, "postToTwitter"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    iput v2, v15, Lco/vine/android/api/VinePost;->postToTwitter:I

    goto/16 :goto_1

    .line 391
    :cond_1d
    const-string v2, "postVerified"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    iput v2, v15, Lco/vine/android/api/VinePost;->postVerified:I

    goto/16 :goto_1

    .line 393
    :cond_1e
    const-string v2, "promoted"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    iput v2, v15, Lco/vine/android/api/VinePost;->promoted:I

    goto/16 :goto_1

    .line 395
    :cond_1f
    const-string v2, "verified"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    iput v2, v15, Lco/vine/android/api/VinePost;->verified:I

    goto/16 :goto_1

    .line 397
    :cond_20
    const-string v2, "postId"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v15, Lco/vine/android/api/VinePost;->postId:J

    goto/16 :goto_1

    .line 399
    :cond_21
    const-string v2, "userId"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v15, Lco/vine/android/api/VinePost;->userId:J

    goto/16 :goto_1

    .line 406
    .end local v11           #cn:Ljava/lang/String;
    :pswitch_4
    const-string v2, "liked"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v2

    iput-boolean v2, v15, Lco/vine/android/api/VinePost;->liked:Z

    goto/16 :goto_1

    .line 415
    :cond_22
    iget-object v2, v15, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 416
    new-instance v2, Lco/vine/android/api/VineVenue;

    invoke-direct/range {v2 .. v10}, Lco/vine/android/api/VineVenue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v15, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :cond_23
    monitor-exit v16

    return-object v15

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static parseServerStatus(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/ServerStatus;
    .locals 9
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1098
    const/4 v1, 0x0

    .line 1099
    .local v1, uploadType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1100
    .local v2, status:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1101
    .local v3, message:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1102
    .local v4, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1103
    .local v5, staticTimelineUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 1104
    .local v7, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v7, :cond_4

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v0, :cond_4

    .line 1105
    sget-object v0, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 1125
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    goto :goto_0

    .line 1108
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 1112
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 1113
    .local v6, cn:Ljava/lang/String;
    const-string v0, "uploadType"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1115
    :cond_1
    const-string v0, "status"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1116
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1117
    :cond_2
    const-string v0, "message"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1118
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1119
    :cond_3
    const-string v0, "staticTimelineUrl"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1127
    .end local v6           #cn:Ljava/lang/String;
    :cond_4
    new-instance v0, Lco/vine/android/api/ServerStatus;

    invoke-direct/range {v0 .. v5}, Lco/vine/android/api/ServerStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static parseSignUp(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;
    .locals 7
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v2, 0x0

    .line 715
    .local v2, userId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 716
    .local v1, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v3, 0x0

    .line 717
    .local v3, vl:Lco/vine/android/api/VineLogin;
    const/4 v0, 0x0

    .line 718
    .local v0, sessionKey:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v4, :cond_1

    .line 719
    sget-object v4, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 739
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 721
    :pswitch_0
    const-string v4, "userId"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 727
    :pswitch_1
    const-string v4, "key"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 733
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 736
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 742
    :cond_1
    new-instance v3, Lco/vine/android/api/VineLogin;

    .end local v3           #vl:Lco/vine/android/api/VineLogin;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v0, v4, v5, v6}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 743
    .restart local v3       #vl:Lco/vine/android/api/VineLogin;
    return-object v3

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseTag(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineTag;
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v1, Lco/vine/android/api/VineTag;

    invoke-direct {v1}, Lco/vine/android/api/VineTag;-><init>()V

    .line 451
    .local v1, tag:Lco/vine/android/api/VineTag;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 452
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v0, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_0

    .line 453
    sget-object v2, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 466
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 455
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;

    goto :goto_1

    .line 458
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v2

    iput-wide v2, v1, Lco/vine/android/api/VineTag;->tagId:J

    goto :goto_1

    .line 462
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 468
    :cond_0
    return-object v1

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTags(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 7
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v4, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineTag;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 426
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v3, 0x0

    .line 427
    .local v3, tagName:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 428
    .local v1, tagId:J
    :goto_0
    if-eqz v0, :cond_1

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_1

    .line 429
    sget-object v5, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 444
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 431
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_0

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_0

    .line 432
    sget-object v5, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 439
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 434
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 435
    goto :goto_3

    .line 437
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    goto :goto_3

    .line 441
    :cond_0
    new-instance v5, Lco/vine/android/api/VineTag;

    invoke-direct {v5, v3, v1, v2}, Lco/vine/android/api/VineTag;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 446
    :cond_1
    return-object v4

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 432
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseTwitterUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/TwitterUser;
    .locals 13
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 757
    .local v2, screenName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 758
    .local v3, location:Ljava/lang/String;
    const/4 v4, 0x0

    .line 759
    .local v4, description:Ljava/lang/String;
    const/4 v5, 0x0

    .line 760
    .local v5, url:Ljava/lang/String;
    const/4 v6, 0x0

    .line 761
    .local v6, profileUrl:Ljava/lang/String;
    const/4 v7, 0x0

    .line 762
    .local v7, defaultProfileImage:Z
    const-wide/16 v8, 0x0

    .line 764
    .local v8, userId:J
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    .line 765
    .local v11, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v11, :cond_6

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v11, v0, :cond_6

    .line 766
    sget-object v0, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v11}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v12

    aget v0, v0, v12

    packed-switch v0, :pswitch_data_0

    .line 810
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    goto :goto_0

    .line 768
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    .line 769
    .local v10, cn:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 771
    :cond_1
    const-string v0, "screen_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 773
    :cond_2
    const-string v0, "profile_image_url"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 775
    const-string v0, "_normal"

    const-string v12, "_bigger"

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 776
    :cond_3
    const-string v0, "url"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 777
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 778
    :cond_4
    const-string v0, "description"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 779
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 780
    :cond_5
    const-string v0, "location"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 786
    .end local v10           #cn:Ljava/lang/String;
    :pswitch_1
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v8

    goto :goto_1

    .line 793
    :pswitch_2
    const-string v0, "default_profile_image"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v7

    goto :goto_1

    .line 799
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 803
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 812
    :cond_6
    new-instance v0, Lco/vine/android/api/TwitterUser;

    invoke-direct/range {v0 .. v9}, Lco/vine/android/api/TwitterUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
    .locals 26
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v2, 0x0

    .line 625
    .local v2, username:Ljava/lang/String;
    const/4 v3, 0x0

    .line 626
    .local v3, avatarUrl:Ljava/lang/String;
    const/4 v4, 0x0

    .line 627
    .local v4, description:Ljava/lang/String;
    const/4 v5, 0x0

    .line 628
    .local v5, location:Ljava/lang/String;
    const/16 v20, 0x0

    .line 629
    .local v20, phoneNumber:Ljava/lang/String;
    const/16 v19, 0x0

    .line 630
    .local v19, email:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 631
    .local v6, userId:J
    const-wide/16 v8, 0x0

    .line 632
    .local v8, orderId:J
    const/4 v10, 0x0

    .line 633
    .local v10, blocked:I
    const/4 v11, 0x0

    .line 634
    .local v11, blocking:I
    const/4 v12, 0x0

    .line 635
    .local v12, explicit:I
    const/4 v13, 0x0

    .line 636
    .local v13, followerCount:I
    const/4 v14, 0x0

    .line 637
    .local v14, followingCount:I
    const/4 v15, -0x1

    .line 638
    .local v15, following:I
    const/16 v16, 0x0

    .line 639
    .local v16, likeCount:I
    const/16 v17, 0x0

    .line 640
    .local v17, postCount:I
    const/16 v18, 0x0

    .line 641
    .local v18, verified:I
    const/16 v21, 0x0

    .line 643
    .local v21, twitterConnected:I
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v23

    .line 645
    .local v23, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v23, :cond_11

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v23

    if-eq v0, v1, :cond_11

    .line 646
    sget-object v1, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual/range {v23 .. v23}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v24

    aget v1, v1, v24

    packed-switch v1, :pswitch_data_0

    .line 701
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v23

    goto :goto_0

    .line 648
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v22

    .line 649
    .local v22, name:Ljava/lang/String;
    const-string v1, "avatarUrl"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 651
    :cond_1
    const-string v1, "username"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 653
    :cond_2
    const-string v1, "description"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 655
    :cond_3
    const-string v1, "location"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 657
    :cond_4
    const-string v1, "phoneNumber"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 659
    :cond_5
    const-string v1, "email"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 665
    .end local v22           #name:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v22

    .line 666
    .restart local v22       #name:Ljava/lang/String;
    const-string v1, "userId"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v6

    goto :goto_1

    .line 668
    :cond_6
    const-string v1, "blocked"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v10

    goto/16 :goto_1

    .line 670
    :cond_7
    const-string v1, "blocking"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v11

    goto/16 :goto_1

    .line 672
    :cond_8
    const-string v1, "explicit"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v12

    goto/16 :goto_1

    .line 674
    :cond_9
    const-string v1, "followerCount"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v13

    goto/16 :goto_1

    .line 676
    :cond_a
    const-string v1, "followingCount"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v14

    goto/16 :goto_1

    .line 678
    :cond_b
    const-string v1, "following"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v15

    goto/16 :goto_1

    .line 680
    :cond_c
    const-string v1, "likeCount"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v16

    goto/16 :goto_1

    .line 682
    :cond_d
    const-string v1, "postCount"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v17

    goto/16 :goto_1

    .line 684
    :cond_e
    const-string v1, "verified"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v18

    goto/16 :goto_1

    .line 686
    :cond_f
    const-string v1, "followId"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v8

    goto/16 :goto_1

    .line 688
    :cond_10
    const-string v1, "twitterConnected"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v21

    goto/16 :goto_1

    .line 695
    .end local v22           #name:Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 704
    :cond_11
    const-wide/16 v24, 0x0

    cmp-long v1, v6, v24

    if-gtz v1, :cond_12

    .line 705
    const/4 v1, 0x0

    .line 708
    :goto_2
    return-object v1

    :cond_12
    new-instance v1, Lco/vine/android/api/VineUser;

    invoke-direct/range {v1 .. v21}, Lco/vine/android/api/VineUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIIIIIIIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 607
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v2, 0x0

    .line 608
    .local v2, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    :goto_0
    if-eqz v0, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v3, :cond_2

    .line 609
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_1

    .line 610
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v1

    .line 611
    .local v1, user:Lco/vine/android/api/VineUser;
    if-eqz v1, :cond_1

    .line 612
    if-nez v2, :cond_0

    .line 613
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .restart local v2       #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v1           #user:Lco/vine/android/api/VineUser;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 620
    :cond_2
    return-object v2
.end method

.method private static parseVinePostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;
    .locals 8
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    const-wide/16 v3, 0x0

    .line 1132
    .local v3, postId:J
    const-wide/16 v1, 0x0

    .line 1133
    .local v1, createdAt:J
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 1134
    .local v5, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v5, :cond_2

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v6, :cond_2

    .line 1135
    sget-object v6, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1151
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto :goto_0

    .line 1137
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, cn:Ljava/lang/String;
    const-string v6, "postId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1139
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    goto :goto_1

    .line 1140
    :cond_1
    const-string v6, "createdAt"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    goto :goto_1

    .line 1147
    .end local v0           #cn:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 1153
    :cond_2
    new-instance v6, Lco/vine/android/api/VinePostResponse;

    invoke-direct {v6, v3, v4, v1, v2}, Lco/vine/android/api/VinePostResponse;-><init>(JJ)V

    return-object v6

    .line 1135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseVineResponse(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Object;
    .locals 4
    .parameter "p"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 167
    :goto_0
    return-object v1

    .line 107
    :cond_0
    const/16 v1, 0xf

    if-ne p1, v1, :cond_1

    .line 108
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseServerStatus(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/ServerStatus;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 112
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_3

    .line 113
    sget-object v1, Lco/vine/android/api/VineParsers$8;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 176
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 115
    :pswitch_0
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    packed-switch p1, :pswitch_data_1

    .line 157
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 118
    :pswitch_2
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v1

    goto :goto_0

    .line 121
    :pswitch_3
    sget-object v1, Lco/vine/android/api/VineParsers;->USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_0

    .line 124
    :pswitch_4
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseClientProfile(Lcom/fasterxml/jackson/core/JsonParser;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    .line 127
    :pswitch_5
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseSignUp(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;

    move-result-object v1

    goto :goto_0

    .line 130
    :pswitch_6
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseGeneral(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 133
    :pswitch_7
    sget-object v1, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_0

    .line 136
    :pswitch_8
    sget-object v1, Lco/vine/android/api/VineParsers;->POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_0

    .line 139
    :pswitch_9
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;

    move-result-object v1

    goto :goto_0

    .line 142
    :pswitch_a
    sget-object v1, Lco/vine/android/api/VineParsers;->ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_0

    .line 145
    :pswitch_b
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseLikeId(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 148
    :pswitch_c
    sget-object v1, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_0

    .line 151
    :pswitch_d
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseVinePostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;

    move-result-object v1

    goto :goto_0

    .line 154
    :pswitch_e
    sget-object v1, Lco/vine/android/api/VineParsers;->TAG_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto/16 :goto_0

    .line 164
    :pswitch_f
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    packed-switch p1, :pswitch_data_2

    .line 170
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 167
    :pswitch_10
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_0

    .line 178
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled parse type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_e
    .end packed-switch

    .line 165
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_10
    .end packed-switch
.end method
