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

extension TCMpsError {
    public struct FailedOperation: TCMpsErrorType {
        enum Code: String {
            case bucketNotifyAlreadyExist = "FailedOperation.BucketNotifyAlreadyExist"
            case cosStatusInavlid = "FailedOperation.CosStatusInavlid"
            case invalidMpsUser = "FailedOperation.InvalidMpsUser"
            case invalidUser = "FailedOperation.InvalidUser"
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

        /// 操作失败：bucket 已经设置通知。
        public static var bucketNotifyAlreadyExist: FailedOperation {
            FailedOperation(.bucketNotifyAlreadyExist)
        }

        /// 操作失败：COS 已经停服。
        public static var cosStatusInavlid: FailedOperation {
            FailedOperation(.cosStatusInavlid)
        }

        /// 操作失败：非法 mps 用户。
        public static var invalidMpsUser: FailedOperation {
            FailedOperation(.invalidMpsUser)
        }

        /// 操作失败：无效用户。
        public static var invalidUser: FailedOperation {
            FailedOperation(.invalidUser)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asMpsError() -> TCMpsError {
            let code: TCMpsError.Code
            switch self.error {
            case .bucketNotifyAlreadyExist:
                code = .failedOperation_BucketNotifyAlreadyExist
            case .cosStatusInavlid:
                code = .failedOperation_CosStatusInavlid
            case .invalidMpsUser:
                code = .failedOperation_InvalidMpsUser
            case .invalidUser:
                code = .failedOperation_InvalidUser
            case .other:
                code = .failedOperation
            }
            return TCMpsError(code, context: self.context)
        }
    }
}
