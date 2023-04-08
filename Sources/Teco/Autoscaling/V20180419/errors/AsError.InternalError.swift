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

extension TCAsError {
    public struct InternalError: TCAsErrorType {
        enum Code: String {
            case callCmqError = "InternalError.CallCmqError"
            case callError = "InternalError.CallError"
            case callLbError = "InternalError.CallLbError"
            case callMonitorError = "InternalError.CallMonitorError"
            case callNotificationError = "InternalError.CallNotificationError"
            case callStsError = "InternalError.CallStsError"
            case callTATError = "InternalError.CallTATError"
            case callTagError = "InternalError.CallTagError"
            case callTvpcError = "InternalError.CallTvpcError"
            case callVpcError = "InternalError.CallVpcError"
            case calleeError = "InternalError.CalleeError"
            case requestError = "InternalError.RequestError"
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

        /// Cmq 接口调用失败。
        public static var callCmqError: InternalError {
            InternalError(.callCmqError)
        }

        /// 内部接口调用失败。
        public static var callError: InternalError {
            InternalError(.callError)
        }

        /// LB 接口调用失败。
        public static var callLbError: InternalError {
            InternalError(.callLbError)
        }

        /// Monitor接口调用失败。
        public static var callMonitorError: InternalError {
            InternalError(.callMonitorError)
        }

        /// 通知服务接口调用失败。
        public static var callNotificationError: InternalError {
            InternalError(.callNotificationError)
        }

        /// STS 接口调用失败。
        public static var callStsError: InternalError {
            InternalError(.callStsError)
        }

        /// TAT 接口调用失败。
        public static var callTATError: InternalError {
            InternalError(.callTATError)
        }

        /// Tag 接口调用失败。
        public static var callTagError: InternalError {
            InternalError(.callTagError)
        }

        /// Tvpc 接口调用失败。
        public static var callTvpcError: InternalError {
            InternalError(.callTvpcError)
        }

        /// VPC接口调用失败。
        public static var callVpcError: InternalError {
            InternalError(.callVpcError)
        }

        /// 调用其他服务异常。
        public static var calleeError: InternalError {
            InternalError(.calleeError)
        }

        /// 内部请求错误。
        public static var requestError: InternalError {
            InternalError(.requestError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asAsError() -> TCAsError {
            let code: TCAsError.Code
            switch self.error {
            case .callCmqError:
                code = .internalError_CallCmqError
            case .callError:
                code = .internalError_CallError
            case .callLbError:
                code = .internalError_CallLbError
            case .callMonitorError:
                code = .internalError_CallMonitorError
            case .callNotificationError:
                code = .internalError_CallNotificationError
            case .callStsError:
                code = .internalError_CallStsError
            case .callTATError:
                code = .internalError_CallTATError
            case .callTagError:
                code = .internalError_CallTagError
            case .callTvpcError:
                code = .internalError_CallTvpcError
            case .callVpcError:
                code = .internalError_CallVpcError
            case .calleeError:
                code = .internalError_CalleeError
            case .requestError:
                code = .internalError_RequestError
            case .other:
                code = .internalError
            }
            return TCAsError(code, context: self.context)
        }
    }
}
