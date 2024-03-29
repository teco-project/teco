//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

/// Service error type returned by `Cme`.
public protocol TCCmeErrorType: TCServiceErrorType {
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
        case invalidParameterValue_MediaCastSourceInfosInvalid = "InvalidParameterValue.MediaCastSourceInfosInvalid"
        case invalidParameterValue_MediaReplacementInfo = "InvalidParameterValue.MediaReplacementInfo"
        case invalidParameterValue_MemberIds = "InvalidParameterValue.MemberIds"
        case invalidParameterValue_MemberNotExist = "InvalidParameterValue.MemberNotExist"
        case invalidParameterValue_Name = "InvalidParameterValue.Name"
        case invalidParameterValue_NameLenLimt = "InvalidParameterValue.NameLenLimt"
        case invalidParameterValue_NotTeamMemberError = "InvalidParameterValue.NotTeamMemberError"
        case invalidParameterValue_Offset = "InvalidParameterValue.Offset"
        case invalidParameterValue_OperationInvalid = "InvalidParameterValue.OperationInvalid"
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
        [
            FailedOperation.self,
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            OperationDenied.self,
            ResourceNotFound.self
        ]
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

    /// CAM签名/鉴权错误。
    public static var authFailure: TCCmeError {
        TCCmeError(.authFailure)
    }

    /// 操作失败。
    public static var failedOperation: TCCmeError {
        TCCmeError(.failedOperation)
    }

    /// 创建录制任务失败。
    public static var failedOperation_CreateRecordTask: TCCmeError {
        TCCmeError(.failedOperation_CreateRecordTask)
    }

    /// 云点播用户无效。
    ///
    /// 检查云点播业务状态，如未开通云点播请开通云点播，如欠费停服请充正开服。
    public static var failedOperation_InvalidVodUser: TCCmeError {
        TCCmeError(.failedOperation_InvalidVodUser)
    }

    /// 直播录制功能暂未对使用腾讯云点播存储的平台开放。
    ///
    /// 请在非腾讯云点播存储的平台使用直播录制相关功能。
    public static var failedOperation_RecordNotSupport: TCCmeError {
        TCCmeError(.failedOperation_RecordNotSupport)
    }

    /// 转推操作失败。
    public static var failedOperation_StreamConnect: TCCmeError {
        TCCmeError(.failedOperation_StreamConnect)
    }

    /// 非法操作，导播中正在工作中。
    ///
    /// 先停止导播中。
    public static var failedOperation_SwitcherOnWorking: TCCmeError {
        TCCmeError(.failedOperation_SwitcherOnWorking)
    }

    /// 内部错误。
    public static var internalError: TCCmeError {
        TCCmeError(.internalError)
    }

    /// 发起预处理任务失败。
    public static var internalError_CreateTask: TCCmeError {
        TCCmeError(.internalError_CreateTask)
    }

