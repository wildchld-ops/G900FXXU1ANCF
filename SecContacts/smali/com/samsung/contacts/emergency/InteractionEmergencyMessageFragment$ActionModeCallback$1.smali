.class Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "InteractionEmergencyMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$1;->this$1:Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback;

    iput-object p2, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$1;->val$mode:Landroid/view/ActionMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/InteractionEmergencyMessageFragment$ActionModeCallback$1;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
