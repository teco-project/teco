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

extension TCEssbasicError {
    public struct UnauthorizedOperation: TCEssbasicErrorType {
        enum Code: String {
            case noPermissionFeature = "UnauthorizedOperation.NoPermissionFeature"
            case unauthorizedOperationDownload = "UnauthorizedOperation.UnauthorizedOperationDownload"
            case unauthorizedOperationOrganization = "UnauthorizedOperation.UnauthorizedOperationOrganization"
            case other = "UnauthorizedOperation"
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

        /// 请升级到对应版本后即可使用该接口。
        public static var noPermissionFeature: UnauthorizedOperation {
            UnauthorizedOperation(.noPermissionFeature)
        }

        /// 未授权下载权限。
        public static var unauthorizedOperationDownload: UnauthorizedOperation {
            UnauthorizedOperation(.unauthorizedOperationDownload)
        }

        /// 企业没有被授权。
        public static var unauthorizedOperationOrganization: UnauthorizedOperation {
            UnauthorizedOperation(.unauthorizedOperationOrganization)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .noPermissionFeature:
                code = .unauthorizedOperation_NoPermissionFeature
            case .unauthorizedOperationDownload:
                code = .unauthorizedOperation_UnauthorizedOperationDownload
            case .unauthorizedOperationOrganization:
                code = .unauthorizedOperation_UnauthorizedOperationOrganization
            case .other:
                code = .unauthorizedOperation
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
