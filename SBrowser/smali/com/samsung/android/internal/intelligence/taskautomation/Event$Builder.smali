.class public Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/internal/intelligence/taskautomation/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCustomEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventSpecifierItemName:Ljava/lang/String;

.field private final mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mProvider:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mEventSpecifierItemName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mCustomEntities:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mEventSpecifierItemName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mCustomEntities:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public and()Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, "and"

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/internal/intelligence/taskautomation/Event;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/Event;-><init>(Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;Lcom/samsung/android/internal/intelligence/taskautomation/Event;)V

    return-object v0
.end method

.method public close()Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public open()Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public or()Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, "or"

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public specifier(Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;)Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, "EventSpecifier"

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setAttributeCustom(Lcom/samsung/android/internal/intelligence/taskautomation/EventSpecifier;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Event$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
