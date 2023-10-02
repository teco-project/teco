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

extension TCTeoError {
    public struct OperationDenied: TCTeoErrorType {
        enum Code: String {
            case accelerateMainlandDisable = "OperationDenied.AccelerateMainlandDisable"
            case accelerateMainlandIpv6Conflict = "OperationDenied.AccelerateMainlandIpv6Conflict"
            case configLocked = "OperationDenied.ConfigLocked"
            case disableZoneNotCompleted = "OperationDenied.DisableZoneNotCompleted"
            case domainInShareCnameGroup = "OperationDenied.DomainInShareCnameGroup"
            case domainIsBlocked = "OperationDenied.DomainIsBlocked"
            case domainNoICP = "OperationDenied.DomainNoICP"
            case domainNumberIsNotZero = "OperationDenied.DomainNumberIsNotZero"
            case errZoneIsAlreadyPaused = "OperationDenied.ErrZoneIsAlreadyPaused"
            case invalidAdvancedDefenseSecurityType = "OperationDenied.InvalidAdvancedDefenseSecurityType"
            case invalidAdvancedDefenseZoneArea = "OperationDenied.InvalidAdvancedDefenseZoneArea"
            case l4ProxyInBannedStatus = "OperationDenied.L4ProxyInBannedStatus"
            case l4ProxyInProgressStatus = "OperationDenied.L4ProxyInProgressStatus"
            case l4ProxyInStoppingStatus = "OperationDenied.L4ProxyInStoppingStatus"
            case l4StatusNotInOnline = "OperationDenied.L4StatusNotInOnline"
            case l7HostInProcessStatus = "OperationDenied.L7HostInProcessStatus"
            case multipleCnameZone = "OperationDenied.MultipleCnameZone"
            case nsNotAllowTrafficStrategy = "OperationDenied.NSNotAllowTrafficStrategy"
            case planNotSupportModifyZoneArea = "OperationDenied.PlanNotSupportModifyZoneArea"
            case recordIsForbidden = "OperationDenied.RecordIsForbidden"
            case resourceLockedTemporary = "OperationDenied.ResourceLockedTemporary"
            case sharedCNAMEUnsupportedAccelerateMainland = "OperationDenied.SharedCNAMEUnsupportedAccelerateMainland"
            case sharedCNAMEUnsupportedIPv6 = "OperationDenied.SharedCNAMEUnsupportedIPv6"
            case zoneIsBindingSharedCNAME = "OperationDenied.ZoneIsBindingSharedCNAME"
            case other = "OperationDenied"
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

        /// 请联系商务开启「中国大陆网络优化(国际加速)」功能。
        public static var accelerateMainlandDisable: OperationDenied {
            OperationDenied(.accelerateMainlandDisable)
        }

        /// 中国大陆加速与IPv6冲突，不能同时配置。
        public static var accelerateMainlandIpv6Conflict: OperationDenied {
            OperationDenied(.accelerateMainlandIpv6Conflict)
        }

        public static var configLocked: OperationDenied {
            OperationDenied(.configLocked)
        }

        public static var disableZoneNotCompleted: OperationDenied {
            OperationDenied(.disableZoneNotCompleted)
        }

        /// 有域名在共享cname组内，不可切换接入类型。
        public static var domainInShareCnameGroup: OperationDenied {
            OperationDenied(.domainInShareCnameGroup)
        }

        /// 域名被封禁，暂时无法操作。
        public static var domainIsBlocked: OperationDenied {
            OperationDenied(.domainIsBlocked)
        }

        /// 域名尚未备案。
        public static var domainNoICP: OperationDenied {
            OperationDenied(.domainNoICP)
        }

        public static var domainNumberIsNotZero: OperationDenied {
            OperationDenied(.domainNumberIsNotZero)
        }

        /// 站点处于停用状态，请开启后重试。
        public static var errZoneIsAlreadyPaused: OperationDenied {
            OperationDenied(.errZoneIsAlreadyPaused)
        }

        /// 开启高防时必须保证安全是开启状态。
        public static var invalidAdvancedDefenseSecurityType: OperationDenied {
            OperationDenied(.invalidAdvancedDefenseSecurityType)
        }

        /// 开启高防必须保证站点加速区域是国内。
        public static var invalidAdvancedDefenseZoneArea: OperationDenied {
            OperationDenied(.invalidAdvancedDefenseZoneArea)
        }

        /// 4层代理资源处于封禁中，禁止操作。
        public static var l4ProxyInBannedStatus: OperationDenied {
            OperationDenied(.l4ProxyInBannedStatus)
        }

