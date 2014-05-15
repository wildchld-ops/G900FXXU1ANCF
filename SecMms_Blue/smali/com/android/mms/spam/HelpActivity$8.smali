.class Lcom/android/mms/spam/HelpActivity$8;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/HelpActivity;->openDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/HelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$8;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity$8;->this$0:Lcom/android/mms/spam/HelpActivity;

    #calls: Lcom/android/mms/spam/HelpActivity;->updateRuleStore()V
    invoke-static {v0}, Lcom/android/mms/spam/HelpActivity;->access$200(Lcom/android/mms/spam/HelpActivity;)V

    return-void
.end method
