.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;
.super Ljava/lang/Object;
.source "DeleteBookmarksPhoneUi.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->configureAndShowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const v2, 0x7f0c032f

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->toggleAllCheckbox(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    iget v3, v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mDeleteBookmarksUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/DeleteBookmarksUiController;->toggleAllCheckbox(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mSelectAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;

    iget v3, v3, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/DeleteBookmarksPhoneUi;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a033c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
