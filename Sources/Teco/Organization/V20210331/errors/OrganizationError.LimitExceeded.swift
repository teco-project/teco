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

extension TCOrganizationError {
    public struct LimitExceeded: TCOrganizationErrorType {
        enum Code: String {
            case createMemberOverLimit = "LimitExceeded.CreateMemberOverLimit"
            case emailBindOverLimit = "LimitExceeded.EmailBindOverLimit"
            case nodeDepthExceedLimit = "LimitExceeded.NodeDepthExceedLimit"
            case nodeExceedLimit = "LimitExceeded.NodeExceedLimit"
            case organizationMemberOverLimit = "LimitExceeded.OrganizationMemberOverLimit"
            case phoneNumBound = "LimitExceeded.PhoneNumBound"
            case updateEmailBindOverLimit = "LimitExceeded.UpdateEmailBindOverLimit"
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

        /// 配置邮箱超过当日上限。
        public static var emailBindOverLimit: LimitExceeded {
            LimitExceeded(.emailBindOverLimit)
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

        /// 手机超过绑定上限。
        public static var phoneNumBound: LimitExceeded {
            LimitExceeded(.phoneNumBound)
        }

        /// 修改成员绑定信息超过限制。
        public static var updateEmailBindOverLimit: LimitExceeded {
            LimitExceeded(.updateEmailBindOverLimit)
        }

        public func asOrganizationError() -> TCOrganizationError {
            let code: TCOrganizationError.Code
            switch self.error {
            case .createMemberOverLimit:
                code = .limitExceeded_CreateMemberOverLimit
            case .emailBindOverLimit:
                code = .limitExceeded_EmailBindOverLimit
            case .nodeDepthExceedLimit:
                code = .limitExceeded_NodeDepthExceedLimit
            case .nodeExceedLimit:
                code = .limitExceeded_NodeExceedLimit
            case .organizationMemberOverLimit:
                code = .limitExceeded_OrganizationMemberOverLimit
            case .phoneNumBound:
                code = .limitExceeded_PhoneNumBound
            case .updateEmailBindOverLimit:
                code = .limitExceeded_UpdateEmailBindOverLimit
            }
            return TCOrganizationError(code, context: self.context)
        }
    }
}
