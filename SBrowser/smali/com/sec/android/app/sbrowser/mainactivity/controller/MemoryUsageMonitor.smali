.class public Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;
.super Ljava/lang/Object;
.source "MemoryUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BACKGROUND_THRESHOLD:I = 0x1e

.field private static final FREE_AS_MUCH_AS_POSSIBLE:I = 0x7fffffff

.field private static final LOW_MEMORY_THRESHOLD:I = 0x14

.field private static final NOTIFICATIONS:[I = null

.field private static final TAG:Ljava/lang/String; = "MemoryUsageMonitor"


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

.field private final mMaxActiveTabs:I

.field private final mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->$assertionsDisabled:Z

    new-array v0, v1, [I

    const/16 v1, 0xc

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->NOTIFICATIONS:[I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(ILcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$1;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    iput p1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mMaxActiveTabs:I

    const-string v0, "MemoryUsageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max active tabs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mMaxActiveTabs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->NOTIFICATIONS:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->registerForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->freeMemoryExceedingThreshold(I)V

    return-void
.end method

.method private freeMemory(I)V
    .locals 21

    const-string v18, "TestingLowMemoryMonitor"

    const-string v19, "freeMemorymethod executed"

    invoke-static/range {v18 .. v19}, Lorg/samsung/base/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v12

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v18

    move/from16 v0, v18

    if-eq v7, v0, :cond_0

    invoke-interface {v12, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-interface {v12, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v8

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v18

    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    invoke-interface {v8, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-interface {v8, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v2

    :goto_2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPrivateSizeKBytes()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, -0x1

    goto :goto_2

    :cond_6
    new-instance v18, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$5;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;ILjava/util/HashMap;)V

    invoke-static/range {v17 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    const/16 v16, 0x0

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v5

    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v13

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v4, :cond_7

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v5, :cond_a

    :cond_7
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, -0x1

    goto :goto_4

    :cond_9
    const/4 v5, -0x1

    goto :goto_5

    :cond_a
    if-eq v13, v9, :cond_e

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_d

    add-int/2addr v6, v10

    move/from16 v0, p1

    if-le v6, v0, :cond_d

    :cond_b
    const-string v18, "MemoryUsageMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "On free memory freedSoFarKb="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    if-ge v6, v0, :cond_10

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->purgeRenderProcessNativeMemory()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_d
    move v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_e
    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/common/Tab;->saveStateAndDestroy()V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->clearCachedNtpAndThumbnails()V

    :cond_10
    return-void
.end method

.method private freeMemoryExceedingThreshold(I)V
    .locals 20

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v12

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v17

    move/from16 v0, v17

    if-eq v7, v0, :cond_1

    invoke-interface {v12, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-interface {v12, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->getControl(Z)Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    move-result-object v8

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    invoke-interface {v8}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v17

    move/from16 v0, v17

    if-eq v7, v0, :cond_3

    invoke-interface {v8, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sbrowser/common/Tab;->isSavedAndViewDestroyed()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-interface {v8, v7}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v2

    :goto_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPrivateSizeKBytes()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, -0x1

    goto :goto_3

    :cond_7
    new-instance v17, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v11}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$4;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;ILjava/util/HashMap;)V

    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x0

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v4

    :goto_5
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v5

    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_c

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/sbrowser/common/Tab;

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getRenderProcessPid()I

    move-result v13

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getParentId()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v4, :cond_8

    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->getId()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v5, :cond_b

    :cond_8
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, -0x1

    goto :goto_5

    :cond_a
    const/4 v5, -0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->isLoading()Z

    move-result v17

    if-nez v17, :cond_8

    if-eq v13, v9, :cond_e

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_d

    add-int/2addr v6, v10

    move/from16 v0, p1

    if-le v6, v0, :cond_d

    :cond_c
    const-string v17, "MemoryUsageMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "freeMemoryExceedingThreshold  expectedToFreeKb = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " freedSoFarKb="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_e
    invoke-virtual {v14}, Lcom/sec/android/app/sbrowser/common/Tab;->saveStateAndDestroy()V

    goto :goto_7
.end method

.method private freezeTabsIfNecessary(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mMaxActiveTabs:I

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->saveStateAndDestroyTab(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getDefaultDelegate(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$2;-><init>(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V

    return-object v0
.end method

.method public static getDefaultMaxActiveTabs(Landroid/content/Context;)I
    .locals 3

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private onTabClosing(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private onTabCreating(IZ)V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->freezeTabsIfNecessary(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private onTabSelected(I)V
    .locals 3

    const-string v0, "MemoryUsageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected Tab id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mTabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->freezeTabsIfNecessary(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    sget-object v1, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->NOTIFICATIONS:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mNotificationHandler:Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->unregisterForNotifications([ILcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    return-void
.end method

.method public freeMemory()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->freeMemory(I)V

    return-void
.end method

.method public handleBackgroundThreshold(Landroid/content/Context;)V
    .locals 14

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "activity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    if-eqz v2, :cond_0

    iget-wide v10, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v10, v10

    const-wide/high16 v12, 0x4090

    div-double/2addr v10, v12

    double-to-int v8, v10

    mul-int/lit8 v10, v8, 0x1e

    int-to-double v10, v10

    const-wide/high16 v12, 0x4059

    div-double/2addr v10, v12

    double-to-int v7, v10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v10, 0x1

    new-array v5, v10, [I

    const/4 v10, 0x0

    aput v4, v5, v10

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v10

    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v11

    add-int v1, v10, v11

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->mDelegate:Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$Delegate;->getPrivateDirtyMemoryOfRenderersKBytes()I

    move-result v6

    add-int v9, v1, v6

    if-le v9, v7, :cond_0

    sub-int v10, v9, v7

    invoke-direct {p0, v10}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->freeMemoryExceedingThreshold(I)V

    goto :goto_0
.end method

.method public handleLowMemoryThreshold(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor$3;-><init>(Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public tabClosing(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->onTabClosing(I)V

    return-void
.end method

.method public tabCreating(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->onTabCreating(IZ)V

    return-void
.end method

.method public tabSelected(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/MemoryUsageMonitor;->onTabSelected(I)V

    return-void
.end method
