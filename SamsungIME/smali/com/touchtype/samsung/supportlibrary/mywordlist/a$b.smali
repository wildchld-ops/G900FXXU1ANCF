.class final Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/samsung/supportlibrary/mywordlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

.field private d:Ljava/lang/String;

.field private e:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field private f:Lcom/touchtype_fluency/Session;


# direct methods
.method private constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    iput-object p3, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->e:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iput-object p6, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->a:Ljava/util/List;

    iput-object p7, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->f:Lcom/touchtype_fluency/Session;

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->c()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez v0, :cond_0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Word \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found in the persistent dynamic model, so not editing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->e:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v1, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-interface {v0, v7, v1, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Starting to edit word \'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' to \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->d:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->d:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v4}, Lcom/touchtype_fluency/Sequence;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    :goto_2
    :try_start_0
    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->c()Lcom/touchtype_fluency/TagSelector;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/touchtype_fluency/Trainer;->write(Lcom/touchtype_fluency/TagSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted EditWordThread.run after updating the dynamic model"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->e:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v1, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-interface {v0, v7, v1, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, " (\'"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\')"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Lcom/touchtype_fluency/Trainer;->addTermMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IOException while writing to the persistent dynamic model in EditWordThread.run"

    invoke-static {v4, v5, v0}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->e:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-interface {v0, v7, v4, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Finished editing word \'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->e:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    invoke-interface {v0, v1, v2, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onEditingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " (\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
