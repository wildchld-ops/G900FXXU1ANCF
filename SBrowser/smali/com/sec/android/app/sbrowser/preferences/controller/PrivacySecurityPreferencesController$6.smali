.class Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$6;
.super Ljava/lang/Object;
.source "PrivacySecurityPreferencesController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->imideoEULA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$6;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController$6;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/PrivacySecurityPreferencesController;->imideoEulaSecondPopup()V

    return-void
.end method
