.class Lcom/android/contacts/detail/ContactLoaderFragment$selectItemDialogFragmentListener;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/samsung/contacts/util/SelectItemDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "selectItemDialogFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$selectItemDialogFragmentListener;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/detail/ContactLoaderFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment$selectItemDialogFragmentListener;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    return-void
.end method


# virtual methods
.method public onItemChosen(IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "list"

    const-string v2, "whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$selectItemDialogFragmentListener;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "list"

    const-string v2, "blacklist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$selectItemDialogFragmentListener;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
