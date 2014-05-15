.class Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;
.super Ljava/lang/Object;
.source "BlockSettingsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->BlockNumberSettingsDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mEntryIds:[I


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;Landroid/content/Context;[I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;->this$0:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    iput-object p2, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;->val$mEntryIds:[I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;->this$0:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$8;->val$mEntryIds:[I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->doCheckBlocks(Landroid/content/Context;[I)V

    return-void
.end method
