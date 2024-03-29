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

extension TCCamError {
    public struct OperationDenied: TCCamErrorType {
        enum Code: String {
            case accessKeyOverLimit = "OperationDenied.AccessKeyOverLimit"
            case haveKeys = "OperationDenied.HaveKeys"
            case subUin = "OperationDenied.SubUin"
            case uinNotMatch = "OperationDenied.UinNotMatch"
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

        /// 每个账号最多支持两个AccessKey。
        public static var accessKeyOverLimit: OperationDenied {
            OperationDenied(.accessKeyOverLimit)
        }

        /// 存在未删除的API密钥。
        public static var haveKeys: OperationDenied {
            OperationDenied(.haveKeys)
        }

        /// 子用户不允许操作主账号密钥。
        public static var subUin: OperationDenied {
            OperationDenied(.subUin)
        }

        /// 被操作密钥与账号不匹配。
        public static var uinNotMatch: OperationDenied {
            OperationDenied(.uinNotMatch)
        }

        public func asCamError() -> TCCamError {
            let code: TCCamError.Code
            switch self.error {
            case .accessKeyOverLimit:
                code = .operationDenied_AccessKeyOverLimit
            case .haveKeys:
                code = .operationDenied_HaveKeys
            case .subUin:
                code = .operationDenied_SubUin
            case .uinNotMatch:
                code = .operationDenied_UinNotMatch
            }
            return TCCamError(code, context: self.context)
        }
    }
}
