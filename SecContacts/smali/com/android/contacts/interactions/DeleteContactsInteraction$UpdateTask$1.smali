.class Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$1;
.super Landroid/app/ProgressDialog;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask$1;->this$0:Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
