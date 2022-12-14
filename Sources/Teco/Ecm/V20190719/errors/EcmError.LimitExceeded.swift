//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCEcmError {
    public struct LimitExceeded: TCEcmErrorType {
        enum Code: String {
            case addressQuotaLimitExceeded = "LimitExceeded.AddressQuotaLimitExceeded"
            case addressQuotaLimitExceededDailyAllocate = "LimitExceeded.AddressQuotaLimitExceededDailyAllocate"
            case attachedDiskLimitExceeded = "LimitExceeded.AttachedDiskLimitExceeded"
            case cidrBlock = "LimitExceeded.CidrBlock"
            case eniQuotaLimitExceeded = "LimitExceeded.EniQuotaLimitExceeded"
            case instanceSecurityGroupLimitExceeded = "LimitExceeded.InstanceSecurityGroupLimitExceeded"
            case lbLimitExceeded = "LimitExceeded.LBLimitExceeded"
            case moduleSecurityGroupLimitExceeded = "LimitExceeded.ModuleSecurityGroupLimitExceeded"
            case nicOrIPLimitExceeded = "LimitExceeded.NicOrIPLimitExceeded"
            case privateIPQuotaLimitExceeded = "LimitExceeded.PrivateIPQuotaLimitExceeded"
            case securityGroupInstanceLimitExceeded = "LimitExceeded.SecurityGroupInstanceLimitExceeded"
            case securityGroupModuleLimitExceeded = "LimitExceeded.SecurityGroupModuleLimitExceeded"
            case securityGroupPolicySet = "LimitExceeded.SecurityGroupPolicySet"
            case vcpuLimitExceeded = "LimitExceeded.VcpuLimitExceeded"
            case other = "LimitExceeded"
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

        /// ?????????????????????
        public static var addressQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.addressQuotaLimitExceeded)
        }

        /// ????????????????????????????????????????????????????????????????????????????????????*2 ??????
        public static var addressQuotaLimitExceededDailyAllocate: LimitExceeded {
            LimitExceeded(.addressQuotaLimitExceededDailyAllocate)
        }

        /// LimitExceeded.AttachedDiskLimitExceeded
        public static var attachedDiskLimitExceeded: LimitExceeded {
            LimitExceeded(.attachedDiskLimitExceeded)
        }

        /// ??????IPv6???????????????????????????
        public static var cidrBlock: LimitExceeded {
            LimitExceeded(.cidrBlock)
        }

        /// ?????????????????????
        public static var eniQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.eniQuotaLimitExceeded)
        }

        /// ???????????????????????????????????????
        public static var instanceSecurityGroupLimitExceeded: LimitExceeded {
            LimitExceeded(.instanceSecurityGroupLimitExceeded)
        }

        /// ?????????clb???????????????
        public static var lbLimitExceeded: LimitExceeded {
            LimitExceeded(.lbLimitExceeded)
        }

        /// ????????????????????????????????????
        public static var moduleSecurityGroupLimitExceeded: LimitExceeded {
            LimitExceeded(.moduleSecurityGroupLimitExceeded)
        }

        /// ?????????????????????IP?????????CPU??????????????????
        public static var nicOrIPLimitExceeded: LimitExceeded {
            LimitExceeded(.nicOrIPLimitExceeded)
        }

        /// ??????IP???????????????
        public static var privateIPQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.privateIPQuotaLimitExceeded)
        }

        /// ????????????????????????????????????
        public static var securityGroupInstanceLimitExceeded: LimitExceeded {
            LimitExceeded(.securityGroupInstanceLimitExceeded)
        }

        /// ???????????????????????????????????????
        public static var securityGroupModuleLimitExceeded: LimitExceeded {
            LimitExceeded(.securityGroupModuleLimitExceeded)
        }

        /// ????????????????????????????????????
        public static var securityGroupPolicySet: LimitExceeded {
            LimitExceeded(.securityGroupPolicySet)
        }

        /// ?????????cpu???????????????
        public static var vcpuLimitExceeded: LimitExceeded {
            LimitExceeded(.vcpuLimitExceeded)
        }

        /// ?????????????????????
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asEcmError() -> TCEcmError {
            let code: TCEcmError.Code
            switch self.error {
            case .addressQuotaLimitExceeded: 
                code = .limitExceeded_AddressQuotaLimitExceeded
            case .addressQuotaLimitExceededDailyAllocate: 
                code = .limitExceeded_AddressQuotaLimitExceededDailyAllocate
            case .attachedDiskLimitExceeded: 
                code = .limitExceeded_AttachedDiskLimitExceeded
            case .cidrBlock: 
                code = .limitExceeded_CidrBlock
            case .eniQuotaLimitExceeded: 
                code = .limitExceeded_EniQuotaLimitExceeded
            case .instanceSecurityGroupLimitExceeded: 
                code = .limitExceeded_InstanceSecurityGroupLimitExceeded
            case .lbLimitExceeded: 
                code = .limitExceeded_LBLimitExceeded
            case .moduleSecurityGroupLimitExceeded: 
                code = .limitExceeded_ModuleSecurityGroupLimitExceeded
            case .nicOrIPLimitExceeded: 
                code = .limitExceeded_NicOrIPLimitExceeded
            case .privateIPQuotaLimitExceeded: 
                code = .limitExceeded_PrivateIPQuotaLimitExceeded
            case .securityGroupInstanceLimitExceeded: 
                code = .limitExceeded_SecurityGroupInstanceLimitExceeded
            case .securityGroupModuleLimitExceeded: 
                code = .limitExceeded_SecurityGroupModuleLimitExceeded
            case .securityGroupPolicySet: 
                code = .limitExceeded_SecurityGroupPolicySet
            case .vcpuLimitExceeded: 
                code = .limitExceeded_VcpuLimitExceeded
            case .other: 
                code = .limitExceeded
            }
            return TCEcmError(code, context: self.context)
        }
    }
}
