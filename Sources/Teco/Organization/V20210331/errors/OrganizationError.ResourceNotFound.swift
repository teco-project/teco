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

extension TCOrganizationError {
    public struct ResourceNotFound: TCOrganizationErrorType {
        enum Code: String {
            case memberIdentityNotExist = "ResourceNotFound.MemberIdentityNotExist"
            case memberNotExist = "ResourceNotFound.MemberNotExist"
            case memberPolicyNotExist = "ResourceNotFound.MemberPolicyNotExist"
            case organizationMemberNotExist = "ResourceNotFound.OrganizationMemberNotExist"
            case organizationNodeNotExist = "ResourceNotFound.OrganizationNodeNotExist"
            case organizationNotExist = "ResourceNotFound.OrganizationNotExist"
            case organizationServiceNotExist = "ResourceNotFound.OrganizationServiceNotExist"
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

        /// 成员可授权身份不存在。
        public static var memberIdentityNotExist: ResourceNotFound {
            ResourceNotFound(.memberIdentityNotExist)
        }

        /// 成员不存在。
        public static var memberNotExist: ResourceNotFound {
            ResourceNotFound(.memberNotExist)
        }

        /// 组织成员策略不存在。
        public static var memberPolicyNotExist: ResourceNotFound {
            ResourceNotFound(.memberPolicyNotExist)
        }

        /// 组织成员不存在。
        public static var organizationMemberNotExist: ResourceNotFound {
            ResourceNotFound(.organizationMemberNotExist)
        }

        /// 组织节点不在。
        public static var organizationNodeNotExist: ResourceNotFound {
            ResourceNotFound(.organizationNodeNotExist)
        }

        /// 企业组织不存在。
        public static var organizationNotExist: ResourceNotFound {
            ResourceNotFound(.organizationNotExist)
        }

        /// 集团服务不存在。
        public static var organizationServiceNotExist: ResourceNotFound {
            ResourceNotFound(.organizationServiceNotExist)
        }

        public func asOrganizationError() -> TCOrganizationError {
            let code: TCOrganizationError.Code
            switch self.error {
            case .memberIdentityNotExist:
                code = .resourceNotFound_MemberIdentityNotExist
            case .memberNotExist:
                code = .resourceNotFound_MemberNotExist
            case .memberPolicyNotExist:
                code = .resourceNotFound_MemberPolicyNotExist
            case .organizationMemberNotExist:
                code = .resourceNotFound_OrganizationMemberNotExist
            case .organizationNodeNotExist:
                code = .resourceNotFound_OrganizationNodeNotExist
            case .organizationNotExist:
                code = .resourceNotFound_OrganizationNotExist
            case .organizationServiceNotExist:
                code = .resourceNotFound_OrganizationServiceNotExist
            }
            return TCOrganizationError(code, context: self.context)
        }
    }
}
