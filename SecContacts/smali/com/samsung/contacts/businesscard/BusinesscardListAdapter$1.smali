.class Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$1;
.super Ljava/lang/Object;
.source "BusinesscardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

.field final synthetic val$contactUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    iput-object p2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$1;->val$contactUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mIsMultiSelectionMode:Z
    invoke-static {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$1;->val$contactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;

    #getter for: Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;->access$100(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
