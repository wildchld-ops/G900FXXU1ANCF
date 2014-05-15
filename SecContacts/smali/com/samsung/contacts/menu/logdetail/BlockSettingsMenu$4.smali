.class final Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;
.super Ljava/lang/Object;
.source "BlockSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$rejectNumer:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$000()[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$000()[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v0, v1, v4, v3}, Lcom/samsung/dialer/util/CallLogUtil;->checkCallblocked(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/samsung/dialer/util/CallLogUtil;->updateCallunblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v4

    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$100()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$000()[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$000()[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/samsung/dialer/util/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/dialer/util/CallLogUtil;->updateMessageunblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v0, v3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/samsung/dialer/util/CallLogUtil;->blockCallContact(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/samsung/dialer/util/CallLogUtil;->unblockCallContact(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$200()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/dialer/util/CallLogUtil;->blockMessageContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, v0, v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$4;->val$rejectNumer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/dialer/util/CallLogUtil;->unblockMessageContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
