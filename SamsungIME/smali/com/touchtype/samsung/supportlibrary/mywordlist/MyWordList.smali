.class public abstract Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_PROGRESS_VALUE:I = 0x64

.field public static final START_LISTING:I = 0xf

.field private static a:Lcom/touchtype/samsung/supportlibrary/mywordlist/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;
    .locals 1

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;

    invoke-direct {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract addWord(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/touchtype/samsung/supportlibrary/mywordlist/WordAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract editWord(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/touchtype/samsung/supportlibrary/mywordlist/WordAlreadyExistsException;
        }
    .end annotation
.end method

.method public abstract listWords(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;IILcom/touchtype_fluency/Session;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract removeWords(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract resortWords(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract shutDown()V
.end method

.method public abstract startUp()V
.end method
