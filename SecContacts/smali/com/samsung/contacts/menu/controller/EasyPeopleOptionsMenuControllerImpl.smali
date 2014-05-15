.class public Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;
.super Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;
.source "EasyPeopleOptionsMenuControllerImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuControllerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected configureCommon(Landroid/view/Menu;II)V
    .locals 20

    const v15, 0x7f080322

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v15, 0x7f08033e

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v15, 0x7f08031d

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v15, 0x7f080352

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const v15, 0x7f08031e

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const v15, 0x7f08031f

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f080340

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v15, 0x7f080304

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v15, 0x7f080348

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v15, 0x7f08034d

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v15, 0x7f080356

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    sget v15, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    move/from16 v0, p2

    if-ne v0, v15, :cond_6

    const/4 v15, 0x1

    invoke-interface {v2, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v15, v15, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v15}, Lcom/android/dialer/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x1

    invoke-interface {v12, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    instance-of v15, v15, Lcom/samsung/contacts/activities/EasyPeopleActivity;

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/samsung/contacts/activities/EasyPeopleActivity;

    iget-object v15, v15, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v15}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v15, 0x1

    :goto_0
    invoke-interface {v10, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v7, :cond_2

    const/4 v15, 0x1

    :goto_1
    invoke-interface {v1, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v15, "ATT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getOpStyleVariation()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e0205

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_2
    if-nez v7, :cond_4

    const/4 v15, 0x1

    :goto_3
    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v7, :cond_5

    const/4 v15, 0x1

    :goto_4
    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_5
    return-void

    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e0205

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    goto :goto_4

    :cond_6
    sget v15, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    move/from16 v0, p2

    if-ne v0, v15, :cond_a

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    instance-of v15, v15, Lcom/samsung/contacts/activities/EasyPeopleActivity;

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/samsung/contacts/activities/EasyPeopleActivity;

    invoke-virtual {v15}, Lcom/samsung/contacts/activities/EasyPeopleActivity;->isCallLogListEmpty()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_7
    const/4 v15, 0x1

    invoke-interface {v9, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x1

    :goto_6
    invoke-interface {v9, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v15, 0x1

    invoke-interface {v8, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, 0x1

    :goto_7
    invoke-interface {v8, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v15, 0x1

    invoke-interface {v2, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    goto :goto_7

    :cond_a
    sget v15, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v15}, Lcom/android/contacts/activities/PeopleActivity;->isContactListEmpty()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v15, 0x1

    invoke-interface {v4, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, 0x1

    :goto_8
    invoke-interface {v3, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v15, 0x1

    invoke-interface {v12, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v15, 0x1

    invoke-interface {v11, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_b
    const/4 v15, 0x0

    goto :goto_8
.end method

.method protected configureFlagship(Landroid/view/Menu;II)V
    .locals 4

    const v3, 0x7f080329

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f080341

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v1, 0x0

    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/controller/EasyPeopleOptionsMenuControllerImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v3, v3, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v3}, Lcom/android/dialer/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    sget v3, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne p2, v3, :cond_1

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->shouldShowHelpMenu(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
