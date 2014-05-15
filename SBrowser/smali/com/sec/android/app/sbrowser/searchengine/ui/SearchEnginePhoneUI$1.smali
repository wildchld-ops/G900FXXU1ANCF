.class Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$1;
.super Landroid/widget/ListPopupWindow;
.source "SearchEnginePhoneUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->createUi(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->mUiController:Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->access$000(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;)Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/searchengine/controller/SearchEngineUIController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$1;->this$0:Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;

    #getter for: Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;->access$100(Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/searchengine/ui/SearchEnginePhoneUI$1;->setInputMethodMode(I)V

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method
