.class Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5$1;
.super Ljava/lang/Object;
.source "BlockSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5$1;->this$0:Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "BlockSettingsMenu"

    const-string v1, "blockNumberFullErrorDlg.onCancel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
