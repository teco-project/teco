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

extension TCSslError {
    public struct FailedOperation: TCSslErrorType {
        enum Code: String {
            case authError = "FailedOperation.AuthError"
            case camAuthorizedFail = "FailedOperation.CAMAuthorizedFail"
            case cancelOrderFailed = "FailedOperation.CancelOrderFailed"
            case cannotBeDeletedIssued = "FailedOperation.CannotBeDeletedIssued"
            case cannotBeDeletedWithinHour = "FailedOperation.CannotBeDeletedWithinHour"
            case cannotGetOrder = "FailedOperation.CannotGetOrder"
            case certificateExists = "FailedOperation.CertificateExists"
            case certificateHasRenewed = "FailedOperation.CertificateHasRenewed"
            case certificateHostingTypeNumberLimit = "FailedOperation.CertificateHostingTypeNumberLimit"
            case certificateInvalid = "FailedOperation.CertificateInvalid"
            case certificateMismatch = "FailedOperation.CertificateMismatch"
            case certificateNotFound = "FailedOperation.CertificateNotFound"
            case confirmLetterTooLarge = "FailedOperation.ConfirmLetterTooLarge"
            case confirmLetterTooSmall = "FailedOperation.ConfirmLetterTooSmall"
            case deleteResourceFailed = "FailedOperation.DeleteResourceFailed"
            case exceedsFreeLimit = "FailedOperation.ExceedsFreeLimit"
            case fileTooLarge = "FailedOperation.FileTooLarge"
            case fileTooSmall = "FailedOperation.FileTooSmall"
            case illegalManagerStatus = "FailedOperation.IllegalManagerStatus"
            case invalidCertificateSource = "FailedOperation.InvalidCertificateSource"
            case invalidCertificateStatusCode = "FailedOperation.InvalidCertificateStatusCode"
            case invalidConfirmLetterFormat = "FailedOperation.InvalidConfirmLetterFormat"
            case invalidConfirmLetterFormatWosign = "FailedOperation.InvalidConfirmLetterFormatWosign"
            case invalidFileType = "FailedOperation.InvalidFileType"
            case invalidParam = "FailedOperation.InvalidParam"
            case mainDomainCertificateCountLimit = "FailedOperation.MainDomainCertificateCountLimit"
            case networkError = "FailedOperation.NetworkError"
            case noProjectPermission = "FailedOperation.NoProjectPermission"
            case noRealNameAuth = "FailedOperation.NoRealNameAuth"
            case orderAlreadyReplaced = "FailedOperation.OrderAlreadyReplaced"
            case orderReplaceFailed = "FailedOperation.OrderReplaceFailed"
            case packageCountLimit = "FailedOperation.PackageCountLimit"
            case packageExpired = "FailedOperation.PackageExpired"
            case revokeFailed = "FailedOperation.RevokeFailed"
            case revokeResourceFailed = "FailedOperation.RevokeResourceFailed"
            case roleNotFoundAuthorization = "FailedOperation.RoleNotFoundAuthorization"
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

        /// 请检查是否有权限。
        public static var authError: FailedOperation {
            FailedOperation(.authError)
        }

        /// CAM鉴权出现错误。
        public static var camAuthorizedFail: FailedOperation {
            FailedOperation(.camAuthorizedFail)
        }

        /// 取消订单失败。
        public static var cancelOrderFailed: FailedOperation {
            FailedOperation(.cancelOrderFailed)
        }

        /// 该证书已颁发， 不能删除。
        public static var cannotBeDeletedIssued: FailedOperation {
            FailedOperation(.cannotBeDeletedIssued)
        }

        /// 免费证书申请1小时内不允许删除。
        public static var cannotBeDeletedWithinHour: FailedOperation {
            FailedOperation(.cannotBeDeletedWithinHour)
        }

        /// 获取订单信息失败，请稍后重试。
        public static var cannotGetOrder: FailedOperation {
            FailedOperation(.cannotGetOrder)
        }

        /// 证书已存在。
        public static var certificateExists: FailedOperation {
            FailedOperation(.certificateExists)
        }

