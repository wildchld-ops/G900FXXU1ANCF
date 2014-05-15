.class final Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;
.super Ljava/lang/Object;
.source "ContactDetailPhotoSetter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoClickListener"
.end annotation


# instance fields
.field private final mContactData:Lcom/android/contacts/model/Contact;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Lcom/android/contacts/model/Contact;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContactData:Lcom/android/contacts/model/Contact;

    iput-object p4, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->this$0:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mListener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    #calls: Lcom/android/contacts/detail/ContactDetailPhotoSetter;->showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    invoke-static {v0, v1, p1, v2}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->access$000(Lcom/android/contacts/detail/ContactDetailPhotoSetter;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    :cond_0
    return-void
.end method
