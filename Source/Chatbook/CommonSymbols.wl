(* cSpell: ignore Deflatten *)

BeginPackage[ "Wolfram`Chatbook`Common`" ];

`$$chatMessage;
`$$chatMessages;
`$$graphics;
`$absoluteCurrentSettingsCache;
`$allowConnectionDialog;
`$alwaysOpen;
`$attachments;
`$autoOpen;
`$availableServices;
`$basePrompt;
`$basePromptComponents;
`$baseStyle;
`$cachedTokenizers;
`$cellReferences;
`$cellStringBudget;
`$chatDataTag;
`$chatEvaluationID;
`$chatInputIndicator;
`$chatStartTime;
`$chatState;
`$cloudEvaluationNotebook;
`$cloudInlineReferenceButtons;
`$contextPrompt;
`$conversionRules;
`$corePersonaNames;
`$CurrentCell;
`$currentChatSettings;
`$currentSettingsCache;
`$customToolFormatter;
`$defaultChatSettings;
`$defaultChatTools;
`$defaultMaxCellStringLength;
`$defaultMaxOutputCellStringLength;
`$defaultPromptGenerators;
`$dialogInputAllowed;
`$dynamicSplitRules;
`$dynamicText;
`$enableLLMServices;
`$evaluationCell;
`$evaluationNotebook;
`$finalCell;
`$fullBasePrompt;
`$includeCellXML;
`$inDialog;
`$inEpilog;
`$initialCellStringBudget;
`$inlineChatState;
`$lastCellObject;
`$lastChatString;
`$lastMessages;
`$lastSettings;
`$lastTask;
`$leftSelectionIndicator;
`$longNameCharacters;
`$multimodalMessages;
`$nextTaskEvaluation;
`$notebookEditorEnabled;
`$preferencesScope;
`$resultCellCache;
`$rightSelectionIndicator;
`$sandboxKernelCommandLine;
`$selectedTools;
`$selectionPrompt;
`$serviceCache;
`$serviceCaller;
`$servicesLoaded;
`$statelessProgressIndicator;
`$suppressButtonAppearance;
`$timingLog;
`$tinyHashLength;
`$tokenBudget;
`$tokenBudgetLog;
`$tokenPressure;
`$toolConfiguration;
`$toolEvaluationResults;
`$toolOptions;
`$toolResultStringLength;
`$useLLMServices;
`accentIncludedCells;
`acv;
`addHandlerArguments;
`addProcessingArguments;
`allowedMultimodalRoles;
`apiKeyDialog;
`applyHandlerFunction;
`applyProcessingFunction;
`applyPromptGenerators;
`assistantMessageBox;
`assistantMessageLabel;
`associationKeyDeflatten;
`attachInlineChatInput;
`attachMenuCell;
`attachWorkspaceChatInput;
`autoAssistQ;
`boxDataQ;
`cachedTokenizer;
`cellInformation;
`cellOpenQ;
`cellPrint;
`cellPrintAfter;
`cellReference;
`cellStyles;
`channelCleanup;
`chatExcludedQ;
`chatHandlerFunctionsKeys;
`chatInputCellQ;
`chatModelQ;
`checkEvaluationCell;
`chooseDefaultModelName;
`clearMinimizedChats;
`clickToCopy;
`compressUntilViewed;
`constructMessages;
`contextBlock;
`convertUTF8;
`createDialog;
`createFETask;
`createNewInlineOutput;
`createPreferencesContent;
`currentChatSettings;
`cv;
`cvExpand;
`dialogBody;
`dialogHeader;
`dialogSubHeader;
`displayInlineChat;
`documentationSearchAPI;
`dynamicAutoFormatQ;
`dynamicSplitQ;
`escapeMarkdownString;
`evaluateInlineChat;
`evaluateWorkspaceChat;
`expandMultimodalString;
`explodeCell;
`exportDataURI;
`expressionURIKey;
`expressionURIKeyQ;
`extractBodyChunks;
`fastFileHash;
`feParentObject;
`filterChatCells;
`fixCloudCell;
`fixLineEndings;
`floatingButtonGrid;
`forceRefreshCloudPreferences;
`functionTemplateBoxes;
`getAvailableServiceNames;
`getBoxObjectFromBoxID;
`getChatGroupSettings;
`getHandlerFunctions;
`getInlineChatPrompt;
`getModelList;
`getPersonaIcon;
`getPersonaMenuIcon;
`getPrecedingDelimiter;
`getProcessingFunction;
`getProcessingFunctions;
`getServiceModelList;
`getTokenizer;
`getTokenizerName;
`getToolByName;
`getToolDisplayName;
`getToolFormattingFunction;
`getToolIcon;
`getUserNotebook;
`getWorkspacePrompt;
`graphicsQ;
`grayDialogButtonLabel;
`image2DQ;
`importDataURI;
`initFETaskWidget;
`initTools;
`inlineExpressionURIs;
`insertCodeBelow;
`insertFunctionInputBox;
`insertFunctionTemplate;
`insertModifierInputBox;
`insertModifierTemplate;
`insertPersonaInputBox;
`insertPersonaTemplate;
`insertTrailingFunctionInputBox;
`insertWLTemplate;
`llmSynthesize;
`llmSynthesizeSubmit;
`logUsage;
`makeCellStringBudget;
`makeChatCloudDockedCellContents;
`makeChatMessages;
`makeExpressionURI;
`makeFailureString;
`makeInteractiveCodeCell;
`makeModelSelector;
`makeOutputDingbat;
`makeTokenBudget;
`makeToolConfiguration;
`makeToolResponseString;
`makeWorkspaceChatDockedCell;
`menuMagnification;
`mergeChatSettings;
`mergeCodeBlocks;
`messagesToString;
`modelDisplayName;
`modelListCachedQ;
`modifierTemplateBoxes;
`moveToChatInputField;
`multimodalModelQ;
`multimodalPacletsAvailable;
`needsBasePrompt;
`nextCell;
`notebookInformation;
`notebookRead;
`o1ModelQ;
`openerView;
`openPreferencesPage;
`parentCell;
`parentNotebook;
`parseInlineReferences;
`parseSimpleToolCallParameterStrings;
`personaDisplayName;
`personaTemplateBoxes;
`preprocessSandboxString;
`rasterize;
`rasterizeBlock;
`readString;
`redDialogButtonLabel;
`reformatTextData;
`relativeTimeString;
`removeBasePrompt;
`removeCellAccents;
`removeChatMenus;
`replaceCellContext;
`resizeMenuIcon;
`resizeMultimodalImage;
`resolveAutoSettings;
`resolveFullModelSpec;
`resolveInlineReferences;
`resolveTools;
`revertMultimodalContent;
`rootEvaluationCell;
`sandboxEvaluate;
`sandboxFormatter;
`scrollOutputQ;
`selectByCurrentValue;
`selectionEvaluateCreateCell;
`sendChat;
`sendFeedback;
`serviceIcon;
`setCV;
`simpleResultQ;
`simpleToolRequestParser;
`snapshotModelQ;
`standardizeMessageKeys;
`standardizeModelData;
`stringToBoxes;
`stringTrimMiddle;
`systemCredential;
`tinyHash;
`toAPIKey;
`toCompressedBoxes;
`toImageURI;
`toModelName;
`toolAutoFormatter;
`toolData;
`toolName;
`toolOptionValue;
`toolRequestParser;
`toolSelectedQ;
`toolsEnabledQ;
`topParentCell;
`toSmallSettings;
`trackedDynamic;
`truncateString;
`unsetCV;
`updateDynamics;
`userMessageBox;
`userMessageLabel;
`usingFrontEnd;
`withBasePromptBuilder;
`withChatState;
`withChatStateAndFEObjects;
`withToolBox;
`wlTemplateBoxes;
`writeInlineChatOutputCell;
`writeReformattedCell;

EndPackage[ ];