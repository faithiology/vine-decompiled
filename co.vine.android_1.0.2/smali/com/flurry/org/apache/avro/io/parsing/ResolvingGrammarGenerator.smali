.class public Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;
.super Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;
.source "ResolvingGrammarGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$apache$avro$Schema$Type:[I

.field private static factory:Lcom/flurry/org/apache/avro/io/EncoderFactory;


# direct methods
.method static synthetic $SWITCH_TABLE$org$apache$avro$Schema$Type()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/org/apache/avro/Schema$Type;->values()[Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->ARRAY:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_1
    :try_start_1
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->BOOLEAN:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_2
    :try_start_2
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->BYTES:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_3
    :try_start_3
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->DOUBLE:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_4
    :try_start_4
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->ENUM:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_5
    :try_start_5
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->FIXED:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_6
    :try_start_6
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->FLOAT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->INT:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    :try_start_8
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->LONG:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    :try_start_9
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->MAP:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->NULL:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_b
    :try_start_b
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_c
    :try_start_c
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->STRING:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    :try_start_d
    sget-object v1, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_e
    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/flurry/org/apache/avro/io/EncoderFactory;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/EncoderFactory;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->configureBufferSize(I)Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v0

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->factory:Lcom/flurry/org/apache/avro/io/EncoderFactory;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;-><init>()V

    return-void
.end method

.method private static bestBranch(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)I
    .locals 8
    .parameter "r"
    .parameter "w"

    .prologue
    .line 419
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v4

    .line 421
    .local v4, vt:Lcom/flurry/org/apache/avro/Schema$Type;
    const/4 v2, 0x0

    .line 422
    .local v2, j:I
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 437
    const/4 v2, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 456
    const/4 v5, -0x1

    :goto_2
    return v5

    .line 422
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    .line 423
    .local v0, b:Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v6

    if-ne v4, v6, :cond_5

    .line 424
    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v4, v6, :cond_1

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->ENUM:Lcom/flurry/org/apache/avro/Schema$Type;

    if-eq v4, v6, :cond_1

    .line 425
    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->FIXED:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v4, v6, :cond_4

    .line 426
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, vname:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, bname:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 429
    :cond_2
    if-ne v3, v1, :cond_5

    sget-object v6, Lcom/flurry/org/apache/avro/Schema$Type;->RECORD:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v4, v6, :cond_5

    :cond_3
    move v5, v2

    .line 430
    goto :goto_2

    .end local v1           #bname:Ljava/lang/String;
    .end local v3           #vname:Ljava/lang/String;
    :cond_4
    move v5, v2

    .line 432
    goto :goto_2

    .line 433
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v0           #b:Lcom/flurry/org/apache/avro/Schema;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/Schema;

    .line 439
    .restart local v0       #b:Lcom/flurry/org/apache/avro/Schema;
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v6

    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 454
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    :pswitch_0
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v6

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :pswitch_2
    move v5, v2

    .line 443
    goto :goto_2

    .line 448
    :pswitch_3
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v6

    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    goto :goto_3

    :pswitch_4
    move v5, v2

    .line 450
    goto :goto_2

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 441
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 448
    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_4
    .end packed-switch
.end method

.method public static encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V
    .locals 12
    .parameter "e"
    .parameter "s"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 309
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v9

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 311
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 312
    .local v1, f:Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p2, v5}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v8

    .line 314
    .local v8, v:Lcom/flurry/org/codehaus/jackson/JsonNode;
    if-nez v8, :cond_1

    .line 315
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v8

    .line 317
    :cond_1
    if-nez v8, :cond_2

    .line 318
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No default value for: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 320
    :cond_2
    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v10

    invoke-static {p0, v10, v8}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_1

    .line 324
    .end local v1           #f:Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #v:Lcom/flurry/org/codehaus/jackson/JsonNode;
    :pswitch_1
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/flurry/org/apache/avro/Schema;->getEnumOrdinal(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/flurry/org/apache/avro/io/Encoder;->writeEnum(I)V

    goto :goto_0

    .line 327
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayStart()V

    .line 328
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {p0, v9, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 329
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    .line 330
    .local v2, i:Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeArrayEnd()V

    goto :goto_0

    .line 330
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/org/codehaus/jackson/JsonNode;

    .line 331
    .local v7, node:Lcom/flurry/org/codehaus/jackson/JsonNode;
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 332
    invoke-static {p0, v2, v7}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_2

    .line 337
    .end local v2           #i:Lcom/flurry/org/apache/avro/Schema;
    .end local v7           #node:Lcom/flurry/org/codehaus/jackson/JsonNode;
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapStart()V

    .line 338
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {p0, v9, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->setItemCount(J)V

    .line 339
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    .line 340
    .local v8, v:Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getFieldNames()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 346
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeMapEnd()V

    goto/16 :goto_0

    .line 341
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->startItem()V

    .line 342
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 343
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2, v4}, Lcom/flurry/org/codehaus/jackson/JsonNode;->get(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto :goto_3

    .line 349
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #v:Lcom/flurry/org/apache/avro/Schema;
    :pswitch_4
    invoke-virtual {p0, v11}, Lcom/flurry/org/apache/avro/io/Encoder;->writeIndex(I)V

    .line 350
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/flurry/org/apache/avro/Schema;

    invoke-static {p0, v9, p2}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    goto/16 :goto_0

    .line 353
    :pswitch_5
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v9

    if-nez v9, :cond_5

    .line 354
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-string default value for fixed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 355
    :cond_5
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ISO-8859-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 356
    .local v0, bb:[B
    array-length v9, v0

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 358
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v9

    new-array v6, v9, [B

    .line 359
    .local v6, newBb:[B
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v9

    array-length v10, v0

    if-le v9, v10, :cond_7

    array-length v9, v0

    :goto_4
    invoke-static {v0, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    move-object v0, v6

    .line 362
    .end local v6           #newBb:[B
    :cond_6
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeFixed([B)V

    goto/16 :goto_0

    .line 359
    .restart local v6       #newBb:[B
    :cond_7
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v9

    goto :goto_4

    .line 365
    .end local v0           #bb:[B
    .end local v6           #newBb:[B
    :pswitch_6
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v9

    if-nez v9, :cond_8

    .line 366
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-string default value for string: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 367
    :cond_8
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/flurry/org/apache/avro/io/Encoder;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :pswitch_7
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isTextual()Z

    move-result v9

    if-nez v9, :cond_9

    .line 371
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-string default value for bytes: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 372
    :cond_9
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getTextValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ISO-8859-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBytes([B)V

    goto/16 :goto_0

    .line 375
    :pswitch_8
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v9

    if-nez v9, :cond_a

    .line 376
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-numeric default value for int: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 377
    :cond_a
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getIntValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/flurry/org/apache/avro/io/Encoder;->writeInt(I)V

    goto/16 :goto_0

    .line 380
    :pswitch_9
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v9

    if-nez v9, :cond_b

    .line 381
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-numeric default value for long: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 382
    :cond_b
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getLongValue()J

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->writeLong(J)V

    goto/16 :goto_0

    .line 385
    :pswitch_a
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v9

    if-nez v9, :cond_c

    .line 386
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-numeric default value for float: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 387
    :cond_c
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {p0, v9}, Lcom/flurry/org/apache/avro/io/Encoder;->writeFloat(F)V

    goto/16 :goto_0

    .line 390
    :pswitch_b
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNumber()Z

    move-result v9

    if-nez v9, :cond_d

    .line 391
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-numeric default value for double: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 392
    :cond_d
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getDoubleValue()D

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lcom/flurry/org/apache/avro/io/Encoder;->writeDouble(D)V

    goto/16 :goto_0

    .line 395
    :pswitch_c
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isBoolean()Z

    move-result v9

    if-nez v9, :cond_e

    .line 396
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-boolean default for boolean: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 397
    :cond_e
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->getBooleanValue()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/flurry/org/apache/avro/io/Encoder;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 400
    :pswitch_d
    invoke-virtual {p2}, Lcom/flurry/org/codehaus/jackson/JsonNode;->isNull()Z

    move-result v9

    if-nez v9, :cond_f

    .line 401
    new-instance v9, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Non-null default value for null type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 402
    :cond_f
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/io/Encoder;->writeNull()V

    goto/16 :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static getBinary(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)[B
    .locals 4
    .parameter "s"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->factory:Lcom/flurry/org/apache/avro/io/EncoderFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->binaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v0

    .line 293
    .local v0, e:Lcom/flurry/org/apache/avro/io/Encoder;
    invoke-static {v0, p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->encode(Lcom/flurry/org/apache/avro/io/Encoder;Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)V

    .line 294
    invoke-virtual {v0}, Lcom/flurry/org/apache/avro/io/Encoder;->flush()V

    .line 295
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static mkEnumAdjust(Ljava/util/List;Ljava/util/List;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, wsymbols:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, rsymbols:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Object;

    .line 410
    .local v0, adjustments:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 415
    new-instance v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;-><init>(I[Ljava/lang/Object;)V

    return-object v3

    .line 411
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 412
    .local v2, j:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "No match for "

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v1

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_1
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1
.end method

.method private resolveRecords(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 24
    .parameter "writer"
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    .local p3, seen:Ljava/util/Map;,"Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;Lcom/flurry/org/apache/avro/io/parsing/Symbol;>;"
    new-instance v19, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator$LitS2;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)V

    .line 203
    .local v19, wsc:Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 204
    .local v11, result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    if-nez v11, :cond_3

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v18

    .line 206
    .local v18, wfields:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/org/apache/avro/Schema;->getFields()Ljava/util/List;

    move-result-object v14

    .line 210
    .local v14, rfields:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v10, v0, [Lcom/flurry/org/apache/avro/Schema$Field;

    .line 211
    .local v10, reordered:[Lcom/flurry/org/apache/avro/Schema$Field;
    const/4 v15, 0x0

    .line 212
    .local v15, ridx:I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v5, v20, 0x1

    .line 214
    .local v5, count:I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 221
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_5

    .line 236
    new-array v8, v5, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 237
    .local v8, production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    add-int/lit8 v5, v5, -0x1

    new-instance v20, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;-><init>([Lcom/flurry/org/apache/avro/Schema$Field;)V

    aput-object v20, v8, v5

    .line 243
    invoke-static {v8}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v11

    .line 244
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_7

    .line 267
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_9

    .end local v5           #count:I
    .end local v8           #production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .end local v10           #reordered:[Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v14           #rfields:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    .end local v15           #ridx:I
    .end local v18           #wfields:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    :cond_3
    move-object v12, v11

    .line 278
    .end local v11           #result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .local v12, result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :goto_4
    return-object v12

    .line 214
    .end local v12           #result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .restart local v5       #count:I
    .restart local v10       #reordered:[Lcom/flurry/org/apache/avro/Schema$Field;
    .restart local v11       #result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .restart local v14       #rfields:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    .restart local v15       #ridx:I
    .restart local v18       #wfields:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema$Field;>;"
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 215
    .local v6, f:Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v6}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v9

    .line 216
    .local v9, rdrField:Lcom/flurry/org/apache/avro/Schema$Field;
    if-eqz v9, :cond_0

    .line 217
    add-int/lit8 v16, v15, 0x1

    .end local v15           #ridx:I
    .local v16, ridx:I
    aput-object v9, v10, v15

    move/from16 v15, v16

    .end local v16           #ridx:I
    .restart local v15       #ridx:I
    goto :goto_0

    .line 221
    .end local v6           #f:Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v9           #rdrField:Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 222
    .local v13, rf:Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v13}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, fname:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v21

    if-nez v21, :cond_1

    .line 224
    invoke-virtual {v13}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v21

    if-nez v21, :cond_6

    .line 225
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Found "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 226
    const-string v21, ", expecting "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 225
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v11

    .line 227
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v11

    .line 228
    .end local v11           #result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .restart local v12       #result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    goto :goto_4

    .line 230
    .end local v12           #result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .restart local v11       #result:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_6
    add-int/lit8 v16, v15, 0x1

    .end local v15           #ridx:I
    .restart local v16       #ridx:I
    aput-object v13, v10, v15

    .line 231
    add-int/lit8 v5, v5, 0x3

    move/from16 v15, v16

    .end local v16           #ridx:I
    .restart local v15       #ridx:I
    goto/16 :goto_1

    .line 254
    .end local v7           #fname:Ljava/lang/String;
    .end local v13           #rf:Lcom/flurry/org/apache/avro/Schema$Field;
    .restart local v8       #production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 255
    .local v17, wf:Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v7

    .line 256
    .restart local v7       #fname:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v13

    .line 257
    .restart local v13       #rf:Lcom/flurry/org/apache/avro/Schema$Field;
    if-nez v13, :cond_8

    .line 258
    add-int/lit8 v5, v5, -0x1

    .line 259
    new-instance v21, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;

    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 258
    aput-object v21, v8, v5

    goto/16 :goto_2

    .line 261
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 262
    invoke-virtual/range {v17 .. v17}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    invoke-virtual {v13}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v21

    .line 261
    aput-object v21, v8, v5

    goto/16 :goto_2

    .line 267
    .end local v7           #fname:Ljava/lang/String;
    .end local v13           #rf:Lcom/flurry/org/apache/avro/Schema$Field;
    .end local v17           #wf:Lcom/flurry/org/apache/avro/Schema$Field;
    :cond_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flurry/org/apache/avro/Schema$Field;

    .line 268
    .restart local v13       #rf:Lcom/flurry/org/apache/avro/Schema$Field;
    invoke-virtual {v13}, Lcom/flurry/org/apache/avro/Schema$Field;->name()Ljava/lang/String;

    move-result-object v7

    .line 269
    .restart local v7       #fname:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/flurry/org/apache/avro/Schema;->getField(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v17

    .line 270
    .restart local v17       #wf:Lcom/flurry/org/apache/avro/Schema$Field;
    if-nez v17, :cond_2

    .line 271
    invoke-virtual {v13}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    invoke-virtual {v13}, Lcom/flurry/org/apache/avro/Schema$Field;->defaultValue()Lcom/flurry/org/codehaus/jackson/JsonNode;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->getBinary(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/codehaus/jackson/JsonNode;)[B

    move-result-object v4

    .line 272
    .local v4, bb:[B
    add-int/lit8 v5, v5, -0x1

    new-instance v21, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;-><init>([B)V

    aput-object v21, v8, v5

    .line 273
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v13}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v21

    invoke-virtual {v13}, Lcom/flurry/org/apache/avro/Schema$Field;->schema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v21

    aput-object v21, v8, v5

    .line 274
    add-int/lit8 v5, v5, -0x1

    sget-object v21, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v21, v8, v5

    goto/16 :goto_3
.end method

.method private resolveUnion(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 9
    .parameter "writer"
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    .local p3, seen:Ljava/util/Map;,"Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;Lcom/flurry/org/apache/avro/io/parsing/Symbol;>;"
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, alts:Ljava/util/List;,"Ljava/util/List<Lcom/flurry/org/apache/avro/Schema;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 183
    .local v3, size:I
    new-array v4, v3, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 184
    .local v4, symbols:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    new-array v2, v3, [Ljava/lang/String;

    .line 190
    .local v2, labels:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 191
    .local v1, i:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 196
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v7, 0x0

    invoke-static {v4, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->alt([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 197
    new-instance v8, Lcom/flurry/org/apache/avro/io/parsing/Symbol$WriterUnionAction;

    invoke-direct {v8}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$WriterUnionAction;-><init>()V

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v6

    return-object v6

    .line 191
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/org/apache/avro/Schema;

    .line 192
    .local v5, w:Lcom/flurry/org/apache/avro/Schema;
    invoke-virtual {p0, v5, p2, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v4, v1

    .line 193
    invoke-virtual {v5}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 3
    .parameter "writer"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v2}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->root([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 11
    .parameter "writer"
    .parameter "reader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Lcom/flurry/org/apache/avro/Schema;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            ">;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, seen:Ljava/util/Map;,"Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator$LitS;Lcom/flurry/org/apache/avro/io/parsing/Symbol;>;"
    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 69
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v3

    .line 70
    .local v3, writerType:Lcom/flurry/org/apache/avro/Schema$Type;
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getType()Lcom/flurry/org/apache/avro/Schema$Type;

    move-result-object v1

    .line 72
    .local v1, readerType:Lcom/flurry/org/apache/avro/Schema$Type;
    if-ne v3, v1, :cond_1

    .line 73
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 122
    new-instance v4, Lcom/flurry/org/apache/avro/AvroTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unkown type for schema: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/flurry/org/apache/avro/AvroTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :pswitch_0
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 175
    :goto_0
    return-object v4

    .line 77
    :pswitch_1
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 81
    :pswitch_3
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 83
    :pswitch_4
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 85
    :pswitch_5
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 87
    :pswitch_6
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 89
    :pswitch_7
    sget-object v4, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    goto :goto_0

    .line 91
    :pswitch_8
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v4

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 93
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    new-instance v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFixedSize()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;-><init>(I)V

    aput-object v5, v4, v10

    .line 94
    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto :goto_0

    .line 99
    :pswitch_9
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    :cond_0
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v5

    .line 102
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getEnumSymbols()Ljava/util/List;

    move-result-object v6

    .line 101
    invoke-static {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->mkEnumAdjust(Ljava/util/List;Ljava/util/List;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    aput-object v5, v4, v10

    .line 102
    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto :goto_0

    .line 107
    :pswitch_a
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    new-array v6, v9, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 108
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    .line 109
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getElementType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    .line 108
    invoke-virtual {p0, v7, v8, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v6, v10

    .line 107
    invoke-static {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    aput-object v5, v4, v10

    .line 110
    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 113
    :pswitch_b
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    new-array v6, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 114
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v7

    .line 115
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getValueType()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v8

    .line 114
    invoke-virtual {p0, v7, v8, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v7

    aput-object v7, v6, v10

    .line 115
    sget-object v7, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v7, v6, v9

    .line 113
    invoke-static {v5, v6}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    aput-object v5, v4, v10

    .line 116
    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 118
    :pswitch_c
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->resolveRecords(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 120
    :pswitch_d
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 125
    :cond_1
    sget-object v4, Lcom/flurry/org/apache/avro/Schema$Type;->UNION:Lcom/flurry/org/apache/avro/Schema$Type;

    if-ne v3, v4, :cond_2

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->resolveUnion(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 129
    :cond_2
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v4

    invoke-virtual {v1}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 172
    :pswitch_e
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected schema type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :pswitch_f
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 175
    :cond_3
    :goto_1
    :pswitch_10
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    const-string v5, ", expecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v9}, Lcom/flurry/org/apache/avro/Schema;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 133
    :pswitch_11
    invoke-super {p0, p1, p3}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-static {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->resolve(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 138
    :pswitch_12
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    goto :goto_1

    .line 141
    :pswitch_13
    invoke-super {p0, p1, p3}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-static {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->resolve(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 146
    :pswitch_14
    invoke-static {}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->$SWITCH_TABLE$org$apache$avro$Schema$Type()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/Schema$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    goto :goto_1

    .line 150
    :pswitch_15
    invoke-super {p0, p1, p3}, Lcom/flurry/org/apache/avro/io/parsing/ValidatingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    invoke-static {v4, v5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->resolve(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 155
    :pswitch_16
    invoke-static {p2, p1}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->bestBranch(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;)I

    move-result v0

    .line 156
    .local v0, j:I
    if-ltz v0, :cond_3

    .line 157
    invoke-virtual {p2}, Lcom/flurry/org/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/org/apache/avro/Schema;

    invoke-virtual {p0, p1, v4, p3}, Lcom/flurry/org/apache/avro/io/parsing/ResolvingGrammarGenerator;->generate(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/Schema;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v2

    .line 158
    .local v2, s:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    new-array v4, v6, [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    new-instance v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;

    invoke-direct {v5, v0, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;-><init>(ILcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    aput-object v5, v4, v10

    sget-object v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v4

    goto/16 :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 129
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_16
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_14
        :pswitch_10
        :pswitch_10
    .end packed-switch

    .line 131
    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_11
    .end packed-switch

    .line 138
    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 146
    :pswitch_data_4
    .packed-switch 0x9
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
