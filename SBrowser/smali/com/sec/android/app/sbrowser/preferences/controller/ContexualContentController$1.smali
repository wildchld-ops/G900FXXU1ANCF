.class Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController$1;
.super Ljava/lang/Object;
.source "ContexualContentController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->sharedprefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "contexual_contents"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->mOverLayPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->mOverLayPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->sharedprefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->access$000(Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "overlay_pref"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->mOverLayPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/ContexualContentController;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
