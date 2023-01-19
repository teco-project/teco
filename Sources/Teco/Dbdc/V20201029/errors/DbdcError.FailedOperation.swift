//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCDbdcError {
    public struct FailedOperation: TCDbdcErrorType {
        enum Code: String {
            case modifyResourceInfoError = "FailedOperation.ModifyResourceInfoError"
            case ossAccessError = "FailedOperation.OssAccessError"
            case queryResourceError = "FailedOperation.QueryResourceError"
            case querySpecInfoError = "FailedOperation.QuerySpecInfoError"
            case other = "FailedOperation"
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

        /// 修改资源信息失败。
        public static var modifyResourceInfoError: FailedOperation {
            FailedOperation(.modifyResourceInfoError)
        }

        /// 访问管控服务失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var ossAccessError: FailedOperation {
            FailedOperation(.ossAccessError)
        }

        /// 查询资源信息失败。
        public static var queryResourceError: FailedOperation {
            FailedOperation(.queryResourceError)
        }

        /// 获取独享集群规格信息失败。
        public static var querySpecInfoError: FailedOperation {
            FailedOperation(.querySpecInfoError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asDbdcError() -> TCDbdcError {
            let code: TCDbdcError.Code
            switch self.error {
            case .modifyResourceInfoError:
                code = .failedOperation_ModifyResourceInfoError
            case .ossAccessError:
                code = .failedOperation_OssAccessError
            case .queryResourceError:
                code = .failedOperation_QueryResourceError
            case .querySpecInfoError:
                code = .failedOperation_QuerySpecInfoError
            case .other:
                code = .failedOperation
            }
            return TCDbdcError(code, context: self.context)
        }
    }
}
