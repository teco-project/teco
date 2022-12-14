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

        /// ???????????????????????????
        ///
        /// ?????????????????????????????????
        public static var bundleAndBlueprintNotMatch: InvalidParameter {
            InvalidParameter(.bundleAndBlueprintNotMatch)
        }

        /// ???????????????????????? ID???
        public static var bundleIdNotFound: InvalidParameter {
            InvalidParameter(.bundleIdNotFound)
        }

        /// ???????????????Filter ???????????? Values ??????????????????????????????????????????
        public static var filterValueLimitExceeded: InvalidParameter {
            InvalidParameter(.filterValueLimitExceeded)
        }

        /// ???????????????????????????????????????
        public static var firewallRulesDuplicated: InvalidParameter {
            InvalidParameter(.firewallRulesDuplicated)
        }

        /// ??????????????????????????????????????????
        public static var firewallRulesExist: InvalidParameter {
            InvalidParameter(.firewallRulesExist)
        }

        /// ???????????????Filter ???????????????
        public static var invalidFilter: InvalidParameter {
            InvalidParameter(.invalidFilter)
        }

        /// ???????????????Filter ???????????? Name ???????????????
        public static var invalidFilterInvalidKey: InvalidParameter {
            InvalidParameter(.invalidFilterInvalidKey)
        }

        /// ???????????????Filter ???????????? Name ????????????????????????
        public static var invalidFilterInvalidNameNotStr: InvalidParameter {
            InvalidParameter(.invalidFilterInvalidNameNotStr)
        }

        /// ???????????????Filter ???????????? Values ???????????????
        public static var invalidFilterInvalidValuesNotList: InvalidParameter {
            InvalidParameter(.invalidFilterInvalidValuesNotList)
        }

        /// ???????????????Filter ?????????????????????
        public static var invalidFilterNotDict: InvalidParameter {
            InvalidParameter(.invalidFilterNotDict)
        }

        /// ???????????????Filter ???????????????????????? Name???
        public static var invalidFilterNotSupportedName: InvalidParameter {
            InvalidParameter(.invalidFilterNotSupportedName)
        }

        /// ????????????????????????????????????????????????
        public static var onlyAllowModifyOneAttribute: InvalidParameter {
            InvalidParameter(.onlyAllowModifyOneAttribute)
        }

        /// ??????????????????????????????
        public static var parameterConflict: InvalidParameter {
            InvalidParameter(.parameterConflict)
        }

        /// ???????????????
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
