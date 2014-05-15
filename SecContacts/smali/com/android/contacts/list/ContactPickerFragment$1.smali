.class Lcom/android/contacts/list/ContactPickerFragment$1;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactPickerFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment$1;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsEditEnter:Lcom/samsung/contacts/ContactsPerformance;

    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment$1;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    #getter for: Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/ContactPickerFragment;->access$000(Lcom/android/contacts/list/ContactPickerFragment;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "editorEnter"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/contacts/ContactsPerformance;->startTimeAndMemoryStamp(Landroid/content/Context;ZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$1;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactPickerFragment;->createNewContact()V

    return-void
.end method
