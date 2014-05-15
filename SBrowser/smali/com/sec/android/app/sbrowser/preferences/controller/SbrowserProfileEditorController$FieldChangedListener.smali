.class Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$FieldChangedListener;
.super Ljava/lang/Object;
.source "SbrowserProfileEditorController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$FieldChangedListener;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$FieldChangedListener;-><init>(Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$FieldChangedListener;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->updateSaveMenuState()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController$FieldChangedListener;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/preferences/controller/SbrowserProfileEditorController;->isTextEdited:Z

    goto :goto_0
.end method
