.class final Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;
.super Ljava/lang/Object;
.source "BlockSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "BlockSettingsMenu"

    const-string v2, "blockNumberSettingDlg.onDismiss"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e01b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e040c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-nez v1, :cond_2

    const v1, 0x7f0e040b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$300()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5$1;-><init>(Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$300()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-nez v1, :cond_3

    const v1, 0x7f0e0409

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-nez v1, :cond_1

    const v1, 0x7f0e040a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