        public static var l4ProxyInProgressStatus: OperationDenied {
            OperationDenied(.l4ProxyInProgressStatus)
        }

        public static var l4ProxyInStoppingStatus: OperationDenied {
            OperationDenied(.l4ProxyInStoppingStatus)
        }

        /// 绑定4层实例有处于非运行中的状态，禁止操作。
        public static var l4StatusNotInOnline: OperationDenied {
            OperationDenied(.l4StatusNotInOnline)
        }

        public static var l7HostInProcessStatus: OperationDenied {
            OperationDenied(.l7HostInProcessStatus)
        }

        /// 已存在多个Cname接入站点，不允许切换至NS。
        public static var multipleCnameZone: OperationDenied {
            OperationDenied(.multipleCnameZone)
        }

        /// NS接入模式不支持域名流量调度功能。
        public static var nsNotAllowTrafficStrategy: OperationDenied {
            OperationDenied(.nsNotAllowTrafficStrategy)
        }

        public static var planNotSupportModifyZoneArea: OperationDenied {
            OperationDenied(.planNotSupportModifyZoneArea)
        }

        /// DNS 记录不允许添加。
        public static var recordIsForbidden: OperationDenied {
            OperationDenied(.recordIsForbidden)
        }

        /// 当前有互相排斥的请求操作并行发起，请稍后重试。
        public static var resourceLockedTemporary: OperationDenied {
            OperationDenied(.resourceLockedTemporary)
        }

        public static var sharedCNAMEUnsupportedAccelerateMainland: OperationDenied {
            OperationDenied(.sharedCNAMEUnsupportedAccelerateMainland)
        }

        public static var sharedCNAMEUnsupportedIPv6: OperationDenied {
            OperationDenied(.sharedCNAMEUnsupportedIPv6)
        }

        public static var zoneIsBindingSharedCNAME: OperationDenied {
            OperationDenied(.zoneIsBindingSharedCNAME)
        }

        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }

        public func asTeoError() -> TCTeoError {
            let code: TCTeoError.Code
            switch self.error {
            case .accelerateMainlandDisable:
                code = .operationDenied_AccelerateMainlandDisable
            case .accelerateMainlandIpv6Conflict:
                code = .operationDenied_AccelerateMainlandIpv6Conflict
            case .configLocked:
                code = .operationDenied_ConfigLocked
            case .disableZoneNotCompleted:
                code = .operationDenied_DisableZoneNotCompleted
            case .domainInShareCnameGroup:
                code = .operationDenied_DomainInShareCnameGroup
            case .domainIsBlocked:
                code = .operationDenied_DomainIsBlocked
            case .domainNoICP:
                code = .operationDenied_DomainNoICP
            case .domainNumberIsNotZero:
                code = .operationDenied_DomainNumberIsNotZero
            case .errZoneIsAlreadyPaused:
                code = .operationDenied_ErrZoneIsAlreadyPaused
            case .invalidAdvancedDefenseSecurityType:
                code = .operationDenied_InvalidAdvancedDefenseSecurityType
            case .invalidAdvancedDefenseZoneArea:
                code = .operationDenied_InvalidAdvancedDefenseZoneArea
            case .l4ProxyInBannedStatus:
                code = .operationDenied_L4ProxyInBannedStatus
            case .l4ProxyInProgressStatus:
                code = .operationDenied_L4ProxyInProgressStatus
            case .l4ProxyInStoppingStatus:
                code = .operationDenied_L4ProxyInStoppingStatus
            case .l4StatusNotInOnline:
                code = .operationDenied_L4StatusNotInOnline
            case .l7HostInProcessStatus:
                code = .operationDenied_L7HostInProcessStatus
            case .multipleCnameZone:
                code = .operationDenied_MultipleCnameZone
            case .nsNotAllowTrafficStrategy:
                code = .operationDenied_NSNotAllowTrafficStrategy
            case .planNotSupportModifyZoneArea:
                code = .operationDenied_PlanNotSupportModifyZoneArea
            case .recordIsForbidden:
                code = .operationDenied_RecordIsForbidden
            case .resourceLockedTemporary:
                code = .operationDenied_ResourceLockedTemporary
            case .sharedCNAMEUnsupportedAccelerateMainland:
                code = .operationDenied_SharedCNAMEUnsupportedAccelerateMainland
            case .sharedCNAMEUnsupportedIPv6:
                code = .operationDenied_SharedCNAMEUnsupportedIPv6
            case .zoneIsBindingSharedCNAME:
                code = .operationDenied_ZoneIsBindingSharedCNAME
            case .other:
                code = .operationDenied
            }
            return TCTeoError(code, context: self.context)
        }
    }
}
