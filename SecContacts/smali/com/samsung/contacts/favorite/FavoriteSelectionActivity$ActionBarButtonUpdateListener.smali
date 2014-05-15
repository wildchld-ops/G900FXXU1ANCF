.class final Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;
.super Ljava/lang/Object;
.source "FavoriteSelectionActivity.java"

# interfaces
.implements Lcom/samsung/contacts/favorite/FavoriteSelectionFragment$onFavoritesUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionBarButtonUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;-><init>(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->setButtonClickable(Z)V

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;

    #setter for: Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->access$102(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;

    #setter for: Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->mTotalCount:I
    invoke-static {v0, p2}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->access$202(Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;I)I

    iget-object v0, p0, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity$ActionBarButtonUpdateListener;->this$0:Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/favorite/FavoriteSelectionActivity;->updateSelectionMenu()V

    return-void
.end method
