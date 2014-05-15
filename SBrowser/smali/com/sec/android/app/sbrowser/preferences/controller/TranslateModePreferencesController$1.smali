.class Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$1;
.super Ljava/lang/Object;
.source "TranslateModePreferencesController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->isSamsungAccountLoggedInOrNot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/TranslateModePreferencesModel;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;)Lcom/sec/android/app/sbrowser/preferences/model/TranslateModePreferencesModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/preferences/model/TranslateModePreferencesModel;->getExtractModeCheck()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->showLoginDialog()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->mModel:Lcom/sec/android/app/sbrowser/preferences/model/TranslateModePreferencesModel;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;)Lcom/sec/android/app/sbrowser/preferences/model/TranslateModePreferencesModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/preferences/model/TranslateModePreferencesModel;->setExtractModeCheck(Z)V

    goto :goto_0
.end method