    /// 参数错误。
    public static var invalidParameter: TCCmeError {
        TCCmeError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCCmeError {
        TCCmeError(.invalidParameterValue)
    }

    /// 画布宽高比不合法。
    public static var invalidParameterValue_AspectRatio: TCCmeError {
        TCCmeError(.invalidParameterValue_AspectRatio)
    }

    /// 画布宽高比不合法。
    public static var invalidParameterValue_AspectRatioSet: TCCmeError {
        TCCmeError(.invalidParameterValue_AspectRatioSet)
    }

    /// 项目类别不合法。
    public static var invalidParameterValue_Category: TCCmeError {
        TCCmeError(.invalidParameterValue_Category)
    }

    /// 项目类别不合法。
    public static var invalidParameterValue_CategorySet: TCCmeError {
        TCCmeError(.invalidParameterValue_CategorySet)
    }

    /// 分类已存在。
    public static var invalidParameterValue_ClassExist: TCCmeError {
        TCCmeError(.invalidParameterValue_ClassExist)
    }

    /// 分类不为空。
    public static var invalidParameterValue_ClassNotEmpty: TCCmeError {
        TCCmeError(.invalidParameterValue_ClassNotEmpty)
    }

    /// 分类不存在。
    public static var invalidParameterValue_ClassNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_ClassNotExist)
    }

    /// 分类路径不合法。
    public static var invalidParameterValue_ClassPath: TCCmeError {
        TCCmeError(.invalidParameterValue_ClassPath)
    }

    /// 查询不到数据。
    public static var invalidParameterValue_DataNotFoundInDB: TCCmeError {
        TCCmeError(.invalidParameterValue_DataNotFoundInDB)
    }

    /// 模板 ID 无效。
    public static var invalidParameterValue_Definition: TCCmeError {
        TCCmeError(.invalidParameterValue_Definition)
    }

    /// 目标分类不存在。
    public static var invalidParameterValue_DstClassPathNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_DstClassPathNotExist)
    }

    /// 导出目标不合法。
    public static var invalidParameterValue_ExportDestination: TCCmeError {
        TCCmeError(.invalidParameterValue_ExportDestination)
    }

    /// 拓展信息不合法。
    public static var invalidParameterValue_ExtInfoInvalid: TCCmeError {
        TCCmeError(.invalidParameterValue_ExtInfoInvalid)
    }

    /// 原始媒资信息不存在。
    ///
    /// 检查填写的原始媒资信息是否有效。
    public static var invalidParameterValue_ExternalMediaInfoNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_ExternalMediaInfoNotExist)
    }

    /// 转推输入流参数非法。
    public static var invalidParameterValue_Input: TCCmeError {
        TCCmeError(.invalidParameterValue_Input)
    }

    /// 返回记录条数不合法。
    public static var invalidParameterValue_Limit: TCCmeError {
        TCCmeError(.invalidParameterValue_Limit)
    }

    /// 媒体 ID 无效。
    public static var invalidParameterValue_MaterialId: TCCmeError {
        TCCmeError(.invalidParameterValue_MaterialId)
    }

    /// 输入源信息非法。
    public static var invalidParameterValue_MediaCastSourceInfosInvalid: TCCmeError {
        TCCmeError(.invalidParameterValue_MediaCastSourceInfosInvalid)
    }

    /// 媒体替换信息无效。
    public static var invalidParameterValue_MediaReplacementInfo: TCCmeError {
        TCCmeError(.invalidParameterValue_MediaReplacementInfo)
    }

    /// 无效的成员列表。
    public static var invalidParameterValue_MemberIds: TCCmeError {
        TCCmeError(.invalidParameterValue_MemberIds)
    }

    /// 团队成员不存在。
    public static var invalidParameterValue_MemberNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_MemberNotExist)
    }

    /// 名称字段编辑错误，需使用 UTF8 编码。
    public static var invalidParameterValue_Name: TCCmeError {
        TCCmeError(.invalidParameterValue_Name)
    }

    /// 名称字段长度超长，限制 30 个中文字符。
    public static var invalidParameterValue_NameLenLimt: TCCmeError {
        TCCmeError(.invalidParameterValue_NameLenLimt)
    }

    /// 非团队成员。
    ///
    /// 检查操作者是否是团队成员。
    public static var invalidParameterValue_NotTeamMemberError: TCCmeError {
        TCCmeError(.invalidParameterValue_NotTeamMemberError)
    }

    /// 分页偏移不合法。
    public static var invalidParameterValue_Offset: TCCmeError {
        TCCmeError(.invalidParameterValue_Offset)
    }

    /// 转推操作非法。
    public static var invalidParameterValue_OperationInvalid: TCCmeError {
        TCCmeError(.invalidParameterValue_OperationInvalid)
    }

    /// 无效的操作者。
    public static var invalidParameterValue_Operator: TCCmeError {
        TCCmeError(.invalidParameterValue_Operator)
    }

    /// 归属者 ID 不合法。
    public static var invalidParameterValue_OwnerId: TCCmeError {
        TCCmeError(.invalidParameterValue_OwnerId)
    }

    /// 团队 Owner 的备注不合法。
    public static var invalidParameterValue_OwnerRemark: TCCmeError {
        TCCmeError(.invalidParameterValue_OwnerRemark)
    }

    /// 归属者类型不合法。
    public static var invalidParameterValue_OwnerType: TCCmeError {
        TCCmeError(.invalidParameterValue_OwnerType)
    }

    /// 平台参数取值错误。
    public static var invalidParameterValue_Platform: TCCmeError {
        TCCmeError(.invalidParameterValue_Platform)
    }

    /// 预处理模板 ID 无效。
    public static var invalidParameterValue_PreProcessDefinition: TCCmeError {
        TCCmeError(.invalidParameterValue_PreProcessDefinition)
    }

    /// 项目不存在。
    public static var invalidParameterValue_ProjectId: TCCmeError {
        TCCmeError(.invalidParameterValue_ProjectId)
    }

    /// 轨道素材替换类型无效或不匹配。
    ///
    /// 需要保证新替换的素材类型与模板的素材类型一致，视频只能使用视频替换，音频只能使用音频替换。
    public static var invalidParameterValue_ReplacementType: TCCmeError {
        TCCmeError(.invalidParameterValue_ReplacementType)
    }

    /// 角色不合法。
    public static var invalidParameterValue_Role: TCCmeError {
        TCCmeError(.invalidParameterValue_Role)
    }

    /// 排序方式无效。
    public static var invalidParameterValue_SortOrder: TCCmeError {
        TCCmeError(.invalidParameterValue_SortOrder)
    }

    /// 云转推信息非法。
    public static var invalidParameterValue_StreamConnect: TCCmeError {
        TCCmeError(.invalidParameterValue_StreamConnect)
    }

    /// 转推输入源信息非法。
    public static var invalidParameterValue_StreamConnectInputInvalid: TCCmeError {
        TCCmeError(.invalidParameterValue_StreamConnectInputInvalid)
    }

    /// 转推输出源信息非法。
    public static var invalidParameterValue_StreamConnectOutputInvalid: TCCmeError {
        TCCmeError(.invalidParameterValue_StreamConnectOutputInvalid)
    }

    /// 输入流参数错误。
    public static var invalidParameterValue_StreamInput: TCCmeError {
        TCCmeError(.invalidParameterValue_StreamInput)
    }

    /// 导播台项目输入信息无效。
    ///
    /// 更新导播台项目输入信息。
    public static var invalidParameterValue_SwitcherProjectInput: TCCmeError {
        TCCmeError(.invalidParameterValue_SwitcherProjectInput)
    }

    /// 任务 Id 无效。
    ///
    /// 检查任务  Id 是否存在。
    public static var invalidParameterValue_TaskId: TCCmeError {
        TCCmeError(.invalidParameterValue_TaskId)
    }

    /// 团队 ID 已经存在，不能重复创建。
    public static var invalidParameterValue_TeamId: TCCmeError {
        TCCmeError(.invalidParameterValue_TeamId)
    }

    /// 团队不存在。
    public static var invalidParameterValue_TeamNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_TeamNotExist)
    }

    /// 发布通道 ID 无效。
    public static var invalidParameterValue_ThirdyPartyPublishChannelId: TCCmeError {
        TCCmeError(.invalidParameterValue_ThirdyPartyPublishChannelId)
    }

    /// 轨道数据无效。
    public static var invalidParameterValue_TrackData: TCCmeError {
        TCCmeError(.invalidParameterValue_TrackData)
    }

    /// 轨道元素无效。
    public static var invalidParameterValue_TrackItem: TCCmeError {
        TCCmeError(.invalidParameterValue_TrackItem)
    }

    /// 视频编辑模板不存在。
    public static var invalidParameterValue_VideoEditTemplateIdNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_VideoEditTemplateIdNotExist)
    }

    /// 参数缺少 VodFile。
    public static var invalidParameterValue_VodFileId: TCCmeError {
        TCCmeError(.invalidParameterValue_VodFileId)
    }

    /// 点播文件不存在。
    public static var invalidParameterValue_VodFileNotExist: TCCmeError {
        TCCmeError(.invalidParameterValue_VodFileNotExist)
    }

    /// 绑定的点播子应用无效。
    public static var invalidParameterValue_VodSubAppid: TCCmeError {
        TCCmeError(.invalidParameterValue_VodSubAppid)
    }

    /// 平台参数非法。
    public static var invalidParameter_Platform: TCCmeError {
        TCCmeError(.invalidParameter_Platform)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCCmeError {
        TCCmeError(.limitExceeded)
    }

    /// 您已超过推流时长限制，若还需使用，请升级会员版本或购买资源包。
    ///
    /// 升级会员版本，或联系商务。
    public static var limitExceeded_BillItemLiveDispatchDuration: TCCmeError {
        TCCmeError(.limitExceeded_BillItemLiveDispatchDuration)
    }

    /// 您已达到转推并发数上限，若还需使用，请升级会员版本或购买资源包。
    ///
    /// 升级会员版本，或联系商务。
    public static var limitExceeded_BillItemLiveDispatchMaxCount: TCCmeError {
        TCCmeError(.limitExceeded_BillItemLiveDispatchMaxCount)
    }

    /// 存储空间不足，请查看会员权益，购买资源包或会员版本后继续使用。
    ///
    /// 升级会员版本，或联系商务。
    public static var limitExceeded_BillItemStorage: TCCmeError {
        TCCmeError(.limitExceeded_BillItemStorage)
    }

    /// 您已达到导出视频时长上限，若还需使用，请升级会员版本或购买资源包。
    ///
    /// 升级会员版本，或联系商务。
    public static var limitExceeded_BillItemVideoEditExportDuration: TCCmeError {
        TCCmeError(.limitExceeded_BillItemVideoEditExportDuration)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCCmeError {
        TCCmeError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCCmeError {
        TCCmeError(.operationDenied)
    }

    /// 权限不足，请检查对应操作者的权限。
    public static var operationDenied_PermissionDeny: TCCmeError {
        TCCmeError(.operationDenied_PermissionDeny)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCCmeError {
        TCCmeError(.resourceNotFound)
    }

    /// 平台不存在。
    public static var resourceNotFound_Platform: TCCmeError {
        TCCmeError(.resourceNotFound_Platform)
    }

    /// 平台不存在。
    ///
    /// 检查平台参数是否正确。
    public static var resourceNotFound_PlatformNotFound: TCCmeError {
        TCCmeError(.resourceNotFound_PlatformNotFound)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCCmeError {
        TCCmeError(.unauthorizedOperation)
    }

    public func asCmeError() -> TCCmeError {
        return self
    }
}
