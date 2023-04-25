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

extension TCApigatewayError {
    public struct InternalError: TCApigatewayErrorType {
        enum Code: String {
            case apigwException = "InternalError.ApigwException"
            case cauthException = "InternalError.CauthException"
            case clbException = "InternalError.ClbException"
            case ossException = "InternalError.OssException"
            case scfException = "InternalError.ScfException"
            case tsfException = "InternalError.TsfException"
            case vpcException = "InternalError.VpcException"
            case other = "InternalError"
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

        /// API网关内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
        public static var apigwException: InternalError {
            InternalError(.apigwException)
        }

        /// CAuth内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
        public static var cauthException: InternalError {
            InternalError(.cauthException)
        }

        /// CLB内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
        public static var clbException: InternalError {
            InternalError(.clbException)
        }

        /// oss内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
        public static var ossException: InternalError {
            InternalError(.ossException)
        }

        /// SCF内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
        public static var scfException: InternalError {
            InternalError(.scfException)
        }

        /// TSF内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
        public static var tsfException: InternalError {
            InternalError(.tsfException)
        }

        /// vpc内部请求错误，请稍后重试。若无法解决，请联系智能客服或提交工单。
        public static var vpcException: InternalError {
            InternalError(.vpcException)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asApigatewayError() -> TCApigatewayError {
            let code: TCApigatewayError.Code
            switch self.error {
            case .apigwException:
                code = .internalError_ApigwException
            case .cauthException:
                code = .internalError_CauthException
            case .clbException:
                code = .internalError_ClbException
            case .ossException:
                code = .internalError_OssException
            case .scfException:
                code = .internalError_ScfException
            case .tsfException:
                code = .internalError_TsfException
            case .vpcException:
                code = .internalError_VpcException
            case .other:
                code = .internalError
            }
            return TCApigatewayError(code, context: self.context)
        }
    }
}
