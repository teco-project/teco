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

extension TCEcdnError {
    public struct UnauthorizedOperation: TCEcdnErrorType {
        enum Code: String {
            case cdnAccountUnauthorized = "UnauthorizedOperation.CdnAccountUnauthorized"
            case cdnCamUnauthorized = "UnauthorizedOperation.CdnCamUnauthorized"
            case cdnDomainUnauthorized = "UnauthorizedOperation.CdnDomainUnauthorized"
            case cdnHostUnauthorized = "UnauthorizedOperation.CdnHostUnauthorized"
            case cdnNoDomainUnauthorized = "UnauthorizedOperation.CdnNoDomainUnauthorized"
            case cdnProjectUnauthorized = "UnauthorizedOperation.CdnProjectUnauthorized"
            case domainNoPermission = "UnauthorizedOperation.DomainNoPermission"
            case domainsNoPermission = "UnauthorizedOperation.DomainsNoPermission"
            case ecdnAccountUnauthorized = "UnauthorizedOperation.EcdnAccountUnauthorized"
            case ecdnCamUnauthorized = "UnauthorizedOperation.EcdnCamUnauthorized"
            case ecdnDomainRecordNotVerified = "UnauthorizedOperation.EcdnDomainRecordNotVerified"
            case ecdnDomainUnauthorized = "UnauthorizedOperation.EcdnDomainUnauthorized"
            case ecdnHostIsOwnedByOther = "UnauthorizedOperation.EcdnHostIsOwnedByOther"
            case ecdnHostUnauthorized = "UnauthorizedOperation.EcdnHostUnauthorized"
            case ecdnMigratedCdn = "UnauthorizedOperation.EcdnMigratedCdn"
            case ecdnNoDomainUnauthorized = "UnauthorizedOperation.EcdnNoDomainUnauthorized"
            case ecdnProjectUnauthorized = "UnauthorizedOperation.EcdnProjectUnauthorized"
            case ecdnUserIsSuspended = "UnauthorizedOperation.EcdnUserIsSuspended"
            case ecdnUserNoWhitelist = "UnauthorizedOperation.EcdnUserNoWhitelist"
            case noPermission = "UnauthorizedOperation.NoPermission"
            case operationTooOften = "UnauthorizedOperation.OperationTooOften"
            case projectNoPermission = "UnauthorizedOperation.ProjectNoPermission"
            case projectsNoPermission = "UnauthorizedOperation.ProjectsNoPermission"
            case unknown = "UnauthorizedOperation.Unknown"
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

        /// 子账号禁止查询整体数据。
        public static var cdnAccountUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.cdnAccountUnauthorized)
        }

