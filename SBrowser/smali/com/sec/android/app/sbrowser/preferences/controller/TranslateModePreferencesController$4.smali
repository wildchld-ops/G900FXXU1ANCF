.class Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$4;
.super Ljava/lang/Object;
.source "TranslateModePreferencesController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->showLoginDialog()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$4;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$4;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->signInDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController$4;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/TranslateModePreferencesController;->signInDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
