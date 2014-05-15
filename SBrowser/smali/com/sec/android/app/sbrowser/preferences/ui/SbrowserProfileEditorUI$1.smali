.class Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "SbrowserProfileEditorUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->mController:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;->access$000(Lcom/sec/android/app/sbrowser/preferences/ui/SbrowserProfileEditorUI;)Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->lengthLimitToast(I)V

    :cond_0
    return-object v0
.end method
