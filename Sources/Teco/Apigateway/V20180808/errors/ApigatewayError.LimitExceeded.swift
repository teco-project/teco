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

extension TCApigatewayError {
    public struct LimitExceeded: TCApigatewayErrorType {
        enum Code: String {
            case accessKeyCountInUsagePlanLimitExceeded = "LimitExceeded.AccessKeyCountInUsagePlanLimitExceeded"
            case apiAppCountLimitExceeded = "LimitExceeded.ApiAppCountLimitExceeded"
            case apiCountLimitExceeded = "LimitExceeded.ApiCountLimitExceeded"
            case apiDocLimitExceeded = "LimitExceeded.APIDocLimitExceeded"
            case apiKeyCountLimitExceeded = "LimitExceeded.ApiKeyCountLimitExceeded"
            case exceededDefineMappingLimit = "LimitExceeded.ExceededDefineMappingLimit"
            case exceededDomainLimit = "LimitExceeded.ExceededDomainLimit"
            case ipStrategyLimitExceeded = "LimitExceeded.IpStrategyLimitExceeded"
            case requestLimitExceeded = "LimitExceeded.RequestLimitExceeded"
            case serviceCountForPluginLimitExceeded = "LimitExceeded.ServiceCountForPluginLimitExceeded"
            case serviceCountLimitExceeded = "LimitExceeded.ServiceCountLimitExceeded"
            case usagePlanLimitExceeded = "LimitExceeded.UsagePlanLimitExceeded"
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

        /// 访问密钥数量超出限制。
        public static var accessKeyCountInUsagePlanLimitExceeded: LimitExceeded {
            LimitExceeded(.accessKeyCountInUsagePlanLimitExceeded)
        }

        /// 服务绑定的应用数量超过限制。
        public static var apiAppCountLimitExceeded: LimitExceeded {
            LimitExceeded(.apiAppCountLimitExceeded)
        }

        /// API数量超过限制。
        public static var apiCountLimitExceeded: LimitExceeded {
            LimitExceeded(.apiCountLimitExceeded)
        }

        /// API文档数量超出限制。
        public static var apiDocLimitExceeded: LimitExceeded {
            LimitExceeded(.apiDocLimitExceeded)
        }

        /// 密钥数量超出限制。
        public static var apiKeyCountLimitExceeded: LimitExceeded {
            LimitExceeded(.apiKeyCountLimitExceeded)
        }

        /// 自定义路径映射，最多三组。
        public static var exceededDefineMappingLimit: LimitExceeded {
            LimitExceeded(.exceededDefineMappingLimit)
        }

        /// 绑定域名数量超出限制，默认最多5个。
        public static var exceededDomainLimit: LimitExceeded {
            LimitExceeded(.exceededDomainLimit)
        }

        /// IP策略数量超出限制。
        public static var ipStrategyLimitExceeded: LimitExceeded {
            LimitExceeded(.ipStrategyLimitExceeded)
        }

        /// 请求频率超限制，请稍等再试。
        public static var requestLimitExceeded: LimitExceeded {
            LimitExceeded(.requestLimitExceeded)
        }

        /// 插件绑定的服务数量超出限制，请解绑服务或提升限额后重试。
        public static var serviceCountForPluginLimitExceeded: LimitExceeded {
            LimitExceeded(.serviceCountForPluginLimitExceeded)
        }

        /// 服务数量超过限制，请删除服务或提升限额后重试。
        public static var serviceCountLimitExceeded: LimitExceeded {
            LimitExceeded(.serviceCountLimitExceeded)
        }

        /// 使用计划数量超出限制。
        public static var usagePlanLimitExceeded: LimitExceeded {
            LimitExceeded(.usagePlanLimitExceeded)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asApigatewayError() -> TCApigatewayError {
            let code: TCApigatewayError.Code
            switch self.error {
            case .accessKeyCountInUsagePlanLimitExceeded:
                code = .limitExceeded_AccessKeyCountInUsagePlanLimitExceeded
            case .apiAppCountLimitExceeded:
                code = .limitExceeded_ApiAppCountLimitExceeded
            case .apiCountLimitExceeded:
                code = .limitExceeded_ApiCountLimitExceeded
            case .apiDocLimitExceeded:
                code = .limitExceeded_APIDocLimitExceeded
            case .apiKeyCountLimitExceeded:
                code = .limitExceeded_ApiKeyCountLimitExceeded
            case .exceededDefineMappingLimit:
                code = .limitExceeded_ExceededDefineMappingLimit
            case .exceededDomainLimit:
                code = .limitExceeded_ExceededDomainLimit
            case .ipStrategyLimitExceeded:
                code = .limitExceeded_IpStrategyLimitExceeded
            case .requestLimitExceeded:
                code = .limitExceeded_RequestLimitExceeded
            case .serviceCountForPluginLimitExceeded:
                code = .limitExceeded_ServiceCountForPluginLimitExceeded
            case .serviceCountLimitExceeded:
                code = .limitExceeded_ServiceCountLimitExceeded
            case .usagePlanLimitExceeded:
                code = .limitExceeded_UsagePlanLimitExceeded
            case .other:
                code = .limitExceeded
            }
            return TCApigatewayError(code, context: self.context)
        }
    }
}
