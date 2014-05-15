.class Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi$PhUrlTextWatcher;
.super Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;
.source "LocationBarPhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhUrlTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi$PhUrlTextWatcher;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi$PhUrlTextWatcher;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBarPhoneUi;->ignoreURLBarModifcationToExtend()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/toolbar/controller/UrlTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
