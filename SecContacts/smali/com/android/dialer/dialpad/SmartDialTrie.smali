.class public Lcom/android/dialer/dialpad/SmartDialTrie;
.super Ljava/lang/Object;
.source "SmartDialTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/SmartDialTrie$Node;,
        Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;
    }
.end annotation


# static fields
.field public static sCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharacterMap:[C

.field private final mFormatNanp:Z

.field final mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialTrie;->sCountryCodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/SmartDialTrie;-><init>([CZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    sget-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    invoke-direct {p0, v0, p1}, Lcom/android/dialer/dialpad/SmartDialTrie;-><init>([CZ)V

    return-void
.end method

.method public constructor <init>([CZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mSize:I

    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mCharacterMap:[C

    iput-boolean p2, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mFormatNanp:Z

    return-void
.end method

.method private getAll(Lcom/android/dialer/dialpad/SmartDialTrie$Node;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/dialpad/SmartDialTrie$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChildrenSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChild(IZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/dialer/dialpad/SmartDialTrie;->getAll(Lcom/android/dialer/dialpad/SmartDialTrie$Node;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method numEntries()I
    .locals 2

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/dialpad/SmartDialTrie;->getAll(Lcom/android/dialer/dialpad/SmartDialTrie$Node;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method parseToIndexes(Ljava/lang/CharSequence;II)Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;
    .locals 11

    const/16 v10, 0x39

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    new-array v6, v4, [B

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v1

    const/16 v8, 0x61

    if-lt v1, v8, :cond_0

    const/16 v8, 0x7a

    if-le v1, v8, :cond_1

    :cond_0
    const/16 v8, 0x30

    if-lt v1, v8, :cond_4

    if-gt v1, v10, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    const/4 v0, 0x0

    if-gt v1, v10, :cond_3

    add-int/lit8 v8, v1, -0x30

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mCharacterMap:[C

    add-int/lit8 v9, v1, -0x61

    aget-char v8, v8, v9

    add-int/lit8 v8, v8, -0x30

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v8, -0x1

    aput-byte v8, v6, v2

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    new-instance v3, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;

    invoke-direct {v3}, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;-><init>()V

    iput-object v6, v3, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->indexes:[B

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, p2, :cond_7

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    iput v8, v3, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->nthFirstTokenPos:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, p3, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, p3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    iput v8, v3, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->nthLastTokenPos:I

    return-object v3

    :cond_7
    add-int/lit8 v8, v4, -0x1

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mSize:I

    return v0
.end method
