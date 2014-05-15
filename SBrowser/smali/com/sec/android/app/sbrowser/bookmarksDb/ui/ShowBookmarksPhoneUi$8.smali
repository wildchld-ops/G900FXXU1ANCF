.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$8;
.super Ljava/lang/Object;
.source "ShowBookmarksPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->configureAndShowView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mSelAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->handleSelectAll(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi$8;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->mSelAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;->access$700(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/ShowBookmarksPhoneUi;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
