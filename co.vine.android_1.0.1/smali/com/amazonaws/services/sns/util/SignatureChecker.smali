.class public Lcom/amazonaws/services/sns/util/SignatureChecker;
.super Ljava/lang/Object;


# instance fields
.field private final MESSAGE:Ljava/lang/String;

.field private final MESSAGE_ID:Ljava/lang/String;

.field private final NOTIFICATION_TYPE:Ljava/lang/String;

.field private final SIGNATURE:Ljava/lang/String;

.field private final SIGNATURE_VERSION:Ljava/lang/String;

.field private final SUBJECT:Ljava/lang/String;

.field private final SUBSCRIBE_TYPE:Ljava/lang/String;

.field private final SUBSCRIBE_URL:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final TOKEN:Ljava/lang/String;

.field private final TOPIC:Ljava/lang/String;

.field private final TYPE:Ljava/lang/String;

.field private final UNSUBSCRIBE_TYPE:Ljava/lang/String;

.field private sigChecker:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Notification"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->NOTIFICATION_TYPE:Ljava/lang/String;

    const-string v0, "SubscriptionConfirmation"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SUBSCRIBE_TYPE:Ljava/lang/String;

    const-string v0, "UnsubscriptionConfirmation"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->UNSUBSCRIBE_TYPE:Ljava/lang/String;

    const-string v0, "Type"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->TYPE:Ljava/lang/String;

    const-string v0, "SubscribeURL"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SUBSCRIBE_URL:Ljava/lang/String;

    const-string v0, "Message"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->MESSAGE:Ljava/lang/String;

    const-string v0, "Timestamp"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->TIMESTAMP:Ljava/lang/String;

    const-string v0, "SignatureVersion"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SIGNATURE_VERSION:Ljava/lang/String;

    const-string v0, "Signature"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SIGNATURE:Ljava/lang/String;

    const-string v0, "MessageId"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->MESSAGE_ID:Ljava/lang/String;

    const-string v0, "Subject"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SUBJECT:Ljava/lang/String;

    const-string v0, "TopicArn"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->TOPIC:Ljava/lang/String;

    const-string v0, "Token"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->TOKEN:Ljava/lang/String;

    return-void
.end method

.method private parseJSON(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    :goto_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private publishMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Message"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "MessageId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Subject"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "TopicArn"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SubscribeURL"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "Message"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "MessageId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Token"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "TopicArn"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyMessageSignature(Ljava/lang/String;Ljava/security/PublicKey;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/amazonaws/services/sns/util/SignatureChecker;->parseJSON(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v0, "SignatureVersion"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Signature"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    const-string v3, "Notification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/amazonaws/services/sns/util/SignatureChecker;->publishMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/amazonaws/services/sns/util/SignatureChecker;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    const-string v3, "SubscriptionConfirmation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/amazonaws/services/sns/util/SignatureChecker;->subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "UnsubscriptionConfirmation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/amazonaws/services/sns/util/SignatureChecker;->subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process message of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    iget-object v2, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    invoke-virtual {v2, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v2, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V

    iget-object v2, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    invoke-virtual {v2, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
