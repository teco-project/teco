//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCLiveError {
    public struct FailedOperation: TCErrorType {
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
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
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
        
        public static var cannotBeDeletedIssued: FailedOperation {
            FailedOperation(.cannotBeDeletedIssued)
        }
        
        public static var cannotBeDeletedWithinHour: FailedOperation {
            FailedOperation(.cannotBeDeletedWithinHour)
        }
        
        public static var certificateExists: FailedOperation {
            FailedOperation(.certificateExists)
        }
        
        /// ssl接口返回：证书格式错误。
        public static var certificateInvalid: FailedOperation {
            FailedOperation(.certificateInvalid)
        }
        
        /// ssl接口返回：私钥与证书不匹配。
        public static var certificateMismatch: FailedOperation {
            FailedOperation(.certificateMismatch)
        }
        
        /// 证书在证书中心不存在。
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
        
        public static var cosBucketNotExist: FailedOperation {
            FailedOperation(.cosBucketNotExist)
        }
        
        public static var cosBucketNotPermission: FailedOperation {
            FailedOperation(.cosBucketNotPermission)
        }
        
        public static var cosRoleNotExists: FailedOperation {
            FailedOperation(.cosRoleNotExists)
        }
        
        /// 2天内有产生流量，域名处于锁定期间，2天内无流量产生才允许删除域名。
        public static var deleteDomainInLockedTime: FailedOperation {
            FailedOperation(.deleteDomainInLockedTime)
        }
        
        public static var domainAdded: FailedOperation {
            FailedOperation(.domainAdded)
        }
        
        public static var domainGslbFail: FailedOperation {
            FailedOperation(.domainGslbFail)
        }
        
        public static var domainNeedRealName: FailedOperation {
            FailedOperation(.domainNeedRealName)
        }
        
        public static var domainNeedVerifyOwner: FailedOperation {
            FailedOperation(.domainNeedVerifyOwner)
        }
        
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
        
        public static var invalidCertificateStatusCode: FailedOperation {
            FailedOperation(.invalidCertificateStatusCode)
        }
        
        /// ssl接口返回：Type参数错误。
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
        
        public static var networkError: FailedOperation {
            FailedOperation(.networkError)
        }
        
        /// ssl接口返回：没有项目权限。
        public static var noProjectPermission: FailedOperation {
            FailedOperation(.noProjectPermission)
        }
        
        public static var noRealNameAuth: FailedOperation {
            FailedOperation(.noRealNameAuth)
        }
        
        /// 找不到记录。
        public static var notFound: FailedOperation {
            FailedOperation(.notFound)
        }
        
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
    }
}

extension TCLiveError.FailedOperation: Equatable {
    public static func == (lhs: TCLiveError.FailedOperation, rhs: TCLiveError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLiveError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLiveError.FailedOperation {
    public func toLiveError() -> TCLiveError {
        guard let code = TCLiveError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCLiveError(code, context: self.context)
    }
}