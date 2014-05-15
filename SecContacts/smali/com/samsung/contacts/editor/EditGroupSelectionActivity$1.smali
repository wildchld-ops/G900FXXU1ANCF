.class Lcom/samsung/contacts/editor/EditGroupSelectionActivity$1;
.super Ljava/lang/Object;
.source "EditGroupSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/EditGroupSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$1;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/editor/EditGroupSelectionActivity$1;->this$0:Lcom/samsung/contacts/editor/EditGroupSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/editor/EditGroupSelectionActivity;->finish()V

    return-void
.end method
