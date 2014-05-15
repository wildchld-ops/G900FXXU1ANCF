.class Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$1;
.super Ljava/lang/Object;
.source "BusinesscardListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$1;->this$1:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback$1;->this$1:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->stopActionMode()V

    return-void
.end method
