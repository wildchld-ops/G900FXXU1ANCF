.class Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$3;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signInDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signInDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signup:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$3;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    :cond_0
    return-void
.end method
