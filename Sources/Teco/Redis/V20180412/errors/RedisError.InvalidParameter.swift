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

extension TCRedisError {
    public struct InvalidParameter: TCRedisErrorType {
        enum Code: String {
            case actionNotFound = "InvalidParameter.ActionNotFound"
            case emptyParam = "InvalidParameter.EmptyParam"
            case illegalParameterError = "InvalidParameter.IllegalParameterError"
            case instanceSGOverLimitError = "InvalidParameter.InstanceSGOverLimitError"
            case invalidParameter = "InvalidParameter.InvalidParameter"
            case isNotVpcInstance = "InvalidParameter.IsNotVpcInstance"
            case notSupported = "InvalidParameter.NotSupported"
            case onlyVPCOnSpecZoneId = "InvalidParameter.OnlyVPCOnSpecZoneId"
            case period = "InvalidParameter.Period"
            case permissionDenied = "InvalidParameter.PermissionDenied"
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

        /// 没有找到对应接口。
        public static var actionNotFound: InvalidParameter {
            InvalidParameter(.actionNotFound)
        }

        /// 参数为空。
        public static var emptyParam: InvalidParameter {
            InvalidParameter(.emptyParam)
        }

        /// 非法参数错误。
        public static var illegalParameterError: InvalidParameter {
            InvalidParameter(.illegalParameterError)
        }

        /// 实例安全组超过限制。
        public static var instanceSGOverLimitError: InvalidParameter {
            InvalidParameter(.instanceSGOverLimitError)
        }

        /// 业务参数错误。
        public static var invalidParameter: InvalidParameter {
            InvalidParameter(.invalidParameter)
        }

        /// 不是vpc网络下实例。
        public static var isNotVpcInstance: InvalidParameter {
            InvalidParameter(.isNotVpcInstance)
        }

        /// 参数错误，不支持操作。
        public static var notSupported: InvalidParameter {
            InvalidParameter(.notSupported)
        }

        /// 上海金融只提供vpc网络。
        public static var onlyVPCOnSpecZoneId: InvalidParameter {
            InvalidParameter(.onlyVPCOnSpecZoneId)
        }

        /// 时间格式或者范围不符合要求。
        public static var period: InvalidParameter {
            InvalidParameter(.period)
        }

        /// 接口没有cam权限。
        public static var permissionDenied: InvalidParameter {
            InvalidParameter(.permissionDenied)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asRedisError() -> TCRedisError {
            let code: TCRedisError.Code
            switch self.error {
            case .actionNotFound:
                code = .invalidParameter_ActionNotFound
            case .emptyParam:
                code = .invalidParameter_EmptyParam
            case .illegalParameterError:
                code = .invalidParameter_IllegalParameterError
            case .instanceSGOverLimitError:
                code = .invalidParameter_InstanceSGOverLimitError
            case .invalidParameter:
                code = .invalidParameter_InvalidParameter
            case .isNotVpcInstance:
                code = .invalidParameter_IsNotVpcInstance
            case .notSupported:
                code = .invalidParameter_NotSupported
            case .onlyVPCOnSpecZoneId:
                code = .invalidParameter_OnlyVPCOnSpecZoneId
            case .period:
                code = .invalidParameter_Period
            case .permissionDenied:
                code = .invalidParameter_PermissionDenied
            case .other:
                code = .invalidParameter
            }
            return TCRedisError(code, context: self.context)
        }
    }
}
