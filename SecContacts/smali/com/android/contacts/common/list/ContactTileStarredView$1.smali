.class Lcom/android/contacts/common/list/ContactTileStarredView$1;
.super Ljava/lang/Object;
.source "ContactTileStarredView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactTileStarredView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileStarredView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactTileStarredView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileStarredView$1;->this$0:Lcom/android/contacts/common/list/ContactTileStarredView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileStarredView$1;->this$0:Lcom/android/contacts/common/list/ContactTileStarredView;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileStarredView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileStarredView$1;->this$0:Lcom/android/contacts/common/list/ContactTileStarredView;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileStarredView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
