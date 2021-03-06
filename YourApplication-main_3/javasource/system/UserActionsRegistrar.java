package system;

import aQute.bnd.annotation.component.Component;
import aQute.bnd.annotation.component.Reference;

import com.mendix.core.actionmanagement.IActionRegistrator;

@Component(immediate = true)
public class UserActionsRegistrar
{
  @Reference
  public void registerActions(IActionRegistrator registrator)
  {
    registrator.bundleComponentLoaded();
    registrator.registerUserAction(appcloudservices.actions.GenerateRandomPassword.class);
    registrator.registerUserAction(appcloudservices.actions.LogOutUser.class);
    registrator.registerUserAction(appcloudservices.actions.StartSignOnServlet.class);
    registrator.registerUserAction(communitycommons.actions.acquireLock.class);
    registrator.registerUserAction(communitycommons.actions.Base64Decode.class);
    registrator.registerUserAction(communitycommons.actions.Base64DecodeToFile.class);
    registrator.registerUserAction(communitycommons.actions.Base64Encode.class);
    registrator.registerUserAction(communitycommons.actions.Base64EncodeFile.class);
    registrator.registerUserAction(communitycommons.actions.Clone.class);
    registrator.registerUserAction(communitycommons.actions.commitInSeparateDatabaseTransaction.class);
    registrator.registerUserAction(communitycommons.actions.commitWithoutEvents.class);
    registrator.registerUserAction(communitycommons.actions.copyAttributes.class);
    registrator.registerUserAction(communitycommons.actions.DateTimeToLong.class);
    registrator.registerUserAction(communitycommons.actions.DecryptString.class);
    registrator.registerUserAction(communitycommons.actions.DeepClone.class);
    registrator.registerUserAction(communitycommons.actions.Delay.class);
    registrator.registerUserAction(communitycommons.actions.deleteAll.class);
    registrator.registerUserAction(communitycommons.actions.DuplicateFileDocument.class);
    registrator.registerUserAction(communitycommons.actions.DuplicateImageDocument.class);
    registrator.registerUserAction(communitycommons.actions.encryptMemberIfChanged.class);
    registrator.registerUserAction(communitycommons.actions.EncryptString.class);
    registrator.registerUserAction(communitycommons.actions.EndTransaction.class);
    registrator.registerUserAction(communitycommons.actions.EscapeHTML.class);
    registrator.registerUserAction(communitycommons.actions.executeMicroflowAsUser.class);
    registrator.registerUserAction(communitycommons.actions.executeMicroflowAsUser_1.class);
    registrator.registerUserAction(communitycommons.actions.executeMicroflowAsUser_2.class);
    registrator.registerUserAction(communitycommons.actions.executeMicroflowInBackground.class);
    registrator.registerUserAction(communitycommons.actions.executeMicroflowInBatches.class);
    registrator.registerUserAction(communitycommons.actions.FileDocumentFromFile.class);
    registrator.registerUserAction(communitycommons.actions.FileFromFileDocument.class);
    registrator.registerUserAction(communitycommons.actions.GenerateHMAC_SHA256_hash.class);
    registrator.registerUserAction(communitycommons.actions.GetApplicationUrl.class);
    registrator.registerUserAction(communitycommons.actions.getCreatedByUser.class);
    registrator.registerUserAction(communitycommons.actions.GetDefaultLanguage.class);
    registrator.registerUserAction(communitycommons.actions.GetFileContentsFromResource.class);
    registrator.registerUserAction(communitycommons.actions.getFileSize.class);
    registrator.registerUserAction(communitycommons.actions.getGUID.class);
    registrator.registerUserAction(communitycommons.actions.GetIntFromDateTime.class);
    registrator.registerUserAction(communitycommons.actions.getLastChangedByUser.class);
    registrator.registerUserAction(communitycommons.actions.getLockOwner.class);
    registrator.registerUserAction(communitycommons.actions.getOriginalValueAsString.class);
    registrator.registerUserAction(communitycommons.actions.GetRuntimeVersion.class);
    registrator.registerUserAction(communitycommons.actions.getTypeAsString.class);
    registrator.registerUserAction(communitycommons.actions.Hash.class);
    registrator.registerUserAction(communitycommons.actions.HTMLEncode.class);
    registrator.registerUserAction(communitycommons.actions.HTMLToPlainText.class);
    registrator.registerUserAction(communitycommons.actions.IsInDevelopment.class);
    registrator.registerUserAction(communitycommons.actions.Log.class);
    registrator.registerUserAction(communitycommons.actions.LongToDateTime.class);
    registrator.registerUserAction(communitycommons.actions.memberHasChanged.class);
    registrator.registerUserAction(communitycommons.actions.MergeMultiplePdfs.class);
    registrator.registerUserAction(communitycommons.actions.objectHasChanged.class);
    registrator.registerUserAction(communitycommons.actions.objectIsNew.class);
    registrator.registerUserAction(communitycommons.actions.OverlayPdfDocument.class);
    registrator.registerUserAction(communitycommons.actions.ParseDateTimeWithTimezone.class);
    registrator.registerUserAction(communitycommons.actions.RandomHash.class);
    registrator.registerUserAction(communitycommons.actions.RandomString.class);
    registrator.registerUserAction(communitycommons.actions.RandomStrongPassword.class);
    registrator.registerUserAction(communitycommons.actions.recommitInBatches.class);
    registrator.registerUserAction(communitycommons.actions.refreshClass.class);
    registrator.registerUserAction(communitycommons.actions.refreshClassByObject.class);
    registrator.registerUserAction(communitycommons.actions.RegexQuote.class);
    registrator.registerUserAction(communitycommons.actions.RegexReplaceAll.class);
    registrator.registerUserAction(communitycommons.actions.RegexTest.class);
    registrator.registerUserAction(communitycommons.actions.releaseAllInactiveLocks.class);
    registrator.registerUserAction(communitycommons.actions.releaseLock.class);
    registrator.registerUserAction(communitycommons.actions.retrieveURL.class);
    registrator.registerUserAction(communitycommons.actions.RunMicroflowAsyncInQueue.class);
    registrator.registerUserAction(communitycommons.actions.SimpleLog.class);
    registrator.registerUserAction(communitycommons.actions.StartTransaction.class);
    registrator.registerUserAction(communitycommons.actions.storeURLToFileDocument.class);
    registrator.registerUserAction(communitycommons.actions.StringFromFile.class);
    registrator.registerUserAction(communitycommons.actions.StringLeftPad.class);
    registrator.registerUserAction(communitycommons.actions.StringLength.class);
    registrator.registerUserAction(communitycommons.actions.StringRightPad.class);
    registrator.registerUserAction(communitycommons.actions.StringToFile.class);
    registrator.registerUserAction(communitycommons.actions.StringTrim.class);
    registrator.registerUserAction(communitycommons.actions.SubstituteTemplate.class);
    registrator.registerUserAction(communitycommons.actions.SubstituteTemplate2.class);
    registrator.registerUserAction(communitycommons.actions.ThrowException.class);
    registrator.registerUserAction(communitycommons.actions.ThrowWebserviceException.class);
    registrator.registerUserAction(communitycommons.actions.TimeMeasureEnd.class);
    registrator.registerUserAction(communitycommons.actions.TimeMeasureStart.class);
    registrator.registerUserAction(communitycommons.actions.waitForLock.class);
    registrator.registerUserAction(communitycommons.actions.XSSSanitize.class);
    registrator.registerUserAction(communitycommons.actions.YearsBetween.class);
    registrator.registerUserAction(csvservices.actions.CsvExportInitializeAction.class);
    registrator.registerUserAction(csvservices.actions.ImportCsvData.class);
    registrator.registerUserAction(csvservices.actions.ImportCsvResourceData.class);
    registrator.registerUserAction(encryption.actions.DecryptString.class);
    registrator.registerUserAction(encryption.actions.EncryptString.class);
    registrator.registerUserAction(encryption.actions.GeneratePGPKeyRing.class);
    registrator.registerUserAction(encryption.actions.PGPDecryptDocument.class);
    registrator.registerUserAction(encryption.actions.PGPEncryptDocument.class);
    registrator.registerUserAction(encryption.actions.ValidatePrivateKeyRing.class);
    registrator.registerUserAction(hr.actions.CreateDateRangeList.class);
    registrator.registerUserAction(hr.actions.RetrieveAdvancedOql.class);
    registrator.registerUserAction(hr.actions.RetrieveAdvancedSql.class);
    registrator.registerUserAction(hr.actions.RetrieveAdvancedXpath.class);
    registrator.registerUserAction(pushnotifications.actions.ExecuteMicroflowInNewContext.class);
    registrator.registerUserAction(pushnotifications.actions.GetApplicationUrl.class);
    registrator.registerUserAction(pushnotifications.actions.PollFeedbackService.class);
    registrator.registerUserAction(pushnotifications.actions.QueueMessage.class);
    registrator.registerUserAction(pushnotifications.actions.SendAppleMessages.class);
    registrator.registerUserAction(pushnotifications.actions.SendMessage.class);
    registrator.registerUserAction(pushnotifications.actions.SendMessagesInBackground.class);
    registrator.registerUserAction(pushnotifications.actions.SendMessageToUser.class);
    registrator.registerUserAction(pushnotifications.actions.StartAPN.class);
    registrator.registerUserAction(pushnotifications.actions.StopAPN.class);
    registrator.registerUserAction(restservices.actions.addCookieToNextRequest.class);
    registrator.registerUserAction(restservices.actions.addCredentialsToNextRequest.class);
    registrator.registerUserAction(restservices.actions.addHeaderToNextRequest.class);
    registrator.registerUserAction(restservices.actions.addIfNoneMatchHeader.class);
    registrator.registerUserAction(restservices.actions.appendParamToUrl.class);
    registrator.registerUserAction(restservices.actions.appendSlashToUrl.class);
    registrator.registerUserAction(restservices.actions.copyAttributes.class);
    registrator.registerUserAction(restservices.actions.delete.class);
    registrator.registerUserAction(restservices.actions.deserializeJsonToObject.class);
    registrator.registerUserAction(restservices.actions.fetchChanges.class);
    registrator.registerUserAction(restservices.actions.followChanges.class);
    registrator.registerUserAction(restservices.actions.get.class);
    registrator.registerUserAction(restservices.actions.get2.class);
    registrator.registerUserAction(restservices.actions.getCollection.class);
    registrator.registerUserAction(restservices.actions.getCollectionAsync.class);
    registrator.registerUserAction(restservices.actions.GetNrOfIncomingConnections.class);
    registrator.registerUserAction(restservices.actions.getRequestCookies.class);
    registrator.registerUserAction(restservices.actions.getRequestHeader.class);
    registrator.registerUserAction(restservices.actions.getResponseCookies.class);
    registrator.registerUserAction(restservices.actions.getResponseHeader.class);
    registrator.registerUserAction(restservices.actions.getRestBaseUrl.class);
    registrator.registerUserAction(restservices.actions.getRestConsumeError.class);
    registrator.registerUserAction(restservices.actions.GetTrackingState.class);
    registrator.registerUserAction(restservices.actions.getWithParams.class);
    registrator.registerUserAction(restservices.actions.isUrl.class);
    registrator.registerUserAction(restservices.actions.isValidObjectKey.class);
    registrator.registerUserAction(restservices.actions.LoadService.class);
    registrator.registerUserAction(restservices.actions.post.class);
    registrator.registerUserAction(restservices.actions.post2.class);
    registrator.registerUserAction(restservices.actions.postWithResult.class);
    registrator.registerUserAction(restservices.actions.publishDelete.class);
    registrator.registerUserAction(restservices.actions.publishUpdate.class);
    registrator.registerUserAction(restservices.actions.put.class);
    registrator.registerUserAction(restservices.actions.RebuildServiceIndex.class);
    registrator.registerUserAction(restservices.actions.registerCredentials.class);
    registrator.registerUserAction(restservices.actions.registerNTCredentials.class);
    registrator.registerUserAction(restservices.actions.request.class);
    registrator.registerUserAction(restservices.actions.resetChangeTracking.class);
    registrator.registerUserAction(restservices.actions.serializeObjectToJson.class);
    registrator.registerUserAction(restservices.actions.ServiceConsistencyCheck.class);
    registrator.registerUserAction(restservices.actions.setGlobalRequestSettings.class);
    registrator.registerUserAction(restservices.actions.setResponseCookie.class);
    registrator.registerUserAction(restservices.actions.setResponseHeader.class);
    registrator.registerUserAction(restservices.actions.setResponseStatus.class);
    registrator.registerUserAction(restservices.actions.setRestBasePath.class);
    registrator.registerUserAction(restservices.actions.StartMicroflowServiceJava.class);
    registrator.registerUserAction(restservices.actions.StartPublishesServicesJava.class);
    registrator.registerUserAction(restservices.actions.throwRestServiceException.class);
    registrator.registerUserAction(restservices.actions.unfollowChanges.class);
    registrator.registerUserAction(restservices.actions.UnloadService.class);
    registrator.registerUserAction(restservices.actions.urlEncode.class);
    registrator.registerUserAction(system.actions.VerifyPassword.class);
    registrator.registerUserAction(tinysqlstudio.actions.RetrieveAdvanced.class);
    registrator.registerUserAction(tinysqlstudio.actions.RetrieveCountAdvanced.class);
    registrator.registerUserAction(tinysqlstudio.actions.UpdateAdvanced.class);
  }
}
