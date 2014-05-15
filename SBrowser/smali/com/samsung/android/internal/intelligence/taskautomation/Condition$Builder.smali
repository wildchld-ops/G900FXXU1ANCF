.class public Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;
.super Ljava/lang/Object;
.source "Condition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/internal/intelligence/taskautomation/Condition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCustomEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;->mCustomEntities:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;->mCustomEntities:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public and()Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, "and"

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/internal/intelligence/taskautomation/Condition;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/Condition;-><init>(Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;Lcom/samsung/android/internal/intelligence/taskautomation/Condition;)V

    return-object v0
.end method

.method public close()Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public open()Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public or()Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, "or"

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public specifier(Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;)Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;

    invoke-direct {v0}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;-><init>()V

    const-string v1, "ConditionSpecifier"

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setStringCustom(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/CustomObject;->setContextCustom(Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/Condition$Builder;->mCustomEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
