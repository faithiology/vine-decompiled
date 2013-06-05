.class public Lorg/scribe/extractors/TokenExtractorImpl;
.super Ljava/lang/Object;
.source "TokenExtractorImpl.java"

# interfaces
.implements Lorg/scribe/extractors/RequestTokenExtractor;
.implements Lorg/scribe/extractors/AccessTokenExtractor;


# static fields
.field private static final SECRET_REGEX:Ljava/util/regex/Pattern;

.field private static final TOKEN_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "oauth_token=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/scribe/extractors/TokenExtractorImpl;->TOKEN_REGEX:Ljava/util/regex/Pattern;

    .line 19
    const-string v0, "oauth_token_secret=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/scribe/extractors/TokenExtractorImpl;->SECRET_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extract(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 4
    .parameter "response"
    .parameter "p"

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 35
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 37
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/scribe/utils/OAuthEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 41
    :cond_0
    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response body is incorrect. Can\'t extract token and secret from this: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public extract(Ljava/lang/String;)Lorg/scribe/model/Token;
    .locals 3
    .parameter "response"

    .prologue
    .line 26
    const-string v2, "Response body is incorrect. Can\'t extract a token from an empty string"

    invoke-static {p1, v2}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v2, Lorg/scribe/extractors/TokenExtractorImpl;->TOKEN_REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v2}, Lorg/scribe/extractors/TokenExtractorImpl;->extract(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, token:Ljava/lang/String;
    sget-object v2, Lorg/scribe/extractors/TokenExtractorImpl;->SECRET_REGEX:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v2}, Lorg/scribe/extractors/TokenExtractorImpl;->extract(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, secret:Ljava/lang/String;
    new-instance v2, Lorg/scribe/model/Token;

    invoke-direct {v2, v1, v0, p1}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
