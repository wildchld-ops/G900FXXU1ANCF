.class public Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private suffixMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

.field private variableResolver:Lcom/sec/android/app/sbrowser/decoder/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "${"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->DEFAULT_PREFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    const-string v0, "}"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->DEFAULT_SUFFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    check-cast v0, Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->DEFAULT_PREFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->DEFAULT_SUFFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->DEFAULT_PREFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->DEFAULT_SUFFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<*>;",
            "Lcom/sec/android/app/sbrowser/decoder/StrMatcher;",
            "Lcom/sec/android/app/sbrowser/decoder/StrMatcher;",
            "C)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariableResolver(Lcom/sec/android/app/sbrowser/decoder/StrLookup;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariablePrefixMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariableSuffixMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setEscapeChar(C)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariableResolver(Lcom/sec/android/app/sbrowser/decoder/StrLookup;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setEscapeChar(C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->mapLookup(Ljava/util/Map;)Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->DEFAULT_PREFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    sget-object v2, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->DEFAULT_SUFFIX:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;Lcom/sec/android/app/sbrowser/decoder/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->mapLookup(Ljava/util/Map;)Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->mapLookup(Ljava/util/Map;)Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {p0, v3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    invoke-static {}, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->systemPropertiesLookup()Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;-><init>(Lcom/sec/android/app/sbrowser/decoder/StrLookup;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;IILjava/util/List;)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/decoder/StrBuilder;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->getVariablePrefixMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->getVariableSuffixMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->getEscapeChar()C

    move-result v12

    if-nez p4, :cond_1

    const/16 v20, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int v6, p2, p3

    move/from16 v15, p2

    :cond_0
    :goto_1
    if-ge v15, v6, :cond_a

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v17

    if-nez v17, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, p2

    if-le v15, v0, :cond_3

    add-int/lit8 v24, v15, -0x1

    aget-char v24, v9, v24

    move/from16 v0, v24

    if-ne v0, v12, :cond_3

    add-int/lit8 v24, v15, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->deleteCharAt(I)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    add-int/lit8 v13, v13, -0x1

    const/4 v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    move/from16 v18, v15

    add-int v15, v15, v17

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v15, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v10

    goto :goto_2

    :cond_4
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->isMatch([CIII)I

    move-result v10

    if-nez v10, :cond_5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    if-nez v14, :cond_9

    new-instance v22, Ljava/lang/String;

    add-int v24, v18, v17

    sub-int v25, v15, v18

    sub-int v25, v25, v17

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v9, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v24

    if-eqz v24, :cond_6

    new-instance v7, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x0

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_6
    add-int/2addr v15, v10

    move v11, v15

    if-nez p4, :cond_7

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v9, v1, v2}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v11, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->replace(IILjava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v21

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;IILjava/util/List;)I

    move-result v8

    add-int v24, v8, v21

    sub-int v25, v11, v18

    sub-int v8, v24, v25

    add-int/2addr v15, v8

    add-int/2addr v6, v8

    add-int/2addr v13, v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->buffer:[C

    :cond_8
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v14, v14, -0x1

    add-int/2addr v15, v10

    goto/16 :goto_2

    :cond_a
    if-eqz v20, :cond_c

    if-eqz v5, :cond_b

    const/16 v24, 0x1

    :goto_3
    return v24

    :cond_b
    const/16 v24, 0x0

    goto :goto_3

    :cond_c
    move/from16 v24, v13

    goto :goto_3
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 1

    iget-char v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getVariablePrefixMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->prefixMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lcom/sec/android/app/sbrowser/decoder/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->variableResolver:Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->suffixMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public replace(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/String;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/StringBuffer;)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace([C)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    array-length v2, p1

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append([C)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append([CII)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public replaceIn(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    move-result v0

    goto :goto_0
.end method

.method public replaceIn(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    move-result v0

    goto :goto_0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    goto :goto_0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    invoke-direct {v2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;-><init>(I)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lcom/sec/android/app/sbrowser/decoder/StrBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int v1, p2, p3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/decoder/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected resolveVariable(Ljava/lang/String;Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->getVariableResolver()Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/decoder/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->enableSubstitutionInVariables:Z

    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0

    iput-char p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->escapeChar:C

    return-void
.end method

.method public setVariablePrefix(C)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->charMatcher(C)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariablePrefixMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariablePrefixMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefixMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->prefixMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object p0
.end method

.method public setVariableResolver(Lcom/sec/android/app/sbrowser/decoder/StrLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/decoder/StrLookup",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->variableResolver:Lcom/sec/android/app/sbrowser/decoder/StrLookup;

    return-void
.end method

.method public setVariableSuffix(C)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->charMatcher(C)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariableSuffixMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->setVariableSuffixMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffixMatcher(Lcom/sec/android/app/sbrowser/decoder/StrMatcher;)Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->suffixMatcher:Lcom/sec/android/app/sbrowser/decoder/StrMatcher;

    return-object p0
.end method

.method protected substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/decoder/StrSubstitutor;->substitute(Lcom/sec/android/app/sbrowser/decoder/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
