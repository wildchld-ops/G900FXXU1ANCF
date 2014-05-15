.class final Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/samsung/supportlibrary/mywordlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;


# direct methods
.method private constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;

    iput-object p3, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iput-object p4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;

    invoke-static {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord;->a(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserWord$Ordering;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finished re-sorting"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;->c:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-interface {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onResortingComplete()V

    return-void
.end method
