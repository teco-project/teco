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

extension TCPostgresError {
    public struct InvalidParameter: TCPostgresErrorType {
        enum Code: String {
            case instanceNameExist = "InvalidParameter.InstanceNameExist"
            case parameterCheckError = "InvalidParameter.ParameterCheckError"
            case tradeAccessDeniedError = "InvalidParameter.TradeAccessDeniedError"
            case vpcNotFoundError = "InvalidParameter.VpcNotFoundError"
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

        /// 实例名已存在。
        public static var instanceNameExist: InvalidParameter {
            InvalidParameter(.instanceNameExist)
        }

        /// 参数检查失败。
        public static var parameterCheckError: InvalidParameter {
            InvalidParameter(.parameterCheckError)
        }

        /// pid错误。
        public static var tradeAccessDeniedError: InvalidParameter {
            InvalidParameter(.tradeAccessDeniedError)
        }

        /// 未获取到VPC信息。
        public static var vpcNotFoundError: InvalidParameter {
            InvalidParameter(.vpcNotFoundError)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asPostgresError() -> TCPostgresError {
            let code: TCPostgresError.Code
            switch self.error {
            case .instanceNameExist:
                code = .invalidParameter_InstanceNameExist
            case .parameterCheckError:
                code = .invalidParameter_ParameterCheckError
            case .tradeAccessDeniedError:
                code = .invalidParameter_TradeAccessDeniedError
            case .vpcNotFoundError:
                code = .invalidParameter_VpcNotFoundError
            case .other:
                code = .invalidParameter
            }
            return TCPostgresError(code, context: self.context)
        }
    }
}
