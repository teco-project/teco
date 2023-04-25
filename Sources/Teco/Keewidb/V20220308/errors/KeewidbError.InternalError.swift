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

extension TCKeewidbError {
    public struct InternalError: TCKeewidbErrorType {
        enum Code: String {
            case camAuthOssResponseReturnCodeError = "InternalError.CamAuthOssResponseReturnCodeError"
            case dbOperationFailed = "InternalError.DbOperationFailed"
            case execHttpRequestError = "InternalError.ExecHttpRequestError"
            case instanceOperatePermissionError = "InternalError.InstanceOperatePermissionError"
            case internalError = "InternalError.InternalError"
            case listInstancesError = "InternalError.ListInstancesError"
            case netWorkErr = "InternalError.NetWorkErr"
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

        /// cam鉴权错误。
        public static var camAuthOssResponseReturnCodeError: InternalError {
            InternalError(.camAuthOssResponseReturnCodeError)
        }

        /// 统一的 DB 操作错误，可以是 update insert select..。
        public static var dbOperationFailed: InternalError {
            InternalError(.dbOperationFailed)
        }

        /// 执行Http请求失败。
        public static var execHttpRequestError: InternalError {
            InternalError(.execHttpRequestError)
        }

        /// 无操作权限。
        public static var instanceOperatePermissionError: InternalError {
            InternalError(.instanceOperatePermissionError)
        }

        /// 内部错误。
        public static var internalError: InternalError {
            InternalError(.internalError)
        }

        /// 获取实例列表出错。
        public static var listInstancesError: InternalError {
            InternalError(.listInstancesError)
        }

        /// 网络错误。
        public static var netWorkErr: InternalError {
            InternalError(.netWorkErr)
        }

        public func asKeewidbError() -> TCKeewidbError {
            let code: TCKeewidbError.Code
            switch self.error {
            case .camAuthOssResponseReturnCodeError:
                code = .internalError_CamAuthOssResponseReturnCodeError
            case .dbOperationFailed:
                code = .internalError_DbOperationFailed
            case .execHttpRequestError:
                code = .internalError_ExecHttpRequestError
            case .instanceOperatePermissionError:
                code = .internalError_InstanceOperatePermissionError
            case .internalError:
                code = .internalError_InternalError
            case .listInstancesError:
                code = .internalError_ListInstancesError
            case .netWorkErr:
                code = .internalError_NetWorkErr
            }
            return TCKeewidbError(code, context: self.context)
        }
    }
}
