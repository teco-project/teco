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

extension TCLiveError {
    public struct FailedOperation: TCLiveErrorType {
        enum Code: String {
            case aiTranscodeOptionFail = "FailedOperation.AiTranscodeOptionFail"
            case alterTaskState = "FailedOperation.AlterTaskState"
            case authError = "FailedOperation.AuthError"
            case callOtherSvrError = "FailedOperation.CallOtherSvrError"
            case callOtherSvrFailed = "FailedOperation.CallOtherSvrFailed"
            case cancelSessionNotExist = "FailedOperation.CancelSessionNotExist"
            case cannotBeDeletedIssued = "FailedOperation.CannotBeDeletedIssued"
            case cannotBeDeletedWithinHour = "FailedOperation.CannotBeDeletedWithinHour"
            case certificateExists = "FailedOperation.CertificateExists"
            case certificateInvalid = "FailedOperation.CertificateInvalid"
            case certificateMismatch = "FailedOperation.CertificateMismatch"
            case certificateNotFound = "FailedOperation.CertificateNotFound"
            case confInUsed = "FailedOperation.ConfInUsed"
            case configCDNFailed = "FailedOperation.ConfigCDNFailed"
            case cosBucketNotExist = "FailedOperation.CosBucketNotExist"
            case cosBucketNotPermission = "FailedOperation.CosBucketNotPermission"
            case cosRoleNotExists = "FailedOperation.CosRoleNotExists"
            case deleteDomainInLockedTime = "FailedOperation.DeleteDomainInLockedTime"
            case domainAdded = "FailedOperation.DomainAdded"
            case domainGslbFail = "FailedOperation.DomainGslbFail"
            case domainNeedRealName = "FailedOperation.DomainNeedRealName"
            case domainNeedVerifyOwner = "FailedOperation.DomainNeedVerifyOwner"
            case exceedsFreeLimit = "FailedOperation.ExceedsFreeLimit"
            case getPictureUrlError = "FailedOperation.GetPictureUrlError"
            case getStreamResolutionError = "FailedOperation.GetStreamResolutionError"
            case hasNotLivingStream = "FailedOperation.HasNotLivingStream"
            case hostOutLimit = "FailedOperation.HostOutLimit"
            case invalidCertificateStatusCode = "FailedOperation.InvalidCertificateStatusCode"
            case invalidParam = "FailedOperation.InvalidParam"
            case invokeCdnApiFail = "FailedOperation.InvokeCdnApiFail"
            case invokeVideoApiFail = "FailedOperation.InvokeVideoApiFail"
            case jiFeiNoEnoughFund = "FailedOperation.JiFeiNoEnoughFund"
            case networkError = "FailedOperation.NetworkError"
            case noProjectPermission = "FailedOperation.NoProjectPermission"
            case noRealNameAuth = "FailedOperation.NoRealNameAuth"
            case notFound = "FailedOperation.NotFound"
            case parentDomainAdded = "FailedOperation.ParentDomainAdded"
            case processMixError = "FailedOperation.ProcessMixError"
            case queryUploadInfoFailed = "FailedOperation.QueryUploadInfoFailed"
            case ruleAlreadyExist = "FailedOperation.RuleAlreadyExist"
            case sdkNoPackage = "FailedOperation.SdkNoPackage"
            case streamNotExist = "FailedOperation.StreamNotExist"
            case subDomainAdded = "FailedOperation.SubDomainAdded"
            case tagUnbindError = "FailedOperation.TagUnbindError"
            case other = "FailedOperation"
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

        /// 操作 AI 接口失败。
        public static var aiTranscodeOptionFail: FailedOperation {
            FailedOperation(.aiTranscodeOptionFail)
        }

        /// 改变任务状态失败。
        public static var alterTaskState: FailedOperation {
            FailedOperation(.alterTaskState)
        }

        /// 请检查是否有权限。
        ///
        /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
        public static var authError: FailedOperation {
            FailedOperation(.authError)
        }

        /// 调用第三方服务失败。
        public static var callOtherSvrError: FailedOperation {
            FailedOperation(.callOtherSvrError)
        }

        /// 调用内部服务失败。
        public static var callOtherSvrFailed: FailedOperation {
            FailedOperation(.callOtherSvrFailed)
        }

        /// 取消的混流 session 不存在。
        public static var cancelSessionNotExist: FailedOperation {
            FailedOperation(.cancelSessionNotExist)
        }

        /// 该证书已颁发，不能删除。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var cannotBeDeletedIssued: FailedOperation {
            FailedOperation(.cannotBeDeletedIssued)
        }

        /// 免费证书申请1小时内不允许删除。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var cannotBeDeletedWithinHour: FailedOperation {
            FailedOperation(.cannotBeDeletedWithinHour)
        }

