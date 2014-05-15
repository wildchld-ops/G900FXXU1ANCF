.class Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$1;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

.field final synthetic val$headerviewholder:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;Landroid/content/SharedPreferences;Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$1;->this$1:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$1;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$1;->val$headerviewholder:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "webpagemagnifier"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$1;->val$headerviewholder:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$HeaderAdapter$HeaderViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
