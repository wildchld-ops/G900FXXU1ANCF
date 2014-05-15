.class Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;
.super Landroid/database/ContentObserver;
.source "RcsDetailViewPinnerForCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RcsServiceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->query()V

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->readDataFromQuery()V

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->updateUi()V

    return-void
.end method
