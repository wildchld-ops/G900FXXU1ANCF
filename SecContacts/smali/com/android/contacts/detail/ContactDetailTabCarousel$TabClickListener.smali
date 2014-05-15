.class Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;
.super Ljava/lang/Object;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailTabCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTab:I

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;->mTab:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    #getter for: Lcom/android/contacts/detail/ContactDetailTabCarousel;->mListener:Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->access$200(Lcom/android/contacts/detail/ContactDetailTabCarousel;)Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$TabClickListener;->mTab:I

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;->onTabSelected(I)V

    return-void
.end method
