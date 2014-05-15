.class Lcom/android/contacts/common/list/CustomContactListFilterActivity$6;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/CustomContactListFilterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$6;->this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$6;->this$0:Lcom/android/contacts/common/list/CustomContactListFilterActivity;

    #calls: Lcom/android/contacts/common/list/CustomContactListFilterActivity;->doSaveAction()V
    invoke-static {v0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity;->access$700(Lcom/android/contacts/common/list/CustomContactListFilterActivity;)V

    return-void
.end method
