.class final Lps/reso/instaeclipse/mods/media/InstantMediaQuality;
.super Ljava/lang/Object;
.source "InstantMediaQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;,
        Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 260
    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static base(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    .line 264
    const-string v0, "BaseURL"

    invoke-static {p1, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 265
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 278
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 256
    instance-of v1, p0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-static {v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->name(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static completeFileUrl(Ljava/lang/String;)Z
    .locals 2

    .line 242
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 243
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method static declaredHasAudio(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    .line 299
    const-string v0, "A3r"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 300
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static dimension(Ljava/lang/String;)I
    .locals 4

    .line 270
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->positive(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static fromDash(Ljava/lang/String;)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;
    .locals 30

    move-object/from16 v0, p0

    .line 168
    const-string v1, "audio/"

    const-string v2, "mimeType"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    if-eqz v0, :cond_16

    .line 169
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0x1e8480

    if-gt v5, v6, :cond_16

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "<!DOCTYPE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_b

    .line 172
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 173
    invoke-virtual {v5, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v6, 0x0

    .line 174
    invoke-virtual {v5, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 175
    :try_start_1
    const-string v7, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {v5, v7, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2

    .line 177
    :catch_0
    :try_start_2
    const-string v7, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v5, v7, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    :catch_1
    :try_start_3
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 180
    new-instance v7, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v7}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 181
    new-instance v7, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$1;

    invoke-direct {v7}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$1;-><init>()V

    invoke-virtual {v5, v7}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 185
    new-instance v7, Lorg/xml/sax/InputSource;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 186
    const-string v5, "Period"

    invoke-static {v0, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 187
    const-string v7, "MPD"

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->name(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "dynamic"

    const-string v8, "type"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 188
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_15

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->unsupported(Lorg/w3c/dom/Element;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_a

    .line 189
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 190
    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->unsupported(Lorg/w3c/dom/Element;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {v0, v3, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object v0

    :cond_2
    const/4 v7, 0x0

    .line 191
    invoke-static {v7, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->base(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->base(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 194
    const-string v10, "AdaptationSet"

    invoke-static {v5, v10}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v10, v6

    move v11, v10

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 195
    invoke-static {v0, v12}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->base(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v13

    .line 196
    invoke-interface {v12, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2

    const-string v15, "contentType"

    const-string v7, "audio"

    if-nez v14, :cond_4

    .line 197
    :try_start_4
    invoke-interface {v12, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_1

    :cond_3
    move v14, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v14, v4

    :goto_2
    or-int/2addr v10, v14

    .line 198
    const-string v14, "Representation"

    invoke-static {v12, v14}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lorg/w3c/dom/Element;

    .line 199
    invoke-static {v6, v12, v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->attribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v0

    .line 200
    invoke-static {v6, v12, v15}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->attribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    goto :goto_4

    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v19, 0x1

    :goto_5
    or-int v10, v10, v19

    move-object/from16 v20, v1

    .line 203
    const-string v1, "codecs"

    invoke-static {v6, v12, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->attribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v13, v6}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->base(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v23

    .line 207
    invoke-static {v12}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->unsupported(Lorg/w3c/dom/Element;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v6}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->unsupported(Lorg/w3c/dom/Element;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static/range {v23 .. v23}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->completeFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 208
    invoke-static {v12, v6}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->hasSeparateInitialization(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_7

    .line 209
    :cond_7
    const-string v2, "bandwidth"

    invoke-static {v6, v12, v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->attribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->positive(Ljava/lang/String;)J

    move-result-wide v27

    if-eqz v19, :cond_a

    .line 212
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "audio/mp4"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 213
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "mp4a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7

    .line 214
    :cond_9
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    const-string v29, "dash-audio"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v29}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 215
    :cond_a
    const-string v1, "video/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 216
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "video/mp4"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_7

    .line 217
    :cond_c
    const-string v0, "width"

    invoke-static {v6, v12, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->attribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->dimension(Ljava/lang/String;)I

    move-result v25

    .line 218
    const-string v0, "height"

    invoke-static {v6, v12, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->attribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->dimension(Ljava/lang/String;)I

    move-result v26

    if-lez v25, :cond_f

    if-gtz v26, :cond_d

    goto :goto_7

    .line 220
    :cond_d
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    const-string v29, "dash"

    const/16 v24, 0x0

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v29}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_f
    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 224
    :cond_11
    invoke-static {v9}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->ranked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v10, :cond_12

    .line 225
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object v0

    .line 226
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v7, 0x0

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    iget-object v7, v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->url:Ljava/lang/String;

    .line 227
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    new-instance v2, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    iget-object v4, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->url:Ljava/lang/String;

    iget v5, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->width:I

    iget v6, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->height:I

    iget-wide v8, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->bandwidth:J

    const-string v24, "dash"

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v20, v5

    move/from16 v21, v6

    move-wide/from16 v22, v8

    invoke-direct/range {v17 .. v24}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 229
    :cond_14
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {v0, v3, v11}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object v0

    .line 188
    :cond_15
    :goto_a
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    .line 230
    :catch_2
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object v0

    :cond_16
    :goto_b
    move v1, v4

    .line 170
    new-instance v0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {v0, v3, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method private static hasSeparateInitialization(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)Z
    .locals 7

    const/4 v0, 0x2

    .line 234
    new-array v1, v0, [Lorg/w3c/dom/Element;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_3

    aget-object v3, v1, p1

    .line 235
    const-string v4, "SegmentBase"

    invoke-static {v3, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 236
    const-string v5, "Initialization"

    invoke-static {v4, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 237
    const-string v6, "sourceURL"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    return p0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static integer(Ljava/lang/Object;)I
    .locals 1

    .line 275
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isMuxedProgressive(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 294
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 295
    const-string v1, "/m86/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "%2fm86%2f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic lambda$fromDash$1(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 180
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "External entity"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$ranked$0(Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;)I
    .locals 4

    .line 155
    invoke-virtual {p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->pixels()J

    move-result-wide v0

    invoke-virtual {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->pixels()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-wide v0, p1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->bandwidth:J

    iget-wide p0, p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->bandwidth:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static name(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    .line 252
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static positive(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    .line 272
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method static ranked(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;",
            ">;)",
            "Ljava/util/List<",
            "Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->url:Ljava/lang/String;

    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->audioUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->audioUrl:Ljava/lang/String;

    .line 152
    invoke-static {v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_2
    new-instance p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 158
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;->audioUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static read447(Ljava/lang/Object;Z)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;
    .locals 13

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 55
    new-instance p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {p0, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object p0

    .line 56
    :cond_0
    const-string v2, "getUrl"

    if-nez p1, :cond_2

    .line 57
    const-string p1, "A3G"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 58
    const-string p1, "Bbf"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 59
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_5

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 60
    invoke-static {p1, v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    const-string v4, "getWidth"

    .line 62
    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v7

    const-string v4, "getHeight"

    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v8

    const-wide/16 v9, 0x0

    const-string v11, "image-candidates"

    const/4 v6, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_2
    const-string p1, "AAf"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 67
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 68
    invoke-static {v3, v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-static {v6}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    const-string v5, "DsX"

    .line 70
    invoke-static {v3, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v8

    const-string v5, "CII"

    invoke-static {v3, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v9

    const-wide/16 v10, 0x0

    const-string v12, "video-versions"

    const/4 v7, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    .line 69
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_4
    const-string p1, "A8O"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 75
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->fromDash(Ljava/lang/String;)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    move-result-object p0

    .line 76
    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->variants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-boolean v1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->dashSkipped:Z

    .line 80
    :cond_5
    new-instance p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {p0, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method static read448(Ljava/lang/Object;Z)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;
    .locals 13

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 87
    new-instance p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {p0, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object p0

    .line 88
    :cond_0
    const-string v2, "getUrl"

    if-nez p1, :cond_2

    .line 89
    const-string p1, "A3F"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    const-string p1, "Bc4"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_5

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 92
    invoke-static {p1, v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    const-string v4, "getWidth"

    .line 94
    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v7

    const-string v4, "getHeight"

    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v8

    const-wide/16 v9, 0x0

    const-string v11, "image-candidates-448"

    const/4 v6, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_2
    const-string p1, "AAc"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 99
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 100
    invoke-static {v3, v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v6}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    const-string v5, "Dtr"

    .line 102
    invoke-static {v3, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v8

    const-string v5, "CJ0"

    .line 103
    invoke-static {v3, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v9

    const-wide/16 v10, 0x0

    const-string v12, "video-versions-448"

    const/4 v7, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    .line 101
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_4
    const-string p1, "A8L"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 108
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->fromDash(Ljava/lang/String;)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    move-result-object p0

    .line 109
    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->variants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-boolean v1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->dashSkipped:Z

    .line 113
    :cond_5
    new-instance p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {p0, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method static read449(Ljava/lang/Object;Z)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;
    .locals 13

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 120
    new-instance p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {p0, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object p0

    .line 121
    :cond_0
    const-string v2, "getUrl"

    if-nez p1, :cond_2

    .line 122
    const-string p1, "A3F"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 123
    const-string p1, "Bd1"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 124
    instance-of p1, p0, Ljava/util/List;

    if-eqz p1, :cond_5

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 125
    invoke-static {p1, v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    const-string v4, "getWidth"

    .line 127
    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v7

    const-string v4, "getHeight"

    invoke-static {p1, v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v8

    const-wide/16 v9, 0x0

    const-string v11, "image-candidates-449"

    const/4 v6, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    .line 126
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    const-string p1, "AAh"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 132
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 133
    invoke-static {v3, v2}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {v6}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->validUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;

    const-string v5, "DvO"

    .line 135
    invoke-static {v3, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v8

    const-string v5, "CK7"

    .line 136
    invoke-static {v3, v5}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->integer(Ljava/lang/Object;)I

    move-result v9

    const-wide/16 v10, 0x0

    const-string v12, "video-versions-449"

    const/4 v7, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;)V

    .line 134
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_4
    const-string p1, "A8P"

    invoke-static {p0, p1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 141
    invoke-static {p0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->fromDash(Ljava/lang/String;)Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    move-result-object p0

    .line 142
    iget-object p1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->variants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-boolean v1, p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;->dashSkipped:Z

    .line 146
    :cond_5
    new-instance p0, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;

    invoke-direct {p0, v0, v1}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality$Result;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method private static string(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 274
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static unsupported(Lorg/w3c/dom/Element;)Z
    .locals 1

    .line 248
    const-string v0, "ContentProtection"

    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SegmentTemplate"

    .line 249
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SegmentList"

    .line 250
    invoke-static {p0, v0}, Lps/reso/instaeclipse/mods/media/InstantMediaQuality;->children(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static validUrl(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 284
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 286
    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 287
    const-string v2, "https"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ".cdninstagram.com"

    .line 288
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".fbcdn.net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :catch_0
    :cond_3
    return v0
.end method
