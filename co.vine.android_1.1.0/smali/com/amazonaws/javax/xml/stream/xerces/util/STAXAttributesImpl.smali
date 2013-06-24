.class public Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;
.super Ljava/lang/Object;
.source "STAXAttributesImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    }
.end annotation


# instance fields
.field MAGIC_NUMBER:I

.field protected attrList:Ljava/util/ArrayList;

.field protected attrMap:Ljava/util/HashMap;

.field attr_index:I

.field protected dupList:Ljava/util/ArrayList;

.field protected fNamespaces:Z

.field private init:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 51
    iput v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->MAGIC_NUMBER:I

    .line 53
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    .line 54
    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    .line 55
    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    .line 56
    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->init:Z

    .line 58
    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    .line 64
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 65
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;)V

    .line 66
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 67
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "tableSize"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->MAGIC_NUMBER:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    .line 54
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    .line 55
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    .line 56
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->init:Z

    .line 58
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 80
    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "name"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 127
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;)V

    .line 128
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 129
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iput-object v5, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 137
    :goto_0
    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 138
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 139
    iput-object p3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 141
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v1, v3, :cond_7

    .line 144
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    check-cast v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 145
    .restart local v2       #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v3, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 146
    iput-object p3, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 173
    .end local v1           #i:I
    :goto_2
    return v1

    .line 133
    .end local v2           #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 134
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iput-object v5, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    goto :goto_0

    .line 143
    .restart local v1       #i:I
    .restart local v2       #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v1           #i:I
    .end local v2           #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_2
    const/4 v2, 0x0

    .line 152
    .restart local v2       #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->init:Z

    if-nez v3, :cond_5

    .line 153
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 154
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    const/high16 v5, 0x4000

    invoke-direct {v3, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 155
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v1, v3, :cond_4

    .line 156
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    check-cast v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 157
    .restart local v2       #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 159
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->init:Z

    .line 166
    .end local v1           #i:I
    :cond_5
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->getLength()I

    move-result v1

    goto :goto_2

    .line 169
    :cond_6
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_7
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 173
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->getLength()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    goto :goto_2
.end method

.method public addAttributeNS(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 614
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;)V

    .line 615
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 616
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iput-object v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 623
    :goto_0
    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v4, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 624
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 625
    iput-object p3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 630
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->MAGIC_NUMBER:I

    if-le v4, v5, :cond_7

    .line 631
    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->init:Z

    if-nez v4, :cond_3

    .line 632
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 633
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x2

    const/high16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    .line 634
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v1, v4, :cond_2

    .line 635
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 636
    .local v3, tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 620
    .end local v1           #i:I
    .end local v3           #tmp:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 621
    .restart local v0       #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iput-object v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    goto :goto_0

    .line 638
    .restart local v1       #i:I
    :cond_2
    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->init:Z

    .line 640
    .end local v1           #i:I
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 641
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 642
    .local v2, obj:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v4, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iput-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 643
    iput-object v0, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 644
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 645
    iget-boolean v4, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->dup:Z

    if-nez v4, :cond_5

    .line 646
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    if-nez v4, :cond_4

    .line 647
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    .line 648
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iput-boolean v7, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->dup:Z

    .line 658
    .end local v2           #obj:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_5
    :goto_2
    return-void

    .line 653
    :cond_6
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    goto :goto_2

    .line 657
    :cond_7
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    goto :goto_2
.end method

.method public checkDuplicatesNS()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 673
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    iget v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->MAGIC_NUMBER:I

    if-gt v5, v6, :cond_3

    .line 674
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    .line 675
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 676
    .local v0, att1:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_1
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v3, v5, :cond_2

    .line 677
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 678
    .local v1, att2:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v6, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    .line 680
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 699
    .end local v0           #att1:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .end local v1           #att2:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_0
    :goto_2
    return-object v4

    .line 676
    .restart local v0       #att1:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .restart local v1       #att2:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 674
    .end local v1           #att2:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v0           #att1:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 687
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 688
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 689
    .restart local v0       #att1:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 690
    .restart local v1       #att2:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :goto_4
    if-eqz v1, :cond_5

    .line 691
    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v6, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v5, v6, :cond_4

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v6, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v5, v6, :cond_4

    .line 693
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    goto :goto_2

    .line 695
    :cond_4
    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 696
    goto :goto_4

    .line 687
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public getAugmentations(I)Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;
    .locals 1
    .parameter "attributeIndex"

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;
    .locals 1
    .parameter "qName"

    .prologue
    .line 565
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;
    .locals 1
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDuplicate(Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .locals 3
    .parameter "attr1"
    .parameter "qname"

    .prologue
    .line 710
    move-object v0, p1

    .line 711
    .local v0, att1:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    iget-object v2, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 717
    :goto_0
    return-object v1

    .line 715
    :cond_0
    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 712
    :cond_1
    if-eqz v0, :cond_2

    .line 713
    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 714
    goto :goto_0

    .line 717
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "qName"

    .prologue
    .line 421
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v1, v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 423
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 421
    .restart local v0       #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "localPart"

    .prologue
    .line 441
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    if-ge v1, v2, :cond_2

    .line 442
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 443
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v1

    .line 441
    .restart local v0       #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    if-nez v0, :cond_0

    .line 464
    const-string v0, ""

    .line 466
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 407
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 408
    :cond_0
    const/4 v0, 0x0

    .line 410
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(ILcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "attrName"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {p2, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 221
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 2
    .parameter "attrIndex"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 278
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-object v1
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    return-object v0
.end method

.method public getQualifiedName(I)Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 1
    .parameter "index"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    return-object v0
.end method

.method protected getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 703
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 704
    const-string p1, "NMTOKEN"

    .line 706
    .end local p1
    :cond_0
    return-object p1
.end method

.method public getSchemaId(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public getSchemaId(Ljava/lang/String;)Z
    .locals 1
    .parameter "qname"

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public getSchemaId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 336
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 337
    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "qname"

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "localName"

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    if-nez v2, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-object v1

    .line 503
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 504
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "qname"

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 540
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 1
    .parameter "attrIndex"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-boolean v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->specified:Z

    return v0
.end method

.method public removeAllAttributes()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    .line 183
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->dupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    :cond_1
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->init:Z

    .line 188
    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 2
    .parameter "attrIndex"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 200
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    return-void
.end method

.method public setAugmentations(ILcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 0
    .parameter "attrIndex"
    .parameter "augs"

    .prologue
    .line 585
    return-void
.end method

.method public setName(ILcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "attrName"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 210
    return-void
.end method

.method public setNamespaces(Z)V
    .locals 0
    .parameter "namespaces"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->fNamespaces:Z

    .line 93
    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 2
    .parameter "attrIndex"
    .parameter "attrValue"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 266
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setSchemaId(IZ)V
    .locals 0
    .parameter "attrIndex"
    .parameter "schemaId"

    .prologue
    .line 600
    return-void
.end method

.method public setSpecified(IZ)V
    .locals 1
    .parameter "attrIndex"
    .parameter "specified"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iput-boolean p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->specified:Z

    .line 291
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "attrType"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 2
    .parameter "attrIndex"
    .parameter "uri"

    .prologue
    .line 594
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 595
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object p2, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 596
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 2
    .parameter "attrIndex"
    .parameter "attrValue"

    .prologue
    .line 250
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attr_index:I

    if-le p1, v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl;->attrList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;

    .line 253
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 254
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/STAXAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    goto :goto_0
.end method
