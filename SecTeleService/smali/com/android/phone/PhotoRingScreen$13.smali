.class Lcom/android/phone/PhotoRingScreen$13;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoRingScreen;->initPhotoRingScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$13;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$13;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2400(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$13;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhotoRingScreen;->contactName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$2402(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$13;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v1, ""

    #setter for: Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$902(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$13;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2500(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$13;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->bEmptyNumErr:Z
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2600(Lcom/android/phone/PhotoRingScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$13;->this$0:Lcom/android/phone/PhotoRingScreen;

    #getter for: Lcom/android/phone/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/PhotoRingScreen;->access$2500(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/PhotoRingScreen$13;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhotoRingScreen;->bEmptyNumErr:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhotoRingScreen;->access$2602(Lcom/android/phone/PhotoRingScreen;Z)Z

    :cond_0
    return-void
.end method
