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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCVpcError {
    public struct InvalidParameter: TCVpcErrorType {
        enum Code: String {
            case aclTypeMismatch = "InvalidParameter.AclTypeMismatch"
            case coexist = "InvalidParameter.Coexist"
            case filterInvalidKey = "InvalidParameter.FilterInvalidKey"
            case filterNotDict = "InvalidParameter.FilterNotDict"
            case filterValuesNotList = "InvalidParameter.FilterValuesNotList"
            case invalidFilter = "InvalidParameter.InvalidFilter"
            case nextHopMismatch = "InvalidParameter.NextHopMismatch"
            case vpgHaGroupNotFound = "InvalidParameter.VpgHaGroupNotFound"
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

        /// ACL ID与ACL类型不匹配。
        ///
        /// 请求的ACL类型参数，和ACL后台的类型（三元组、五元组）不匹配。请查询ACL实际类型后重试。
        public static var aclTypeMismatch: InvalidParameter {
            InvalidParameter(.aclTypeMismatch)
        }

        /// 参数不支持同时指定。
        public static var coexist: InvalidParameter {
            InvalidParameter(.coexist)
        }

        /// 指定过滤条件不存在。
        public static var filterInvalidKey: InvalidParameter {
            InvalidParameter(.filterInvalidKey)
        }

        /// 指定过滤条件不是键值对。
        public static var filterNotDict: InvalidParameter {
            InvalidParameter(.filterNotDict)
        }

        /// 指定过滤选项值不是列表。
        public static var filterValuesNotList: InvalidParameter {
            InvalidParameter(.filterValuesNotList)
        }

        /// 该过滤规则不合法。
        public static var invalidFilter: InvalidParameter {
            InvalidParameter(.invalidFilter)
        }

        /// 下一跳类型与下一跳网关不匹配。
        public static var nextHopMismatch: InvalidParameter {
            InvalidParameter(.nextHopMismatch)
        }

        /// 专线网关跨可用区容灾组不存在。
        public static var vpgHaGroupNotFound: InvalidParameter {
            InvalidParameter(.vpgHaGroupNotFound)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .aclTypeMismatch:
                code = .invalidParameter_AclTypeMismatch
            case .coexist:
                code = .invalidParameter_Coexist
            case .filterInvalidKey:
                code = .invalidParameter_FilterInvalidKey
            case .filterNotDict:
                code = .invalidParameter_FilterNotDict
            case .filterValuesNotList:
                code = .invalidParameter_FilterValuesNotList
            case .invalidFilter:
                code = .invalidParameter_InvalidFilter
            case .nextHopMismatch:
                code = .invalidParameter_NextHopMismatch
            case .vpgHaGroupNotFound:
                code = .invalidParameter_VpgHaGroupNotFound
            case .other:
                code = .invalidParameter
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
