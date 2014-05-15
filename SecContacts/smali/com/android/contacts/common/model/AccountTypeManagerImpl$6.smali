.class Lcom/android/contacts/common/model/AccountTypeManagerImpl$6;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Lcom/samsung/contacts/sim/editor/EditSimOperation$GetWritableAccountsWithoutSimInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getWritableAccountsWithoutSim()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$6;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureAccountsLoadedImpl()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$6;->this$0:Lcom/android/contacts/common/model/AccountTypeManagerImpl;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    return-void
.end method
