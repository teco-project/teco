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

extension TCCloudauditError {
    public struct FailedOperation: TCCloudauditErrorType {
        enum Code: String {
            case checkClsTopicIsExistFailed = "FailedOperation.CheckClsTopicIsExistFailed"
            case checkCosBucketIsExistFailed = "FailedOperation.CheckCosBucketIsExistFailed"
            case createBucketFail = "FailedOperation.CreateBucketFail"
            case getClsTopicFailed = "FailedOperation.GetClsTopicFailed"
            case getCosBucketListFailed = "FailedOperation.GetCosBucketListFailed"
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

        /// 检查cls日志主题是否存在失败。
        public static var checkClsTopicIsExistFailed: FailedOperation {
            FailedOperation(.checkClsTopicIsExistFailed)
        }

        /// 检查cos桶是否存在失败。
        public static var checkCosBucketIsExistFailed: FailedOperation {
            FailedOperation(.checkCosBucketIsExistFailed)
        }

        /// 创建COS存储桶失败
        public static var createBucketFail: FailedOperation {
            FailedOperation(.createBucketFail)
        }

        /// 拉取cls日志主题失败。
        public static var getClsTopicFailed: FailedOperation {
            FailedOperation(.getClsTopicFailed)
        }

        /// 拉取cos存储桶列表失败。
        public static var getCosBucketListFailed: FailedOperation {
            FailedOperation(.getCosBucketListFailed)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asCloudauditError() -> TCCloudauditError {
            let code: TCCloudauditError.Code
            switch self.error {
            case .checkClsTopicIsExistFailed:
                code = .failedOperation_CheckClsTopicIsExistFailed
            case .checkCosBucketIsExistFailed:
                code = .failedOperation_CheckCosBucketIsExistFailed
            case .createBucketFail:
                code = .failedOperation_CreateBucketFail
            case .getClsTopicFailed:
                code = .failedOperation_GetClsTopicFailed
            case .getCosBucketListFailed:
                code = .failedOperation_GetCosBucketListFailed
            case .other:
                code = .failedOperation
            }
            return TCCloudauditError(code, context: self.context)
        }
    }
}
