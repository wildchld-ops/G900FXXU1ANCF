.class Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;
.super Ljava/lang/Object;
.source "SbrowserProfileEditorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)Landroid/preference/PreferenceFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)Landroid/preference/PreferenceFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->mPreferenceFragment:Landroid/preference/PreferenceFragment;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->access$100(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)Landroid/preference/PreferenceFragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->closeEditor(Landroid/app/Activity;Landroid/view/View;Landroid/app/FragmentManager;)V

    return-void
.end method
