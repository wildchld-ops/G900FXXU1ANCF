.class Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$1;
.super Ljava/lang/Object;
.source "FavoriteSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$1;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$1;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->finish()V

    return-void
.end method
