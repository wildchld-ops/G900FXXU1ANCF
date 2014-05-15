.class final Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/samsung/supportlibrary/mywordlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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

.field private c:Ljava/lang/String;

.field private d:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field private e:Lcom/touchtype_fluency/Session;


# direct methods
.method private constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->d:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iput-object p5, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->a:Ljava/util/List;

    iput-object p6, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->e:Lcom/touchtype_fluency/Session;

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->e:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Word \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' found in enabled models, so not adding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->d:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onAddingComplete(ZLjava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting to add word \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->e:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->c()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/Trainer;->write(Lcom/touchtype_fluency/TagSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Interrupted AddWordThread.run after updating the dynamic model"

    invoke-static {v0, v2}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->d:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onAddingComplete(ZLjava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/touchtype_fluency/Trainer;->addTermMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IOException while writing to the persistent dynamic model in AddWordThread.run"

    invoke-static {v2, v3, v0}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->d:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->c:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onAddingComplete(ZLjava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->a:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished adding word \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->d:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4, v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onAddingComplete(ZLjava/lang/String;Ljava/lang/String;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;)V

    goto/16 :goto_0
.end method
