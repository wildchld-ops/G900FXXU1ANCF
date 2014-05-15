.class Lcom/samsung/contacts/group/GroupChangeOrderActivity$1;
.super Ljava/lang/Object;
.source "GroupChangeOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupChangeOrderActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupChangeOrderActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupChangeOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity$1;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupChangeOrderActivity$1;->this$0:Lcom/samsung/contacts/group/GroupChangeOrderActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupChangeOrderActivity;->finish()V

    return-void
.end method
