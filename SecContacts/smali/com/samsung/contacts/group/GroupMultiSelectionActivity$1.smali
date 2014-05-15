.class Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;
.super Ljava/lang/Object;
.source "GroupMultiSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->adjustActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupMultiSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultiSelectionActivity$1;->this$0:Lcom/samsung/contacts/group/GroupMultiSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMultiSelectionActivity;->finish()V

    return-void
.end method
