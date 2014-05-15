.class public Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;
.super Ljava/lang/Object;
.source "ActivityRuleManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;
    }
.end annotation


# instance fields
.field private dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

.field private mContext:Landroid/content/Context;

.field private mInitlistner:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mInitlistner:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;

    iput-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ruleNullCheck(Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by activity rule is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by rule name is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->getEvent()Lcom/samsung/android/internal/intelligence/taskautomation/Event;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by event is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->getConditionItem()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by CI name of event is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->getProvider()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by Provider of event is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->getCustomEntities()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by Relations of event is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-virtual {v3}, Lcom/samsung/android/internal/intelligence/taskautomation/Event;->getProvider()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by provider is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->getCondition()Lcom/samsung/android/internal/intelligence/taskautomation/Condition;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/internal/intelligence/taskautomation/Condition;->getCustomEntities()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by Relations of condition is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/internal/intelligence/taskautomation/Condition;->getConditionSpecifiers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->getActionParams()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "cause by action is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;

    invoke-virtual {v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;->getConditionItem()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "caused by CI name of conditionContext is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-virtual {v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;->getProvider()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "caused by Provider of conditionContext is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-virtual {v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;->getAttribute()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "caused by Attribute name of conditionContext is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-virtual {v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ConditionSpecifier;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "caused by Value of conditionContext is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    return-void
.end method


# virtual methods
.method public DeInitialize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public Initialize(Landroid/content/Context;Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.internal.intelligence.taskautomation.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-object p2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mInitlistner:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;

    :cond_0
    return-void
.end method

.method public addActivityRule(Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->ruleNullCheck(Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)V

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->setRuleOwner(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v3, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_addActivityRule(Ljava/lang/String;Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service has occurred internal exceptional situation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addActivityRules(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p1, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cause by jsonStr is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v3, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_addActivityRules(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/NullPointerException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service has occurred internal exceptional situation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableActivityRule(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cause by ruleId is invalid, ruleId should not be negative or zero."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_disableActivityRule(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service has occurred internal exceptional situation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableActivityRule(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cause by ruleId is invalid, ruleId should not be negative or zero."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_enableActivityRule(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service has occurred internal exceptional situation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getActivityRule(I)Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v4, ""

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cause by packageName is null or empty string"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v3, 0x1

    if-ge p1, v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cause by ruleId is invalid, ruleId should not be negative or zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v4, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_getActivityRule(Ljava/lang/String;I)Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_3
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/NullPointerException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v3, "Service is not ready"

    invoke-direct {v2, v3}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/SecurityException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "You need proper permission."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActivityRules(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;,
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v3, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_getActivityRules(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/SecurityException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need proper permission."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/os/TransactionTooLargeException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/os/TransactionTooLargeException;

    invoke-direct {v1}, Landroid/os/TransactionTooLargeException;-><init>()V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "uncaughted error has occured in demon"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllActivityRules()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;,
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v3, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_getAllActivityRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/SecurityException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need proper permission."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/os/TransactionTooLargeException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/os/TransactionTooLargeException;

    invoke-direct {v1}, Landroid/os/TransactionTooLargeException;-><init>()V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "uncaughted error has occured in demon"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mInitlistner:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mInitlistner:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Initilize listener is null"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;->OnInitialized(Ljava/lang/Exception;)V

    const-string v0, "ActivityRuleManager"

    const-string v1, "Initilize listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->mInitlistner:Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager$InitializeListener;->OnInitialized(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    return-void
.end method

.method public removeActivityRule(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cause by ruleId is invalid, ruleId should not be negative or zero."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_removeActivityRule(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service has occurred internal exceptional situation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAllActivityRules()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_removeAllActivityRules(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service has occurred internal exceptional situation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateActivityRule(Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cause by packageName is null or empty string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->ruleNullCheck(Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)V

    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->setRuleOwner(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->dataService:Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    iget-object v2, p0, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRuleManager;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;->aidl_updateActivityRule(Ljava/lang/String;Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/NullPointerException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;

    const-string v2, "Service is not ready"

    invoke-direct {v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/ServiceNotReadyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service has occurred internal exceptional situation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
