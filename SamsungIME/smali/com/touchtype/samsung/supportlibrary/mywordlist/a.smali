.class final Lcom/touchtype/samsung/supportlibrary/mywordlist/a;
.super Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/touchtype_fluency/TagSelector;

.field private static final c:Lcom/touchtype_fluency/TagSelector;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Lcom/touchtype_fluency/TagSelector;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->persistentDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->c:Lcom/touchtype_fluency/TagSelector;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Lcom/touchtype_fluency/TagSelector;

    return-object v0
.end method

.method static synthetic c()Lcom/touchtype_fluency/TagSelector;
    .locals 1

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->c:Lcom/touchtype_fluency/TagSelector;

    return-object v0
.end method


# virtual methods
.method public final addWord(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 9
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

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "term should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v4, "term should not be empty"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    move v0, v1

    :goto_2
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v4, "listener should not be null"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    move v0, v1

    :goto_3
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v4, "userWordList should not be null"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_5

    move v0, v1

    :goto_4
    sget-object v3, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v4, "session should not be null"

    invoke-static {v0, v3, v4}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_5
    if-eqz v1, :cond_6

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "term already exists"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/WordAlreadyExistsException;

    invoke-direct {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/WordAlreadyExistsException;-><init>()V

    throw v0

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v7

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting addWord call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_7
    iget-object v8, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_8
    move v1, v7

    goto :goto_5
.end method

.method public final editWord(Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 10
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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v2, "term should not be null"

    invoke-static {v0, v1, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "term should not be empty"

    invoke-static {v0, v1, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    :goto_2
    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "oldUserWord should not be null"

    invoke-static {v0, v1, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    :goto_3
    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v1, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_5

    const/4 v0, 0x1

    :goto_4
    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userWordList should not be null"

    invoke-static {v0, v1, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_6

    const/4 v0, 0x1

    :goto_5
    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "session should not be null"

    invoke-static {v0, v1, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_7

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "term already exists"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/WordAlreadyExistsException;

    invoke-direct {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/WordAlreadyExistsException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting editWord call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    iget-object v9, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_6
.end method

.method public final listWords(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;IILcom/touchtype_fluency/Session;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "ordering should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    move v0, v1

    :goto_2
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "session should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_3

    move v0, v1

    :goto_3
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "initialBatchSize should be greater then 0"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-lez p4, :cond_4

    :goto_4
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v2, "subsequentBatchSize should be greater then 0"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting listWords call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_2

    :cond_3
    move v0, v7

    goto :goto_3

    :cond_4
    move v1, v7

    goto :goto_4

    :cond_5
    iget-object v8, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;IILcom/touchtype_fluency/Session;B)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method public final removeWords(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 8
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

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userWordsToRemoveList should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userWordsToRemoveList should not be empty"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    move v0, v1

    :goto_3
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userWordList should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    move v0, v1

    :goto_4
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userWordList should not be smaller than userWordsToRemoveList"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_5

    :goto_5
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v2, "session should not be null"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting removeWords call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_4

    :cond_5
    move v1, v6

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public final resortWords(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 7
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

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    move v0, v1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userWordList should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    :goto_2
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v2, "session should not be null"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting resortWords call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;B)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public final shutDown()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final startUp()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