        /// 已替换证书，无法进行托管。
        public static var certificateHasRenewed: FailedOperation {
            FailedOperation(.certificateHasRenewed)
        }

        /// 证书资源托管数量超过限制。
        public static var certificateHostingTypeNumberLimit: FailedOperation {
            FailedOperation(.certificateHostingTypeNumberLimit)
        }

        /// 证书不符合标准。
        public static var certificateInvalid: FailedOperation {
            FailedOperation(.certificateInvalid)
        }

        /// 证书与私钥不对应。
        public static var certificateMismatch: FailedOperation {
            FailedOperation(.certificateMismatch)
        }

        /// 证书不存在。
        public static var certificateNotFound: FailedOperation {
            FailedOperation(.certificateNotFound)
        }

        /// 证书确认函文件过大（需小于1.4M）。
        public static var confirmLetterTooLarge: FailedOperation {
            FailedOperation(.confirmLetterTooLarge)
        }

        /// 证书确认函文件过小（需大于1KB）。
        public static var confirmLetterTooSmall: FailedOperation {
            FailedOperation(.confirmLetterTooSmall)
        }

        /// 证书已关联云资源，无法删除。
        public static var deleteResourceFailed: FailedOperation {
            FailedOperation(.deleteResourceFailed)
        }

        /// 免费证书数量超出限制。
        public static var exceedsFreeLimit: FailedOperation {
            FailedOperation(.exceedsFreeLimit)
        }

        /// 文件尺寸太大（需小于1.4MB）。
        public static var fileTooLarge: FailedOperation {
            FailedOperation(.fileTooLarge)
        }

        /// 文件尺寸太小，请上传清晰图片。
        public static var fileTooSmall: FailedOperation {
            FailedOperation(.fileTooSmall)
        }

        public static var illegalManagerStatus: FailedOperation {
            FailedOperation(.illegalManagerStatus)
        }

        /// 证书来源错误。
        public static var invalidCertificateSource: FailedOperation {
            FailedOperation(.invalidCertificateSource)
        }

        /// 证书状态不正确。
        public static var invalidCertificateStatusCode: FailedOperation {
            FailedOperation(.invalidCertificateStatusCode)
        }

        /// 证书确认函格式错误（支持格式为jpg、jpeg、png、pdf）。
        public static var invalidConfirmLetterFormat: FailedOperation {
            FailedOperation(.invalidConfirmLetterFormat)
        }

        /// 证书确认函格式错误（支持格式为jpg、pdf、gif）。
        public static var invalidConfirmLetterFormatWosign: FailedOperation {
            FailedOperation(.invalidConfirmLetterFormatWosign)
        }

        /// 文件格式错误，请重新上传。
        public static var invalidFileType: FailedOperation {
            FailedOperation(.invalidFileType)
        }

        /// 参数有误。
        public static var invalidParam: FailedOperation {
            FailedOperation(.invalidParam)
        }

        /// 该主域（%s）下申请的免费证书数量已达到%s个上限，请购买付费证书。
        ///
        /// 主域申请的免费证书数量已达到20个上限，请购买付费证书
        public static var mainDomainCertificateCountLimit: FailedOperation {
            FailedOperation(.mainDomainCertificateCountLimit)
        }

        /// 当前 CA 机构访问繁忙，请稍后重试。
        public static var networkError: FailedOperation {
            FailedOperation(.networkError)
        }

        /// 您没有该项目的操作权限。
        public static var noProjectPermission: FailedOperation {
            FailedOperation(.noProjectPermission)
        }

        /// 尚未通过实名认证。
        public static var noRealNameAuth: FailedOperation {
            FailedOperation(.noRealNameAuth)
        }

        /// 该订单已重签发。
        public static var orderAlreadyReplaced: FailedOperation {
            FailedOperation(.orderAlreadyReplaced)
        }

        /// 重颁发失败。
        public static var orderReplaceFailed: FailedOperation {
            FailedOperation(.orderReplaceFailed)
        }

        /// 剩余权益点不足。
        public static var packageCountLimit: FailedOperation {
            FailedOperation(.packageCountLimit)
        }