        /// 子账号未配置cam策略。
        public static var cdnCamUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.cdnCamUnauthorized)
        }

        /// ECDN子账号加速域名未授权。
        public static var cdnDomainUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.cdnDomainUnauthorized)
        }

        /// ECDN子账号加速域名未授权。
        public static var cdnHostUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.cdnHostUnauthorized)
        }

        /// 子账号没有授权域名权限，请授权后重试。
        public static var cdnNoDomainUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.cdnNoDomainUnauthorized)
        }

        /// 子账号项目未授权。
        public static var cdnProjectUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.cdnProjectUnauthorized)
        }

        /// ECDN 子账号加速域名未授权。
        public static var domainNoPermission: UnauthorizedOperation {
            UnauthorizedOperation(.domainNoPermission)
        }

        /// ECDN 子账号加速域名未授权。
        public static var domainsNoPermission: UnauthorizedOperation {
            UnauthorizedOperation(.domainsNoPermission)
        }

        /// 子账号禁止查询整体数据。
        public static var ecdnAccountUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnAccountUnauthorized)
        }

        /// 子账号未配置cam策略。
        public static var ecdnCamUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnCamUnauthorized)
        }

        /// 域名解析未进行验证。
        public static var ecdnDomainRecordNotVerified: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnDomainRecordNotVerified)
        }

        /// ECDN子账号加速域名未授权。
        public static var ecdnDomainUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnDomainUnauthorized)
        }

        /// 该域名属于其他账号，您没有权限接入。
        public static var ecdnHostIsOwnedByOther: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnHostIsOwnedByOther)
        }

        /// ECDN子账号加速域名未授权。
        public static var ecdnHostUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnHostUnauthorized)
        }

        /// 请前往CDN控制台进行操作 。
        public static var ecdnMigratedCdn: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnMigratedCdn)
        }

        /// 子账号没有授权域名权限，请授权后重试。
        public static var ecdnNoDomainUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnNoDomainUnauthorized)
        }

        /// 子账号项目未授权。
        public static var ecdnProjectUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnProjectUnauthorized)
        }

        /// 加速服务已停服，请重启加速服务后重试。
        public static var ecdnUserIsSuspended: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnUserIsSuspended)
        }

        /// 非内测白名单用户，无该功能使用权限。
        public static var ecdnUserNoWhitelist: UnauthorizedOperation {
            UnauthorizedOperation(.ecdnUserNoWhitelist)
        }

        /// ECDN 子账号cam未授权。
        public static var noPermission: UnauthorizedOperation {
            UnauthorizedOperation(.noPermission)
        }

        /// 操作过于频繁，请稍后重试 。
        public static var operationTooOften: UnauthorizedOperation {
            UnauthorizedOperation(.operationTooOften)
        }

        /// ECDN 子账号项目未授权。
        public static var projectNoPermission: UnauthorizedOperation {
            UnauthorizedOperation(.projectNoPermission)
        }

        /// ECDN 子账号项目未授权。
        public static var projectsNoPermission: UnauthorizedOperation {
            UnauthorizedOperation(.projectsNoPermission)
        }

        /// 未知错误,请稍后重试 。
        public static var unknown: UnauthorizedOperation {
            UnauthorizedOperation(.unknown)
        }

        public func asEcdnError() -> TCEcdnError {
            let code: TCEcdnError.Code
            switch self.error {
            case .cdnAccountUnauthorized:
                code = .unauthorizedOperation_CdnAccountUnauthorized
            case .cdnCamUnauthorized:
                code = .unauthorizedOperation_CdnCamUnauthorized
            case .cdnDomainUnauthorized:
                code = .unauthorizedOperation_CdnDomainUnauthorized
            case .cdnHostUnauthorized:
                code = .unauthorizedOperation_CdnHostUnauthorized
            case .cdnNoDomainUnauthorized:
                code = .unauthorizedOperation_CdnNoDomainUnauthorized
            case .cdnProjectUnauthorized:
                code = .unauthorizedOperation_CdnProjectUnauthorized
            case .domainNoPermission:
                code = .unauthorizedOperation_DomainNoPermission
            case .domainsNoPermission:
                code = .unauthorizedOperation_DomainsNoPermission
            case .ecdnAccountUnauthorized:
                code = .unauthorizedOperation_EcdnAccountUnauthorized
            case .ecdnCamUnauthorized:
                code = .unauthorizedOperation_EcdnCamUnauthorized
            case .ecdnDomainRecordNotVerified:
                code = .unauthorizedOperation_EcdnDomainRecordNotVerified
            case .ecdnDomainUnauthorized:
                code = .unauthorizedOperation_EcdnDomainUnauthorized
            case .ecdnHostIsOwnedByOther:
                code = .unauthorizedOperation_EcdnHostIsOwnedByOther
            case .ecdnHostUnauthorized:
                code = .unauthorizedOperation_EcdnHostUnauthorized
            case .ecdnMigratedCdn:
                code = .unauthorizedOperation_EcdnMigratedCdn
            case .ecdnNoDomainUnauthorized:
                code = .unauthorizedOperation_EcdnNoDomainUnauthorized
            case .ecdnProjectUnauthorized:
                code = .unauthorizedOperation_EcdnProjectUnauthorized
            case .ecdnUserIsSuspended:
                code = .unauthorizedOperation_EcdnUserIsSuspended
            case .ecdnUserNoWhitelist:
                code = .unauthorizedOperation_EcdnUserNoWhitelist
            case .noPermission:
                code = .unauthorizedOperation_NoPermission
            case .operationTooOften:
                code = .unauthorizedOperation_OperationTooOften
            case .projectNoPermission:
                code = .unauthorizedOperation_ProjectNoPermission
            case .projectsNoPermission:
                code = .unauthorizedOperation_ProjectsNoPermission
            case .unknown:
                code = .unauthorizedOperation_Unknown
            }
            return TCEcdnError(code, context: self.context)
        }
    }
}