        /// 证书已存在。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var certificateExists: FailedOperation {
            FailedOperation(.certificateExists)
        }

        /// 证书不符合标准。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var certificateInvalid: FailedOperation {
            FailedOperation(.certificateInvalid)
        }

        /// 证书与私钥不对应。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var certificateMismatch: FailedOperation {
            FailedOperation(.certificateMismatch)
        }

        /// 证书不存在。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var certificateNotFound: FailedOperation {
            FailedOperation(.certificateNotFound)
        }

        /// 模版使用中。
        public static var confInUsed: FailedOperation {
            FailedOperation(.confInUsed)
        }

        /// 下发CDN平台失败。
        public static var configCDNFailed: FailedOperation {
            FailedOperation(.configCDNFailed)
        }

        /// Cos bucket 不存在。
        public static var cosBucketNotExist: FailedOperation {
            FailedOperation(.cosBucketNotExist)
        }

        /// 无权限访问 Cos bucket。
        public static var cosBucketNotPermission: FailedOperation {
            FailedOperation(.cosBucketNotPermission)
        }

        /// Cos 角色不存在，请前往 控制台 -&gt; 功能配置 -&gt; 直播截图&amp;鉴黄 页面进行授权。
        public static var cosRoleNotExists: FailedOperation {
            FailedOperation(.cosRoleNotExists)
        }

        /// 2天内有产生流量，域名处于锁定期间，2天内无流量产生才允许删除域名。
        public static var deleteDomainInLockedTime: FailedOperation {
            FailedOperation(.deleteDomainInLockedTime)
        }

        /// 域名已添加。
        ///
        /// 当前域名已添加，不可重复添加。
        public static var domainAdded: FailedOperation {
            FailedOperation(.domainAdded)
        }

        /// 配置域名规则失败。
        ///
        /// 自动配置域名规则失败，可能由于您的域名是人工维护，请联系售后同学解决。
        public static var domainGslbFail: FailedOperation {
            FailedOperation(.domainGslbFail)
        }

        /// 域名需要实名认证。
        ///
        /// 国内域名需要您通过实名认证。
        public static var domainNeedRealName: FailedOperation {
            FailedOperation(.domainNeedRealName)
        }

        /// 域名归属待验证。
        ///
        /// 请按提示进行域名归属验证。
        public static var domainNeedVerifyOwner: FailedOperation {
            FailedOperation(.domainNeedVerifyOwner)
        }

        /// 免费证书数量超出限制。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var exceedsFreeLimit: FailedOperation {
            FailedOperation(.exceedsFreeLimit)
        }

        /// 无法获取水印 url。
        public static var getPictureUrlError: FailedOperation {
            FailedOperation(.getPictureUrlError)
        }

        /// 获取输入流长宽失败。
        public static var getStreamResolutionError: FailedOperation {
            FailedOperation(.getStreamResolutionError)
        }

        /// 无在线流。
        public static var hasNotLivingStream: FailedOperation {
            FailedOperation(.hasNotLivingStream)
        }

        /// 域名数量超过限制(100个）。
        public static var hostOutLimit: FailedOperation {
            FailedOperation(.hostOutLimit)
        }

        /// 证书状态不正确。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var invalidCertificateStatusCode: FailedOperation {
            FailedOperation(.invalidCertificateStatusCode)
        }

        /// 参数有误。
        ///
        /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
        public static var invalidParam: FailedOperation {
            FailedOperation(.invalidParam)
        }

        /// 操作 CDN 接口失败。
        public static var invokeCdnApiFail: FailedOperation {
            FailedOperation(.invokeCdnApiFail)
        }

        /// 操作点播接口异常。
        public static var invokeVideoApiFail: FailedOperation {
            FailedOperation(.invokeVideoApiFail)
        }

        /// 计费平台返回余额不足。
        public static var jiFeiNoEnoughFund: FailedOperation {
            FailedOperation(.jiFeiNoEnoughFund)
        }

        /// 当前 CA 机构访问繁忙，请稍后重试。
        ///
        /// 请参考ssl证书-上传证书(https://cloud.tencent.com/document/api/400/41665)
        public static var networkError: FailedOperation {
            FailedOperation(.networkError)
        }

        /// 您没有该项目的操作权限。
        ///
        /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
        public static var noProjectPermission: FailedOperation {
            FailedOperation(.noProjectPermission)
        }

        /// 尚未通过实名认证。
        ///
        /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
        public static var noRealNameAuth: FailedOperation {
            FailedOperation(.noRealNameAuth)
        }

        /// 找不到记录。
        public static var notFound: FailedOperation {
            FailedOperation(.notFound)
        }

        /// 父域名已添加。
        ///
        /// 您已添加该域名父域名，与当前域名冲突。
        public static var parentDomainAdded: FailedOperation {
            FailedOperation(.parentDomainAdded)
        }

        /// 启动混流失败。
        public static var processMixError: FailedOperation {
            FailedOperation(.processMixError)
        }

        /// 查询 upload 信息失败。
        public static var queryUploadInfoFailed: FailedOperation {
            FailedOperation(.queryUploadInfoFailed)
        }

        /// 规则已经存在。
        public static var ruleAlreadyExist: FailedOperation {
            FailedOperation(.ruleAlreadyExist)
        }

        /// 用户没有有效的流量套餐包。
        public static var sdkNoPackage: FailedOperation {
            FailedOperation(.sdkNoPackage)
        }

        /// 流不存在。
        public static var streamNotExist: FailedOperation {
            FailedOperation(.streamNotExist)
        }

        /// 子域名已添加。
        ///
        /// 您已添加该域名子域名，与当前域名冲突。
        public static var subDomainAdded: FailedOperation {
            FailedOperation(.subDomainAdded)
        }

        /// 解绑Tag失败，请尝试手动解绑。
        public static var tagUnbindError: FailedOperation {
            FailedOperation(.tagUnbindError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asLiveError() -> TCLiveError {
            let code: TCLiveError.Code
            switch self.error {
            case .aiTranscodeOptionFail:
                code = .failedOperation_AiTranscodeOptionFail
            case .alterTaskState:
                code = .failedOperation_AlterTaskState
            case .authError:
                code = .failedOperation_AuthError
            case .callOtherSvrError:
                code = .failedOperation_CallOtherSvrError
            case .callOtherSvrFailed:
                code = .failedOperation_CallOtherSvrFailed
            case .cancelSessionNotExist:
                code = .failedOperation_CancelSessionNotExist
            case .cannotBeDeletedIssued:
                code = .failedOperation_CannotBeDeletedIssued
            case .cannotBeDeletedWithinHour:
                code = .failedOperation_CannotBeDeletedWithinHour
            case .certificateExists:
                code = .failedOperation_CertificateExists
            case .certificateInvalid:
                code = .failedOperation_CertificateInvalid
            case .certificateMismatch:
                code = .failedOperation_CertificateMismatch
            case .certificateNotFound:
                code = .failedOperation_CertificateNotFound
            case .confInUsed:
                code = .failedOperation_ConfInUsed
            case .configCDNFailed:
                code = .failedOperation_ConfigCDNFailed
            case .cosBucketNotExist:
                code = .failedOperation_CosBucketNotExist
            case .cosBucketNotPermission:
                code = .failedOperation_CosBucketNotPermission
            case .cosRoleNotExists:
                code = .failedOperation_CosRoleNotExists
            case .deleteDomainInLockedTime:
                code = .failedOperation_DeleteDomainInLockedTime
            case .domainAdded:
                code = .failedOperation_DomainAdded
            case .domainGslbFail:
                code = .failedOperation_DomainGslbFail
            case .domainNeedRealName:
                code = .failedOperation_DomainNeedRealName
            case .domainNeedVerifyOwner:
                code = .failedOperation_DomainNeedVerifyOwner
            case .exceedsFreeLimit:
                code = .failedOperation_ExceedsFreeLimit
            case .getPictureUrlError:
                code = .failedOperation_GetPictureUrlError
            case .getStreamResolutionError:
                code = .failedOperation_GetStreamResolutionError
            case .hasNotLivingStream:
                code = .failedOperation_HasNotLivingStream
            case .hostOutLimit:
                code = .failedOperation_HostOutLimit
            case .invalidCertificateStatusCode:
                code = .failedOperation_InvalidCertificateStatusCode
            case .invalidParam:
                code = .failedOperation_InvalidParam
            case .invokeCdnApiFail:
                code = .failedOperation_InvokeCdnApiFail
            case .invokeVideoApiFail:
                code = .failedOperation_InvokeVideoApiFail
            case .jiFeiNoEnoughFund:
                code = .failedOperation_JiFeiNoEnoughFund
            case .networkError:
                code = .failedOperation_NetworkError
            case .noProjectPermission:
                code = .failedOperation_NoProjectPermission
            case .noRealNameAuth:
                code = .failedOperation_NoRealNameAuth
            case .notFound:
                code = .failedOperation_NotFound
            case .parentDomainAdded:
                code = .failedOperation_ParentDomainAdded
            case .processMixError:
                code = .failedOperation_ProcessMixError
            case .queryUploadInfoFailed:
                code = .failedOperation_QueryUploadInfoFailed
            case .ruleAlreadyExist:
                code = .failedOperation_RuleAlreadyExist
            case .sdkNoPackage:
                code = .failedOperation_SdkNoPackage
            case .streamNotExist:
                code = .failedOperation_StreamNotExist
            case .subDomainAdded:
                code = .failedOperation_SubDomainAdded
            case .tagUnbindError:
                code = .failedOperation_TagUnbindError
            case .other:
                code = .failedOperation
            }
            return TCLiveError(code, context: self.context)
        }
    }
}
