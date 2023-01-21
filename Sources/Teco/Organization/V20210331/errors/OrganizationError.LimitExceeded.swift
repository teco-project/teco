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

extension TCOrganizationError {
    public struct LimitExceeded: TCOrganizationErrorType {
        enum Code: String {
            case createMemberOverLimit = "LimitExceeded.CreateMemberOverLimit"
            case nodeDepthExceedLimit = "LimitExceeded.NodeDepthExceedLimit"
            case nodeExceedLimit = "LimitExceeded.NodeExceedLimit"
            case organizationMemberOverLimit = "LimitExceeded.OrganizationMemberOverLimit"
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

        /// 创建成员超过上限。
        public static var createMemberOverLimit: LimitExceeded {
            LimitExceeded(.createMemberOverLimit)
        }

        /// 企业组织单元层级太多。
        public static var nodeDepthExceedLimit: LimitExceeded {
            LimitExceeded(.nodeDepthExceedLimit)
        }

        /// 组织单元数量超过上限。
        public static var nodeExceedLimit: LimitExceeded {
            LimitExceeded(.nodeExceedLimit)
        }

        /// 成员超过上限。
        public static var organizationMemberOverLimit: LimitExceeded {
            LimitExceeded(.organizationMemberOverLimit)
        }

        public func asOrganizationError() -> TCOrganizationError {
            let code: TCOrganizationError.Code
            switch self.error {
            case .createMemberOverLimit:
                code = .limitExceeded_CreateMemberOverLimit
            case .nodeDepthExceedLimit:
                code = .limitExceeded_NodeDepthExceedLimit
            case .nodeExceedLimit:
                code = .limitExceeded_NodeExceedLimit
            case .organizationMemberOverLimit:
                code = .limitExceeded_OrganizationMemberOverLimit
            }
            return TCOrganizationError(code, context: self.context)
        }
    }
}
