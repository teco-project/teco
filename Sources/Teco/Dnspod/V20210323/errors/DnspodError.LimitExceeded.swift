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

extension TCDnspodError {
    public struct LimitExceeded: TCDnspodErrorType {
        enum Code: String {
            case aaaaCountLimit = "LimitExceeded.AAAACountLimit"
            case atNsRecordLimit = "LimitExceeded.AtNsRecordLimit"
            case domainAliasCountExceeded = "LimitExceeded.DomainAliasCountExceeded"
            case domainAliasNumberLimit = "LimitExceeded.DomainAliasNumberLimit"
            case failedLoginLimitExceeded = "LimitExceeded.FailedLoginLimitExceeded"
            case groupNumberLimit = "LimitExceeded.GroupNumberLimit"
            case hiddenUrlExceeded = "LimitExceeded.HiddenUrlExceeded"
            case nsCountLimit = "LimitExceeded.NsCountLimit"
            case offsetExceeded = "LimitExceeded.OffsetExceeded"
            case recordTtlLimit = "LimitExceeded.RecordTtlLimit"
            case srvCountLimit = "LimitExceeded.SrvCountLimit"
            case subdomainLevelLimit = "LimitExceeded.SubdomainLevelLimit"
            case subdomainRollLimit = "LimitExceeded.SubdomainRollLimit"
            case subdomainWcardLimit = "LimitExceeded.SubdomainWcardLimit"
            case urlCountLimit = "LimitExceeded.UrlCountLimit"
            case other = "LimitExceeded"
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

        /// AAAA记录数量超出限制。
        public static var aaaaCountLimit: LimitExceeded {
            LimitExceeded(.aaaaCountLimit)
        }

        /// @的NS记录只能设置为默认线路。
        public static var atNsRecordLimit: LimitExceeded {
            LimitExceeded(.atNsRecordLimit)
        }

        /// 别名数量已经达到限制。
        public static var domainAliasCountExceeded: LimitExceeded {
            LimitExceeded(.domainAliasCountExceeded)
        }

        /// 当前绑定别名数量已达到限制。
        public static var domainAliasNumberLimit: LimitExceeded {
            LimitExceeded(.domainAliasNumberLimit)
        }

        /// 登录失败次数过多已被系统封禁。
        public static var failedLoginLimitExceeded: LimitExceeded {
            LimitExceeded(.failedLoginLimitExceeded)
        }

        /// 已经达到最大分组数量限制。
        public static var groupNumberLimit: LimitExceeded {
            LimitExceeded(.groupNumberLimit)
        }

        /// 该域名使用的套餐不支持隐性URL转发或数量已达上限，如需要使用，请去商城购买。
        public static var hiddenUrlExceeded: LimitExceeded {
            LimitExceeded(.hiddenUrlExceeded)
        }

        /// NS记录数量超出限制。
        public static var nsCountLimit: LimitExceeded {
            LimitExceeded(.nsCountLimit)
        }

        /// 分页起始数量过大。
        public static var offsetExceeded: LimitExceeded {
            LimitExceeded(.offsetExceeded)
        }

        /// 记录的TTL值超出了限制。
        public static var recordTtlLimit: LimitExceeded {
            LimitExceeded(.recordTtlLimit)
        }

        /// SRV记录数量超出限制。
        public static var srvCountLimit: LimitExceeded {
            LimitExceeded(.srvCountLimit)
        }

        /// 子域名级数超出限制。
        public static var subdomainLevelLimit: LimitExceeded {
            LimitExceeded(.subdomainLevelLimit)
        }

        /// 子域名负载均衡数量超出限制。
        public static var subdomainRollLimit: LimitExceeded {
            LimitExceeded(.subdomainRollLimit)
        }

        /// 泛解析级数超出限制。
        public static var subdomainWcardLimit: LimitExceeded {
            LimitExceeded(.subdomainWcardLimit)
        }

        /// 该域名的显性URL转发数量已达上限，如需继续使用，请去商城购买。
        public static var urlCountLimit: LimitExceeded {
            LimitExceeded(.urlCountLimit)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asDnspodError() -> TCDnspodError {
            let code: TCDnspodError.Code
            switch self.error {
            case .aaaaCountLimit:
                code = .limitExceeded_AAAACountLimit
            case .atNsRecordLimit:
                code = .limitExceeded_AtNsRecordLimit
            case .domainAliasCountExceeded:
                code = .limitExceeded_DomainAliasCountExceeded
            case .domainAliasNumberLimit:
                code = .limitExceeded_DomainAliasNumberLimit
            case .failedLoginLimitExceeded:
                code = .limitExceeded_FailedLoginLimitExceeded
            case .groupNumberLimit:
                code = .limitExceeded_GroupNumberLimit
            case .hiddenUrlExceeded:
                code = .limitExceeded_HiddenUrlExceeded
            case .nsCountLimit:
                code = .limitExceeded_NsCountLimit
            case .offsetExceeded:
                code = .limitExceeded_OffsetExceeded
            case .recordTtlLimit:
                code = .limitExceeded_RecordTtlLimit
            case .srvCountLimit:
                code = .limitExceeded_SrvCountLimit
            case .subdomainLevelLimit:
                code = .limitExceeded_SubdomainLevelLimit
            case .subdomainRollLimit:
                code = .limitExceeded_SubdomainRollLimit
            case .subdomainWcardLimit:
                code = .limitExceeded_SubdomainWcardLimit
            case .urlCountLimit:
                code = .limitExceeded_UrlCountLimit
            case .other:
                code = .limitExceeded
            }
            return TCDnspodError(code, context: self.context)
        }
    }
}
