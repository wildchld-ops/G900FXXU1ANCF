.class Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$1;
.super Ljava/lang/Object;
.source "GroupMultipleDeletionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2$1;->this$1:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$DeleteDialogFragment$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