        /// 权益包已过期。
        public static var packageExpired: FailedOperation {
            FailedOperation(.packageExpired)
        }

        /// 证书吊销失败。
        public static var revokeFailed: FailedOperation {
            FailedOperation(.revokeFailed)
        }

        /// 证书已关联云资源，无法吊销。
        public static var revokeResourceFailed: FailedOperation {
            FailedOperation(.revokeResourceFailed)
        }

        /// 角色不存在，请前往授权。
        ///
        /// 服务角色授权
        public static var roleNotFoundAuthorization: FailedOperation {
            FailedOperation(.roleNotFoundAuthorization)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asSslError() -> TCSslError {
            let code: TCSslError.Code
            switch self.error {
            case .authError: 
                code = .failedOperation_AuthError
            case .camAuthorizedFail: 
                code = .failedOperation_CAMAuthorizedFail
            case .cancelOrderFailed: 
                code = .failedOperation_CancelOrderFailed
            case .cannotBeDeletedIssued: 
                code = .failedOperation_CannotBeDeletedIssued
            case .cannotBeDeletedWithinHour: 
                code = .failedOperation_CannotBeDeletedWithinHour
            case .cannotGetOrder: 
                code = .failedOperation_CannotGetOrder
            case .certificateExists: 
                code = .failedOperation_CertificateExists
            case .certificateHasRenewed: 
                code = .failedOperation_CertificateHasRenewed
            case .certificateHostingTypeNumberLimit: 
                code = .failedOperation_CertificateHostingTypeNumberLimit
            case .certificateInvalid: 
                code = .failedOperation_CertificateInvalid
            case .certificateMismatch: 
                code = .failedOperation_CertificateMismatch
            case .certificateNotFound: 
                code = .failedOperation_CertificateNotFound
            case .confirmLetterTooLarge: 
                code = .failedOperation_ConfirmLetterTooLarge
            case .confirmLetterTooSmall: 
                code = .failedOperation_ConfirmLetterTooSmall
            case .deleteResourceFailed: 
                code = .failedOperation_DeleteResourceFailed
            case .exceedsFreeLimit: 
                code = .failedOperation_ExceedsFreeLimit
            case .fileTooLarge: 
                code = .failedOperation_FileTooLarge
            case .fileTooSmall: 
                code = .failedOperation_FileTooSmall
            case .illegalManagerStatus: 
                code = .failedOperation_IllegalManagerStatus
            case .invalidCertificateSource: 
                code = .failedOperation_InvalidCertificateSource
            case .invalidCertificateStatusCode: 
                code = .failedOperation_InvalidCertificateStatusCode
            case .invalidConfirmLetterFormat: 
                code = .failedOperation_InvalidConfirmLetterFormat
            case .invalidConfirmLetterFormatWosign: 
                code = .failedOperation_InvalidConfirmLetterFormatWosign
            case .invalidFileType: 
                code = .failedOperation_InvalidFileType
            case .invalidParam: 
                code = .failedOperation_InvalidParam
            case .mainDomainCertificateCountLimit: 
                code = .failedOperation_MainDomainCertificateCountLimit
            case .networkError: 
                code = .failedOperation_NetworkError
            case .noProjectPermission: 
                code = .failedOperation_NoProjectPermission
            case .noRealNameAuth: 
                code = .failedOperation_NoRealNameAuth
            case .orderAlreadyReplaced: 
                code = .failedOperation_OrderAlreadyReplaced
            case .orderReplaceFailed: 
                code = .failedOperation_OrderReplaceFailed
            case .packageCountLimit: 
                code = .failedOperation_PackageCountLimit
            case .packageExpired: 
                code = .failedOperation_PackageExpired
            case .revokeFailed: 
                code = .failedOperation_RevokeFailed
            case .revokeResourceFailed: 
                code = .failedOperation_RevokeResourceFailed
            case .roleNotFoundAuthorization: 
                code = .failedOperation_RoleNotFoundAuthorization
            case .other: 
                code = .failedOperation
            }
            return TCSslError(code, context: self.context)
        }
    }
}
