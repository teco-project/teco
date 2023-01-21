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

extension TCLighthouseError {
    public struct InvalidParameter: TCLighthouseErrorType {
        enum Code: String {
            case bundleAndBlueprintNotMatch = "InvalidParameter.BundleAndBlueprintNotMatch"
            case bundleIdNotFound = "InvalidParameter.BundleIdNotFound"
            case filterValueLimitExceeded = "InvalidParameter.FilterValueLimitExceeded"
            case firewallRulesDuplicated = "InvalidParameter.FirewallRulesDuplicated"
            case firewallRulesExist = "InvalidParameter.FirewallRulesExist"
            case invalidFilter = "InvalidParameter.InvalidFilter"
            case invalidFilterInvalidKey = "InvalidParameter.InvalidFilterInvalidKey"
            case invalidFilterInvalidNameNotStr = "InvalidParameter.InvalidFilterInvalidNameNotStr"
            case invalidFilterInvalidValuesNotList = "InvalidParameter.InvalidFilterInvalidValuesNotList"
            case invalidFilterNotDict = "InvalidParameter.InvalidFilterNotDict"
            case invalidFilterNotSupportedName = "InvalidParameter.InvalidFilterNotSupportedName"
            case onlyAllowModifyOneAttribute = "InvalidParameter.OnlyAllowModifyOneAttribute"
            case parameterConflict = "InvalidParameter.ParameterConflict"
            case other = "InvalidParameter"
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

        /// 套餐和镜像不匹配。
        ///
        /// 更换套餐或者更换镜像。
        public static var bundleAndBlueprintNotMatch: InvalidParameter {
            InvalidParameter(.bundleAndBlueprintNotMatch)
        }

        /// 产品未定义的套餐 ID。
        public static var bundleIdNotFound: InvalidParameter {
            InvalidParameter(.bundleIdNotFound)
        }

        /// 参数非法，Filter 参数中的 Values 取值数量超过允许的最大数量。
        public static var filterValueLimitExceeded: InvalidParameter {
            InvalidParameter(.filterValueLimitExceeded)
        }

        /// 参数非法，防火墙规则重复。
        public static var firewallRulesDuplicated: InvalidParameter {
            InvalidParameter(.firewallRulesDuplicated)
        }

        /// 参数非法，防火墙规则已存在。
        public static var firewallRulesExist: InvalidParameter {
            InvalidParameter(.firewallRulesExist)
        }

        /// 参数非法，Filter 参数非法。
        public static var invalidFilter: InvalidParameter {
            InvalidParameter(.invalidFilter)
        }

        /// 参数非法，Filter 参数中的 Name 取值非法。
        public static var invalidFilterInvalidKey: InvalidParameter {
            InvalidParameter(.invalidFilterInvalidKey)
        }

        /// 参数非法，Filter 参数中的 Name 取值不是字符串。
        public static var invalidFilterInvalidNameNotStr: InvalidParameter {
            InvalidParameter(.invalidFilterInvalidNameNotStr)
        }

        /// 参数非法，Filter 参数中的 Values 不是列表。
        public static var invalidFilterInvalidValuesNotList: InvalidParameter {
            InvalidParameter(.invalidFilterInvalidValuesNotList)
        }

        /// 参数非法，Filter 参数不是字典。
        public static var invalidFilterNotDict: InvalidParameter {
            InvalidParameter(.invalidFilterNotDict)
        }

        /// 参数非法，Filter 参数中有不支持的 Name。
        public static var invalidFilterNotSupportedName: InvalidParameter {
            InvalidParameter(.invalidFilterNotSupportedName)
        }

        /// 参数非法，每次只能修改一个属性。
        public static var onlyAllowModifyOneAttribute: InvalidParameter {
            InvalidParameter(.onlyAllowModifyOneAttribute)
        }

        /// 参数非法，参数冲突。
        public static var parameterConflict: InvalidParameter {
            InvalidParameter(.parameterConflict)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asLighthouseError() -> TCLighthouseError {
            let code: TCLighthouseError.Code
            switch self.error {
            case .bundleAndBlueprintNotMatch:
                code = .invalidParameter_BundleAndBlueprintNotMatch
            case .bundleIdNotFound:
                code = .invalidParameter_BundleIdNotFound
            case .filterValueLimitExceeded:
                code = .invalidParameter_FilterValueLimitExceeded
            case .firewallRulesDuplicated:
                code = .invalidParameter_FirewallRulesDuplicated
            case .firewallRulesExist:
                code = .invalidParameter_FirewallRulesExist
            case .invalidFilter:
                code = .invalidParameter_InvalidFilter
            case .invalidFilterInvalidKey:
                code = .invalidParameter_InvalidFilterInvalidKey
            case .invalidFilterInvalidNameNotStr:
                code = .invalidParameter_InvalidFilterInvalidNameNotStr
            case .invalidFilterInvalidValuesNotList:
                code = .invalidParameter_InvalidFilterInvalidValuesNotList
            case .invalidFilterNotDict:
                code = .invalidParameter_InvalidFilterNotDict
            case .invalidFilterNotSupportedName:
                code = .invalidParameter_InvalidFilterNotSupportedName
            case .onlyAllowModifyOneAttribute:
                code = .invalidParameter_OnlyAllowModifyOneAttribute
            case .parameterConflict:
                code = .invalidParameter_ParameterConflict
            case .other:
                code = .invalidParameter
            }
            return TCLighthouseError(code, context: self.context)
        }
    }
}
