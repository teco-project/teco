//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

/// Service error type returned by `Cme`.
public protocol TCCmeErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCCmeError``.
    ///
    /// - Returns: ``TCCmeError`` that holds the same error code and context.
    func asCmeError() -> TCCmeError
}

public struct TCCmeError: TCCmeErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_CreateRecordTask = "FailedOperation.CreateRecordTask"
        case failedOperation_InvalidVodUser = "FailedOperation.InvalidVodUser"
        case failedOperation_RecordNotSupport = "FailedOperation.RecordNotSupport"
        case failedOperation_StreamConnect = "FailedOperation.StreamConnect"
        case failedOperation_SwitcherOnWorking = "FailedOperation.SwitcherOnWorking"
        case internalError = "InternalError"
        case internalError_CreateTask = "InternalError.CreateTask"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AspectRatio = "InvalidParameterValue.AspectRatio"
        case invalidParameterValue_AspectRatioSet = "InvalidParameterValue.AspectRatioSet"
        case invalidParameterValue_Category = "InvalidParameterValue.Category"
        case invalidParameterValue_CategorySet = "InvalidParameterValue.CategorySet"
        case invalidParameterValue_ClassExist = "InvalidParameterValue.ClassExist"
        case invalidParameterValue_ClassNotEmpty = "InvalidParameterValue.ClassNotEmpty"
        case invalidParameterValue_ClassNotExist = "InvalidParameterValue.ClassNotExist"
        case invalidParameterValue_ClassPath = "InvalidParameterValue.ClassPath"
        case invalidParameterValue_DataNotFoundInDB = "InvalidParameterValue.DataNotFoundInDB"
        case invalidParameterValue_Definition = "InvalidParameterValue.Definition"
        case invalidParameterValue_DstClassPathNotExist = "InvalidParameterValue.DstClassPathNotExist"
        case invalidParameterValue_ExportDestination = "InvalidParameterValue.ExportDestination"
        case invalidParameterValue_ExtInfoInvalid = "InvalidParameterValue.ExtInfoInvalid"
        case invalidParameterValue_ExternalMediaInfoNotExist = "InvalidParameterValue.ExternalMediaInfoNotExist"
        case invalidParameterValue_Input = "InvalidParameterValue.Input"
        case invalidParameterValue_Limit = "InvalidParameterValue.Limit"
        case invalidParameterValue_MaterialId = "InvalidParameterValue.MaterialId"
        case invalidParameterValue_MediaReplacementInfo = "InvalidParameterValue.MediaReplacementInfo"
        case invalidParameterValue_MemberIds = "InvalidParameterValue.MemberIds"
        case invalidParameterValue_MemberNotExist = "InvalidParameterValue.MemberNotExist"
        case invalidParameterValue_Name = "InvalidParameterValue.Name"
        case invalidParameterValue_NameLenLimt = "InvalidParameterValue.NameLenLimt"
        case invalidParameterValue_NotTeamMemberError = "InvalidParameterValue.NotTeamMemberError"
        case invalidParameterValue_Offset = "InvalidParameterValue.Offset"
        case invalidParameterValue_Operator = "InvalidParameterValue.Operator"
        case invalidParameterValue_OwnerId = "InvalidParameterValue.OwnerId"
        case invalidParameterValue_OwnerRemark = "InvalidParameterValue.OwnerRemark"
        case invalidParameterValue_OwnerType = "InvalidParameterValue.OwnerType"
        case invalidParameterValue_Platform = "InvalidParameterValue.Platform"
        case invalidParameterValue_PreProcessDefinition = "InvalidParameterValue.PreProcessDefinition"
        case invalidParameterValue_ProjectId = "InvalidParameterValue.ProjectId"
        case invalidParameterValue_ReplacementType = "InvalidParameterValue.ReplacementType"
        case invalidParameterValue_Role = "InvalidParameterValue.Role"
        case invalidParameterValue_SortOrder = "InvalidParameterValue.SortOrder"
        case invalidParameterValue_StreamConnect = "InvalidParameterValue.StreamConnect"
        case invalidParameterValue_StreamConnectInputInvalid = "InvalidParameterValue.StreamConnectInputInvalid"
        case invalidParameterValue_StreamConnectOutputInvalid = "InvalidParameterValue.StreamConnectOutputInvalid"
        case invalidParameterValue_StreamInput = "InvalidParameterValue.StreamInput"
        case invalidParameterValue_SwitcherProjectInput = "InvalidParameterValue.SwitcherProjectInput"
        case invalidParameterValue_TaskId = "InvalidParameterValue.TaskId"
        case invalidParameterValue_TeamId = "InvalidParameterValue.TeamId"
        case invalidParameterValue_TeamNotExist = "InvalidParameterValue.TeamNotExist"
        case invalidParameterValue_ThirdyPartyPublishChannelId = "InvalidParameterValue.ThirdyPartyPublishChannelId"
        case invalidParameterValue_TrackData = "InvalidParameterValue.TrackData"
        case invalidParameterValue_TrackItem = "InvalidParameterValue.TrackItem"
        case invalidParameterValue_VideoEditTemplateIdNotExist = "InvalidParameterValue.VideoEditTemplateIdNotExist"
        case invalidParameterValue_VodFileId = "InvalidParameterValue.VodFileId"
        case invalidParameterValue_VodFileNotExist = "InvalidParameterValue.VodFileNotExist"
        case invalidParameterValue_VodSubAppid = "InvalidParameterValue.VodSubAppid"
        case invalidParameter_Platform = "InvalidParameter.Platform"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_BillItemLiveDispatchDuration = "LimitExceeded.BillItemLiveDispatchDuration"
        case limitExceeded_BillItemLiveDispatchMaxCount = "LimitExceeded.BillItemLiveDispatchMaxCount"
        case limitExceeded_BillItemStorage = "LimitExceeded.BillItemStorage"
        case limitExceeded_BillItemVideoEditExportDuration = "LimitExceeded.BillItemVideoEditExportDuration"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case operationDenied_PermissionDeny = "OperationDenied.PermissionDeny"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_Platform = "ResourceNotFound.Platform"
        case resourceNotFound_PlatformNotFound = "ResourceNotFound.PlatformNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
    }

    /// Error domains affliated to ``TCCmeError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, OperationDenied.self, ResourceNotFound.self]
    }

    private let error: Code

    public let context: TCErrorContext?

    public var errorCode: String {
        self.error.rawValue
    }

    /// Initializer used by ``TCClient`` to match an error of this type.
    public init?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }

    /// CAM??????/???????????????
    public static var authFailure: TCCmeError {
        TCCmeError(.authFailure)
    }

    /// ???????????????
    public static var failedOperation: TCCmeError {
        TCCmeError(.failedOperation)
    }

    /// ???????????????????????????
    public static var failedOperation_CreateRecordTask: TCCmeError {
        TCCmeError(.failedOperation_CreateRecordTask)
    }

    /// ????????????????????????
    ///
    /// ?????????????????????????????????????????????????????????????????????????????????????????????????????????
    public static var failedOperation_InvalidVodUser: TCCmeError {
        TCCmeError(.failedOperation_InvalidVodUser)
    }

    /// ????????????????????????????????????????????????????????????????????????
    ///
    /// ????????????????????????????????????????????????????????????????????????
    public static var failedOperation_RecordNotSupport: TCCmeError {
        TCCmeError(.failedOperation_RecordNotSupport)
    }

    /// ?????????????????????
    public static var failedOperation_StreamConnect: TCCmeError {
        TCCmeError(.failedOperation_StreamConnect)
    }

    /// ??????????????????????????????????????????
    ///
    /// ?????????????????????
    public static var failedOperation_SwitcherOnWorking: TCCmeError {
        TCCmeError(.failedOperation_SwitcherOnWorking)
    }

    /// ???????????????
    public static var internalError: TCCmeError {
        TCCmeError(.internalError)
    }

    /// ??????????????????????????????
    public static var internalError_CreateTask: TCCmeError {
        TCCmeError(.internalError_CreateTask)
    }

    /// ???????????????
    public static var invalidParameter: TCCmeError {
        TCCmeError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCCmeError {
        TCCmeError(.invalidParameterValue)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_AspectRatio: TCCmeError {
        TCCmeError(.invalidParameterValue_AspectRatio)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_AspectRatioSet: TCCmeError {
        TCCmeError(.invalidParameterValue_AspectRatioSet)
    }

    /// ????????????????????????
    public static var invalidParameterValue_Category: TCCmeError {
        TCCmeError(.invalidParameterValue_Category)
    }

    /// ????????????????????????
    public static var invalidParameterValue_CategorySet: TCCmeError {
        TCCmeError(.invalidParameterValue_CategorySet)
    }

    /// ??????????????????
    public static var invalidParameterValue_ClassExist: TCCmeError {
        TCCmeError(.invalidParameterValue_ClassExist)
    }

    /// ??????????????????
    public static var invalidParameterValue_ClassNotEmpty: TCCmeError {
        TCCmeError(.invalidParameterValue_ClassNotEmpty)
    }

    /// ??????????????????
    public static var invalidParameterValue_ClassNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_ClassNotExist)
    }

    /// ????????????????????????
    public static var invalidParameterValue_ClassPath: TCCmeError {
        TCCmeError(.invalidParameterValue_ClassPath)
    }

    /// ?????????????????????
    public static var invalidParameterValue_DataNotFoundInDB: TCCmeError {
        TCCmeError(.invalidParameterValue_DataNotFoundInDB)
    }

    /// ?????? ID ?????????
    public static var invalidParameterValue_Definition: TCCmeError {
        TCCmeError(.invalidParameterValue_Definition)
    }

    /// ????????????????????????
    public static var invalidParameterValue_DstClassPathNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_DstClassPathNotExist)
    }

    /// ????????????????????????
    public static var invalidParameterValue_ExportDestination: TCCmeError {
        TCCmeError(.invalidParameterValue_ExportDestination)
    }

    public static var invalidParameterValue_ExtInfoInvalid: TCCmeError {
        TCCmeError(.invalidParameterValue_ExtInfoInvalid)
    }

    /// ??????????????????????????????
    ///
    /// ????????????????????????????????????????????????
    public static var invalidParameterValue_ExternalMediaInfoNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_ExternalMediaInfoNotExist)
    }

    /// ??????????????????????????????
    public static var invalidParameterValue_Input: TCCmeError {
        TCCmeError(.invalidParameterValue_Input)
    }

    /// ??????????????????????????????
    public static var invalidParameterValue_Limit: TCCmeError {
        TCCmeError(.invalidParameterValue_Limit)
    }

    /// ?????? ID ?????????
    public static var invalidParameterValue_MaterialId: TCCmeError {
        TCCmeError(.invalidParameterValue_MaterialId)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_MediaReplacementInfo: TCCmeError {
        TCCmeError(.invalidParameterValue_MediaReplacementInfo)
    }

    /// ????????????????????????
    public static var invalidParameterValue_MemberIds: TCCmeError {
        TCCmeError(.invalidParameterValue_MemberIds)
    }

    /// ????????????????????????
    public static var invalidParameterValue_MemberNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_MemberNotExist)
    }

    /// ???????????????????????????????????? UTF8 ?????????
    public static var invalidParameterValue_Name: TCCmeError {
        TCCmeError(.invalidParameterValue_Name)
    }

    /// ????????????????????????????????? 30 ??????????????????
    public static var invalidParameterValue_NameLenLimt: TCCmeError {
        TCCmeError(.invalidParameterValue_NameLenLimt)
    }

    /// ??????????????????
    ///
    /// ???????????????????????????????????????
    public static var invalidParameterValue_NotTeamMemberError: TCCmeError {
        TCCmeError(.invalidParameterValue_NotTeamMemberError)
    }

    /// ????????????????????????
    public static var invalidParameterValue_Offset: TCCmeError {
        TCCmeError(.invalidParameterValue_Offset)
    }

    /// ?????????????????????
    public static var invalidParameterValue_Operator: TCCmeError {
        TCCmeError(.invalidParameterValue_Operator)
    }

    /// ????????? ID ????????????
    public static var invalidParameterValue_OwnerId: TCCmeError {
        TCCmeError(.invalidParameterValue_OwnerId)
    }

    /// ?????? Owner ?????????????????????
    public static var invalidParameterValue_OwnerRemark: TCCmeError {
        TCCmeError(.invalidParameterValue_OwnerRemark)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_OwnerType: TCCmeError {
        TCCmeError(.invalidParameterValue_OwnerType)
    }

    /// ???????????????????????????
    public static var invalidParameterValue_Platform: TCCmeError {
        TCCmeError(.invalidParameterValue_Platform)
    }

    /// ??????????????? ID ?????????
    public static var invalidParameterValue_PreProcessDefinition: TCCmeError {
        TCCmeError(.invalidParameterValue_PreProcessDefinition)
    }

    /// ??????????????????
    public static var invalidParameterValue_ProjectId: TCCmeError {
        TCCmeError(.invalidParameterValue_ProjectId)
    }

    /// ?????????????????????????????????????????????
    ///
    /// ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
    public static var invalidParameterValue_ReplacementType: TCCmeError {
        TCCmeError(.invalidParameterValue_ReplacementType)
    }

    /// ??????????????????
    public static var invalidParameterValue_Role: TCCmeError {
        TCCmeError(.invalidParameterValue_Role)
    }

    /// ?????????????????????
    public static var invalidParameterValue_SortOrder: TCCmeError {
        TCCmeError(.invalidParameterValue_SortOrder)
    }

    /// ????????????????????????
    public static var invalidParameterValue_StreamConnect: TCCmeError {
        TCCmeError(.invalidParameterValue_StreamConnect)
    }

    /// ??????????????????????????????
    public static var invalidParameterValue_StreamConnectInputInvalid: TCCmeError {
        TCCmeError(.invalidParameterValue_StreamConnectInputInvalid)
    }

    /// ??????????????????????????????
    public static var invalidParameterValue_StreamConnectOutputInvalid: TCCmeError {
        TCCmeError(.invalidParameterValue_StreamConnectOutputInvalid)
    }

    /// ????????????????????????
    public static var invalidParameterValue_StreamInput: TCCmeError {
        TCCmeError(.invalidParameterValue_StreamInput)
    }

    /// ????????????????????????????????????
    ///
    /// ????????????????????????????????????
    public static var invalidParameterValue_SwitcherProjectInput: TCCmeError {
        TCCmeError(.invalidParameterValue_SwitcherProjectInput)
    }

    /// ?????? Id ?????????
    ///
    /// ????????????  Id ???????????????
    public static var invalidParameterValue_TaskId: TCCmeError {
        TCCmeError(.invalidParameterValue_TaskId)
    }

    /// ?????? ID ????????????????????????????????????
    public static var invalidParameterValue_TeamId: TCCmeError {
        TCCmeError(.invalidParameterValue_TeamId)
    }

    /// ??????????????????
    public static var invalidParameterValue_TeamNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_TeamNotExist)
    }

    /// ???????????? ID ?????????
    public static var invalidParameterValue_ThirdyPartyPublishChannelId: TCCmeError {
        TCCmeError(.invalidParameterValue_ThirdyPartyPublishChannelId)
    }

    /// ?????????????????????
    public static var invalidParameterValue_TrackData: TCCmeError {
        TCCmeError(.invalidParameterValue_TrackData)
    }

    /// ?????????????????????
    public static var invalidParameterValue_TrackItem: TCCmeError {
        TCCmeError(.invalidParameterValue_TrackItem)
    }

    /// ??????????????????????????????
    public static var invalidParameterValue_VideoEditTemplateIdNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_VideoEditTemplateIdNotExist)
    }

    /// ???????????? VodFile???
    public static var invalidParameterValue_VodFileId: TCCmeError {
        TCCmeError(.invalidParameterValue_VodFileId)
    }

    /// ????????????????????????
    public static var invalidParameterValue_VodFileNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_VodFileNotExist)
    }

    /// ?????????????????????????????????
    public static var invalidParameterValue_VodSubAppid: TCCmeError {
        TCCmeError(.invalidParameterValue_VodSubAppid)
    }

    /// ?????????????????????
    public static var invalidParameter_Platform: TCCmeError {
        TCCmeError(.invalidParameter_Platform)
    }

    /// ?????????????????????
    public static var limitExceeded: TCCmeError {
        TCCmeError(.limitExceeded)
    }

    /// ?????????????????????????????????????????????????????????????????????????????????????????????
    ///
    /// ???????????????????????????????????????
    public static var limitExceeded_BillItemLiveDispatchDuration: TCCmeError {
        TCCmeError(.limitExceeded_BillItemLiveDispatchDuration)
    }

    /// ????????????????????????????????????????????????????????????????????????????????????????????????
    ///
    /// ???????????????????????????????????????
    public static var limitExceeded_BillItemLiveDispatchMaxCount: TCCmeError {
        TCCmeError(.limitExceeded_BillItemLiveDispatchMaxCount)
    }

    /// ?????????????????????????????????????????????????????????????????????????????????????????????
    ///
    /// ???????????????????????????????????????
    public static var limitExceeded_BillItemStorage: TCCmeError {
        TCCmeError(.limitExceeded_BillItemStorage)
    }

    /// ???????????????????????????????????????????????????????????????????????????????????????????????????
    ///
    /// ???????????????????????????????????????
    public static var limitExceeded_BillItemVideoEditExportDuration: TCCmeError {
        TCCmeError(.limitExceeded_BillItemVideoEditExportDuration)
    }

    /// ?????????????????????
    public static var missingParameter: TCCmeError {
        TCCmeError(.missingParameter)
    }

    /// ??????????????????
    public static var operationDenied: TCCmeError {
        TCCmeError(.operationDenied)
    }

    /// ???????????????????????????????????????????????????
    public static var operationDenied_PermissionDeny: TCCmeError {
        TCCmeError(.operationDenied_PermissionDeny)
    }

    /// ??????????????????
    public static var resourceNotFound: TCCmeError {
        TCCmeError(.resourceNotFound)
    }

    /// ??????????????????
    public static var resourceNotFound_Platform: TCCmeError {
        TCCmeError(.resourceNotFound_Platform)
    }

    /// ??????????????????
    ///
    /// ?????????????????????????????????
    public static var resourceNotFound_PlatformNotFound: TCCmeError {
        TCCmeError(.resourceNotFound_PlatformNotFound)
    }

    /// ??????????????????
    public static var unauthorizedOperation: TCCmeError {
        TCCmeError(.unauthorizedOperation)
    }

    public func asCmeError() -> TCCmeError {
        return self
    }
}
