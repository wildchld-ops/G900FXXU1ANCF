.class Lcom/android/contacts/quickcontact/QuickContactActivity$8$1$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8$1$1;->this$2:Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8$1$1;->this$2:Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$8$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/ContactLoader;->upgradeToQuickContact()V

    return-void
.end method
