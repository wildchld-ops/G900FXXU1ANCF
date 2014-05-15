.class public Lcom/nuance/connect/service/configuration/ConnectProperty;
.super Ljava/lang/Object;
.source "ConnectProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;
    }
.end annotation


# static fields
.field private static final PREFERENCE_NAME:Ljava/lang/String; = "CONNPREFS_"


# instance fields
.field private configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

.field private context:Lcom/nuance/connect/service/ConnectClient;

.field private currentValue:Ljava/lang/Object;

.field private defaultValue:Ljava/lang/Object;

.field listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private name:Ljava/lang/String;

.field private serverOverrideAllowed:Z

.field private type:I

.field private verification:I


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->context:Lcom/nuance/connect/service/ConnectClient;

    iput-object p2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    iput-boolean p4, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    iput-object p5, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->defaultValue:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->verification:I

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->load()V

    return-void
.end method

.method protected constructor <init>(Lcom/nuance/connect/service/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->context:Lcom/nuance/connect/service/ConnectClient;

    iput-object p2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    iput-boolean p4, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    iput-object p5, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->defaultValue:Ljava/lang/Object;

    iput p6, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->verification:I

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->load()V

    return-void
.end method

.method private load()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNPREFS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    iput-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    iput-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private notifyChange()V
    .locals 3

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty;->sendValue(Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private save()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNPREFS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->context:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->notifyChange()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectProperty.getBoolean("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->defaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getVerification()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->verification:I

    return v0
.end method

.method public removeListener(Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendValue(Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;)V
    .locals 4

    :try_start_0
    iget v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getInt()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;->onConfigurationIntChange(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending configuration value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;->onConfigurationStringChange(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->getBoolean()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;->onConfigurationBoolChange(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 5

    sget-object v3, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    iput-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    iget v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/connect/service/configuration/ConnectProperty;->setConfigValue(ILcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error setting configuration"

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error setting configuration"

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p0, p1, v3}, Lcom/nuance/connect/service/configuration/ConnectProperty;->setConfigValue(Ljava/lang/String;Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error setting configuration"

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    :try_start_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p0, v3, v4}, Lcom/nuance/connect/service/configuration/ConnectProperty;->setConfigValue(ZLcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "Error setting configuration"

    invoke-interface {v3, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setConfigValue(ILcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectProperty.setConfigValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->notifyChange()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->BUILD:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setConfigValue(Ljava/lang/String;Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectProperty.setConfigValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->notifyChange()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->BUILD:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setConfigValue(ZLcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectProperty.setConfigValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->notifyChange()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->BUILD:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    sget-object v2, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p2, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setServerValue(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectProperty.setServerValue[i]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->setConfigValue(ILcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V

    return-void
.end method

.method public setServerValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectProperty.setServerValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-direct {p0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->save()V

    :cond_1
    return-void
.end method

.method public setServerValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectProperty.setServerValue[s]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->setConfigValue(Ljava/lang/String;Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V

    return-void
.end method

.method public setServerValue(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectProperty.setServerValue[b]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->serverOverrideAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/service/configuration/ConnectProperty;->setConfigValue(ZLcom/nuance/connect/service/configuration/ConnectProperty$ConfigurationType;)V

    return-void
.end method
