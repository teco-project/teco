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

/// Service error type returned by `Trtc`.
public protocol TCTrtcErrorType: TCServiceErrorType {
    /// Get the service error as ``TCTrtcError``.
    ///
    /// - Returns: ``TCTrtcError`` that holds the same error code and context.
    func asTrtcError() -> TCTrtcError
}

public struct TCTrtcError: TCTrtcErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnRealNameAuthenticated = "AuthFailure.UnRealNameAuthenticated"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case authFailure_UnsupportedOperation = "AuthFailure.UnsupportedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_CRUnsupportMethod = "FailedOperation.CRUnsupportMethod"
        case failedOperation_MixSessionNotExist = "FailedOperation.MixSessionNotExist"
        case failedOperation_RequestRejection = "FailedOperation.RequestRejection"
        case failedOperation_RestrictedConcurrency = "FailedOperation.RestrictedConcurrency"
        case failedOperation_RoomNotExist = "FailedOperation.RoomNotExist"
        case failedOperation_SdkAppIdNotExist = "FailedOperation.SdkAppIdNotExist"
        case internalError = "InternalError"
        case internalError_CRInternalError = "InternalError.CRInternalError"
        case internalError_DBError = "InternalError.DBError"
        case internalError_EsQueryError = "InternalError.EsQueryError"
        case internalError_GetRoomCacheIpError = "InternalError.GetRoomCacheIpError"
        case internalError_GetRoomFromCacheError = "InternalError.GetRoomFromCacheError"
        case internalError_HttpParaseFalied = "InternalError.HttpParaseFalied"
        case internalError_InterfaceErr = "InternalError.InterfaceErr"
        case internalError_InternalError = "InternalError.InternalError"
        case internalError_MethodErr = "InternalError.MethodErr"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_RoomId = "InvalidParameterValue.RoomId"
        case invalidParameter_AppId = "InvalidParameter.AppId"
        case invalidParameter_AudioEncodeParams = "InvalidParameter.AudioEncodeParams"
        case invalidParameter_BackgroundImageUrl = "InvalidParameter.BackgroundImageUrl"
        case invalidParameter_BodyParamsError = "InvalidParameter.BodyParamsError"
        case invalidParameter_CheckContentFailed = "InvalidParameter.CheckContentFailed"
        case invalidParameter_CheckSuffixFailed = "InvalidParameter.CheckSuffixFailed"
        case invalidParameter_EncodeParams = "InvalidParameter.EncodeParams"
        case invalidParameter_EndTs = "InvalidParameter.EndTs"
        case invalidParameter_MainVideoRightAlign = "InvalidParameter.MainVideoRightAlign"
        case invalidParameter_MainVideoStreamType = "InvalidParameter.MainVideoStreamType"
        case invalidParameter_OutOfRange = "InvalidParameter.OutOfRange"
        case invalidParameter_OutputParams = "InvalidParameter.OutputParams"
        case invalidParameter_PageNumber = "InvalidParameter.PageNumber"
        case invalidParameter_PageSize = "InvalidParameter.PageSize"
        case invalidParameter_PageSizeOversize = "InvalidParameter.PageSizeOversize"
        case invalidParameter_PictureNotFound = "InvalidParameter.PictureNotFound"
        case invalidParameter_PresetLayoutConfig = "InvalidParameter.PresetLayoutConfig"
        case invalidParameter_PublishCdnUrls = "InvalidParameter.PublishCdnUrls"
        case invalidParameter_PureAudioStream = "InvalidParameter.PureAudioStream"
        case invalidParameter_QueryScaleOversize = "InvalidParameter.QueryScaleOversize"
        case invalidParameter_RecordAudioOnly = "InvalidParameter.RecordAudioOnly"
        case invalidParameter_RecordId = "InvalidParameter.RecordId"
        case invalidParameter_RoomId = "InvalidParameter.RoomId"
        case invalidParameter_SdkAppId = "InvalidParameter.SdkAppId"
        case invalidParameter_SdkAppid = "InvalidParameter.SdkAppid"
        case invalidParameter_SmallVideoLayoutParams = "InvalidParameter.SmallVideoLayoutParams"
        case invalidParameter_SmallVideoStreamType = "InvalidParameter.SmallVideoStreamType"
        case invalidParameter_StartTimeExpire = "InvalidParameter.StartTimeExpire"
        case invalidParameter_StartTimeOversize = "InvalidParameter.StartTimeOversize"
        case invalidParameter_StartTs = "InvalidParameter.StartTs"
        case invalidParameter_StartTsOversize = "InvalidParameter.StartTsOversize"
        case invalidParameter_StrRoomId = "InvalidParameter.StrRoomId"
        case invalidParameter_StreamId = "InvalidParameter.StreamId"
        case invalidParameter_UrlParamsError = "InvalidParameter.UrlParamsError"
        case invalidParameter_UserId = "InvalidParameter.UserId"
        case invalidParameter_UserIds = "InvalidParameter.UserIds"
        case invalidParameter_UserIdsMorethanSix = "InvalidParameter.UserIdsMorethanSix"
        case invalidParameter_VideoResolution = "InvalidParameter.VideoResolution"
        case missingParameter = "MissingParameter"
        case missingParameter_AccessKey = "MissingParameter.AccessKey"
        case missingParameter_AppId = "MissingParameter.AppId"
        case missingParameter_AudioEncodeParams = "MissingParameter.AudioEncodeParams"
        case missingParameter_BizId = "MissingParameter.BizId"
        case missingParameter_Bucket = "MissingParameter.Bucket"
        case missingParameter_CloudStorage = "MissingParameter.CloudStorage"
        case missingParameter_CommId = "MissingParameter.CommId"
        case missingParameter_CommIdOrSdkAppId = "MissingParameter.CommIdOrSdkAppId"
        case missingParameter_EncodeParams = "MissingParameter.EncodeParams"
        case missingParameter_EndTs = "MissingParameter.EndTs"
        case missingParameter_OutputParams = "MissingParameter.OutputParams"
        case missingParameter_PresetLayoutConfig = "MissingParameter.PresetLayoutConfig"
        case missingParameter_PublishCdnParams = "MissingParameter.PublishCdnParams"
        case missingParameter_PublishCdnUrls = "MissingParameter.PublishCdnUrls"
        case missingParameter_RecordMode = "MissingParameter.RecordMode"
        case missingParameter_RecordParams = "MissingParameter.RecordParams"
        case missingParameter_Region = "MissingParameter.Region"
        case missingParameter_RoomId = "MissingParameter.RoomId"
        case missingParameter_RoomNum = "MissingParameter.RoomNum"
        case missingParameter_SdkAppId = "MissingParameter.SdkAppId"
        case missingParameter_SecretKey = "MissingParameter.SecretKey"
        case missingParameter_StartTs = "MissingParameter.StartTs"
        case missingParameter_StorageParams = "MissingParameter.StorageParams"
        case missingParameter_StreamId = "MissingParameter.StreamId"
        case missingParameter_StreamType = "MissingParameter.StreamType"
        case missingParameter_TaskId = "MissingParameter.TaskId"
        case missingParameter_UserId = "MissingParameter.UserId"
        case missingParameter_UserIds = "MissingParameter.UserIds"
        case missingParameter_UserSig = "MissingParameter.UserSig"
        case missingParameter_Vendor = "MissingParameter.Vendor"
        case missingParameter_VideoEncodeParams = "MissingParameter.VideoEncodeParams"
        case resourceInsufficient_RequestRejection = "ResourceInsufficient.RequestRejection"
        case resourceNotFound = "ResourceNotFound"
        case unauthorizedOperation_SdkAppId = "UnauthorizedOperation.SdkAppId"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCTrtcError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, MissingParameter.self, ResourceInsufficient.self, UnauthorizedOperation.self]
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
    public static var authFailure: TCTrtcError {
        TCTrtcError(.authFailure)
    }

    /// 未完成实名认证，不允许此操作。
    public static var authFailure_UnRealNameAuthenticated: TCTrtcError {
        TCTrtcError(.authFailure_UnRealNameAuthenticated)
    }

    /// CAM鉴权失败。
    public static var authFailure_UnauthorizedOperation: TCTrtcError {
        TCTrtcError(.authFailure_UnauthorizedOperation)
    }

    /// 不支持该操作。
    public static var authFailure_UnsupportedOperation: TCTrtcError {
        TCTrtcError(.authFailure_UnsupportedOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCTrtcError {
        TCTrtcError(.failedOperation)
    }

    /// 云端录制方法不支持。
    public static var failedOperation_CRUnsupportMethod: TCTrtcError {
        TCTrtcError(.failedOperation_CRUnsupportMethod)
    }

    /// 房间中没有设置混流模板。
    public static var failedOperation_MixSessionNotExist: TCTrtcError {
        TCTrtcError(.failedOperation_MixSessionNotExist)
    }

    /// 云API混流模板和SDK混流冲突。
    public static var failedOperation_RequestRejection: TCTrtcError {
        TCTrtcError(.failedOperation_RequestRejection)
    }

    /// 单用户并发过载，请联系我们增大并发路数到合理值。
    public static var failedOperation_RestrictedConcurrency: TCTrtcError {
        TCTrtcError(.failedOperation_RestrictedConcurrency)
    }

    /// 房间不存在。
    public static var failedOperation_RoomNotExist: TCTrtcError {
        TCTrtcError(.failedOperation_RoomNotExist)
    }

    /// 应用ID不存在。
    public static var failedOperation_SdkAppIdNotExist: TCTrtcError {
        TCTrtcError(.failedOperation_SdkAppIdNotExist)
    }

    /// 内部错误。
    public static var internalError: TCTrtcError {
        TCTrtcError(.internalError)
    }

    /// 云端录制内部服务错误。
    public static var internalError_CRInternalError: TCTrtcError {
        TCTrtcError(.internalError_CRInternalError)
    }

    /// 数据库查询异常。
    public static var internalError_DBError: TCTrtcError {
        TCTrtcError(.internalError_DBError)
    }

    /// ES查询异常。
    public static var internalError_EsQueryError: TCTrtcError {
        TCTrtcError(.internalError_EsQueryError)
    }

    /// 查询房间失败。
    public static var internalError_GetRoomCacheIpError: TCTrtcError {
        TCTrtcError(.internalError_GetRoomCacheIpError)
    }

    /// 获取房间信息失败。
    public static var internalError_GetRoomFromCacheError: TCTrtcError {
        TCTrtcError(.internalError_GetRoomFromCacheError)
    }

    /// http请求解析失败。
    public static var internalError_HttpParaseFalied: TCTrtcError {
        TCTrtcError(.internalError_HttpParaseFalied)
    }

    /// 接口错误。
    public static var internalError_InterfaceErr: TCTrtcError {
        TCTrtcError(.internalError_InterfaceErr)
    }

    /// 内部错误，请重试。
    public static var internalError_InternalError: TCTrtcError {
        TCTrtcError(.internalError_InternalError)
    }

    /// 不支持的方法。
    public static var internalError_MethodErr: TCTrtcError {
        TCTrtcError(.internalError_MethodErr)
    }

    /// 参数错误。
    public static var invalidParameter: TCTrtcError {
        TCTrtcError(.invalidParameter)
    }

    /// RoomId值错误。
    public static var invalidParameterValue_RoomId: TCTrtcError {
        TCTrtcError(.invalidParameterValue_RoomId)
    }

    /// AppId校验失败。
    public static var invalidParameter_AppId: TCTrtcError {
        TCTrtcError(.invalidParameter_AppId)
    }

    /// 音频编码参数错误。
    public static var invalidParameter_AudioEncodeParams: TCTrtcError {
        TCTrtcError(.invalidParameter_AudioEncodeParams)
    }

    /// BackgroundImageUrl参数错误。
    public static var invalidParameter_BackgroundImageUrl: TCTrtcError {
        TCTrtcError(.invalidParameter_BackgroundImageUrl)
    }

    /// body 解析参数失败。
    public static var invalidParameter_BodyParamsError: TCTrtcError {
        TCTrtcError(.invalidParameter_BodyParamsError)
    }

    /// 图片过大。
    public static var invalidParameter_CheckContentFailed: TCTrtcError {
        TCTrtcError(.invalidParameter_CheckContentFailed)
    }

    /// 后缀名校验失败。
    ///
    /// 请输入合法的后缀名。
    public static var invalidParameter_CheckSuffixFailed: TCTrtcError {
        TCTrtcError(.invalidParameter_CheckSuffixFailed)
    }

    /// EncodeParams参数错误。
    public static var invalidParameter_EncodeParams: TCTrtcError {
        TCTrtcError(.invalidParameter_EncodeParams)
    }

    /// EndTs参数错误。
    public static var invalidParameter_EndTs: TCTrtcError {
        TCTrtcError(.invalidParameter_EndTs)
    }

    /// 大画面居右显示参数错误。
    public static var invalidParameter_MainVideoRightAlign: TCTrtcError {
        TCTrtcError(.invalidParameter_MainVideoRightAlign)
    }

    /// 大画面流类型错误。
    public static var invalidParameter_MainVideoStreamType: TCTrtcError {
        TCTrtcError(.invalidParameter_MainVideoStreamType)
    }

    /// 参数超出范围。
    public static var invalidParameter_OutOfRange: TCTrtcError {
        TCTrtcError(.invalidParameter_OutOfRange)
    }

    /// OutputParams参数错误。
    public static var invalidParameter_OutputParams: TCTrtcError {
        TCTrtcError(.invalidParameter_OutputParams)
    }

    /// PageNumber 参数错误。
    public static var invalidParameter_PageNumber: TCTrtcError {
        TCTrtcError(.invalidParameter_PageNumber)
    }

    /// PageSize参数错误。
    public static var invalidParameter_PageSize: TCTrtcError {
        TCTrtcError(.invalidParameter_PageSize)
    }

    /// PageSize超过100。
    public static var invalidParameter_PageSizeOversize: TCTrtcError {
        TCTrtcError(.invalidParameter_PageSizeOversize)
    }

    /// 待操作的图片未找到。
    public static var invalidParameter_PictureNotFound: TCTrtcError {
        TCTrtcError(.invalidParameter_PictureNotFound)
    }

    /// 自定义布局参数错误。
    public static var invalidParameter_PresetLayoutConfig: TCTrtcError {
        TCTrtcError(.invalidParameter_PresetLayoutConfig)
    }

    /// PublishCdnUrls参数校验失败。
    public static var invalidParameter_PublishCdnUrls: TCTrtcError {
        TCTrtcError(.invalidParameter_PublishCdnUrls)
    }

    /// 纯音频推流参数错误。
    public static var invalidParameter_PureAudioStream: TCTrtcError {
        TCTrtcError(.invalidParameter_PureAudioStream)
    }

    /// 查询范围超过文档限制。
    public static var invalidParameter_QueryScaleOversize: TCTrtcError {
        TCTrtcError(.invalidParameter_QueryScaleOversize)
    }

    /// 纯音频录制参数错误。
    public static var invalidParameter_RecordAudioOnly: TCTrtcError {
        TCTrtcError(.invalidParameter_RecordAudioOnly)
    }

    /// RecordId参数错误。
    public static var invalidParameter_RecordId: TCTrtcError {
        TCTrtcError(.invalidParameter_RecordId)
    }

    /// RoomId参数错误。
    public static var invalidParameter_RoomId: TCTrtcError {
        TCTrtcError(.invalidParameter_RoomId)
    }

    /// SdkAppId参数错误。
    public static var invalidParameter_SdkAppId: TCTrtcError {
        TCTrtcError(.invalidParameter_SdkAppId)
    }

    /// 不能操作的SdkAppid。
    public static var invalidParameter_SdkAppid: TCTrtcError {
        TCTrtcError(.invalidParameter_SdkAppid)
    }

    /// 小画面布局参数错误。
    public static var invalidParameter_SmallVideoLayoutParams: TCTrtcError {
        TCTrtcError(.invalidParameter_SmallVideoLayoutParams)
    }

    /// 小画面布局中流类型参数错误。
    public static var invalidParameter_SmallVideoStreamType: TCTrtcError {
        TCTrtcError(.invalidParameter_SmallVideoStreamType)
    }

    /// 查询开始时间超过文档限制。
    public static var invalidParameter_StartTimeExpire: TCTrtcError {
        TCTrtcError(.invalidParameter_StartTimeExpire)
    }

    /// 查询起始时间超过当前监控仪表盘功能版本限制，详情请见:https://cloud.tencent.com/document/product/647/81331。
    ///
    /// 详情请见:https://cloud.tencent.com/document/product/647/81331。
    public static var invalidParameter_StartTimeOversize: TCTrtcError {
        TCTrtcError(.invalidParameter_StartTimeOversize)
    }

    /// StartTs参数错误。
    public static var invalidParameter_StartTs: TCTrtcError {
        TCTrtcError(.invalidParameter_StartTs)
    }

    /// 查询开始时间超过文档限制。
    public static var invalidParameter_StartTsOversize: TCTrtcError {
        TCTrtcError(.invalidParameter_StartTsOversize)
    }

    /// StrRoomId参数错误。
    public static var invalidParameter_StrRoomId: TCTrtcError {
        TCTrtcError(.invalidParameter_StrRoomId)
    }

    /// StreamId参数错误。
    public static var invalidParameter_StreamId: TCTrtcError {
        TCTrtcError(.invalidParameter_StreamId)
    }

    /// Url解析参数失败。
    public static var invalidParameter_UrlParamsError: TCTrtcError {
        TCTrtcError(.invalidParameter_UrlParamsError)
    }

    /// UserId参数错误。
    public static var invalidParameter_UserId: TCTrtcError {
        TCTrtcError(.invalidParameter_UserId)
    }

    /// UserIds参数错误。
    public static var invalidParameter_UserIds: TCTrtcError {
        TCTrtcError(.invalidParameter_UserIds)
    }

    /// 用户数超过6个。
    public static var invalidParameter_UserIdsMorethanSix: TCTrtcError {
        TCTrtcError(.invalidParameter_UserIdsMorethanSix)
    }

    /// 视频分辨率参数错误。
    public static var invalidParameter_VideoResolution: TCTrtcError {
        TCTrtcError(.invalidParameter_VideoResolution)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCTrtcError {
        TCTrtcError(.missingParameter)
    }

    /// 缺少AccessKey参数。
    public static var missingParameter_AccessKey: TCTrtcError {
        TCTrtcError(.missingParameter_AccessKey)
    }

    /// 缺少AppId参数。
    public static var missingParameter_AppId: TCTrtcError {
        TCTrtcError(.missingParameter_AppId)
    }

    /// EncodeParams中缺少音频输出参数。
    public static var missingParameter_AudioEncodeParams: TCTrtcError {
        TCTrtcError(.missingParameter_AudioEncodeParams)
    }

    /// 转推参数中缺少BizId。
    public static var missingParameter_BizId: TCTrtcError {
        TCTrtcError(.missingParameter_BizId)
    }

    /// 缺少Bucket参数。
    public static var missingParameter_Bucket: TCTrtcError {
        TCTrtcError(.missingParameter_Bucket)
    }

    /// 缺少CloudStorage参数。
    public static var missingParameter_CloudStorage: TCTrtcError {
        TCTrtcError(.missingParameter_CloudStorage)
    }

    /// 缺少CommId参数。
    public static var missingParameter_CommId: TCTrtcError {
        TCTrtcError(.missingParameter_CommId)
    }

    /// 缺少SdkAppId参数或CommID参数。
    public static var missingParameter_CommIdOrSdkAppId: TCTrtcError {
        TCTrtcError(.missingParameter_CommIdOrSdkAppId)
    }

    /// 缺少EncodeParams参数。
    public static var missingParameter_EncodeParams: TCTrtcError {
        TCTrtcError(.missingParameter_EncodeParams)
    }

    /// 缺少endTS_s参数。
    public static var missingParameter_EndTs: TCTrtcError {
        TCTrtcError(.missingParameter_EndTs)
    }

    /// 缺少OutputParams参数。
    public static var missingParameter_OutputParams: TCTrtcError {
        TCTrtcError(.missingParameter_OutputParams)
    }

    /// 缺少自定义布局参数。
    public static var missingParameter_PresetLayoutConfig: TCTrtcError {
        TCTrtcError(.missingParameter_PresetLayoutConfig)
    }

    /// 缺少转推参数。
    public static var missingParameter_PublishCdnParams: TCTrtcError {
        TCTrtcError(.missingParameter_PublishCdnParams)
    }

    /// 转推参数中缺少转推目的地址。
    public static var missingParameter_PublishCdnUrls: TCTrtcError {
        TCTrtcError(.missingParameter_PublishCdnUrls)
    }

    /// 缺少RecordMode参数。
    public static var missingParameter_RecordMode: TCTrtcError {
        TCTrtcError(.missingParameter_RecordMode)
    }

    /// 缺少RecordParams参数。
    public static var missingParameter_RecordParams: TCTrtcError {
        TCTrtcError(.missingParameter_RecordParams)
    }

    /// 缺少Region参数。
    public static var missingParameter_Region: TCTrtcError {
        TCTrtcError(.missingParameter_Region)
    }

    /// 缺少RoomId参数。
    public static var missingParameter_RoomId: TCTrtcError {
        TCTrtcError(.missingParameter_RoomId)
    }

    /// 缺少RoomNum参数。
    public static var missingParameter_RoomNum: TCTrtcError {
        TCTrtcError(.missingParameter_RoomNum)
    }

    /// 缺少SdkAppId参数。
    public static var missingParameter_SdkAppId: TCTrtcError {
        TCTrtcError(.missingParameter_SdkAppId)
    }

    /// 缺少SecretKey参数。
    public static var missingParameter_SecretKey: TCTrtcError {
        TCTrtcError(.missingParameter_SecretKey)
    }

    /// 缺少startTS_s参数。
    public static var missingParameter_StartTs: TCTrtcError {
        TCTrtcError(.missingParameter_StartTs)
    }

    /// 缺少StorageParams参数。
    public static var missingParameter_StorageParams: TCTrtcError {
        TCTrtcError(.missingParameter_StorageParams)
    }

    /// OutputParams中缺少StreamId参数。
    public static var missingParameter_StreamId: TCTrtcError {
        TCTrtcError(.missingParameter_StreamId)
    }

    /// 缺少StreamType参数。
    public static var missingParameter_StreamType: TCTrtcError {
        TCTrtcError(.missingParameter_StreamType)
    }

    /// 缺少TaskId参数。
    public static var missingParameter_TaskId: TCTrtcError {
        TCTrtcError(.missingParameter_TaskId)
    }

    /// 缺少UserId参数。
    public static var missingParameter_UserId: TCTrtcError {
        TCTrtcError(.missingParameter_UserId)
    }

    /// 缺少UserIds参数。
    public static var missingParameter_UserIds: TCTrtcError {
        TCTrtcError(.missingParameter_UserIds)
    }

    /// 缺少UserSig参数。
    public static var missingParameter_UserSig: TCTrtcError {
        TCTrtcError(.missingParameter_UserSig)
    }

    /// 缺少Vendor参数。
    public static var missingParameter_Vendor: TCTrtcError {
        TCTrtcError(.missingParameter_Vendor)
    }

    /// EncodeParams中缺少视频输出参数。
    public static var missingParameter_VideoEncodeParams: TCTrtcError {
        TCTrtcError(.missingParameter_VideoEncodeParams)
    }

    /// 资源不足。
    public static var resourceInsufficient_RequestRejection: TCTrtcError {
        TCTrtcError(.resourceInsufficient_RequestRejection)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCTrtcError {
        TCTrtcError(.resourceNotFound)
    }

    /// 没有操作SdkAppId的权限。
    public static var unauthorizedOperation_SdkAppId: TCTrtcError {
        TCTrtcError(.unauthorizedOperation_SdkAppId)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCTrtcError {
        TCTrtcError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCTrtcError {
        TCTrtcError(.unsupportedOperation)
    }

    public func asTrtcError() -> TCTrtcError {
        return self
    }
}
