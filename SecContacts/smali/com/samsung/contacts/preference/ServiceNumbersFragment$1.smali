.class Lcom/samsung/contacts/preference/ServiceNumbersFragment$1;
.super Ljava/lang/Object;
.source "ServiceNumbersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/preference/ServiceNumbersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$1;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/preference/ServiceNumbersFragment$1;->this$0:Lcom/samsung/contacts/preference/ServiceNumbersFragment;

    #calls: Lcom/samsung/contacts/preference/ServiceNumbersFragment;->sendAccessibilityEvent()V
    invoke-static {v1}, Lcom/samsung/contacts/preference/ServiceNumbersFragment;->access$000(Lcom/samsung/contacts/preference/ServiceNumbersFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
