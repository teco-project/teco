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

extension TCEsError {
    public struct ResourceInsufficient: TCEsErrorType {
        enum Code: String {
            case balance = "ResourceInsufficient.Balance"
            case cvm = "ResourceInsufficient.CVM"
            case hiddenZone = "ResourceInsufficient.HiddenZone"
            case subnet = "ResourceInsufficient.Subnet"
            case subnetIp = "ResourceInsufficient.SubnetIp"
            case zone = "ResourceInsufficient.Zone"
            case other = "ResourceInsufficient"
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

        /// 账户余额不足。
        public static var balance: ResourceInsufficient {
            ResourceInsufficient(.balance)
        }

        public static var cvm: ResourceInsufficient {
            ResourceInsufficient(.cvm)
        }

        /// 隐藏可用区专用主节点资源不足。
        public static var hiddenZone: ResourceInsufficient {
            ResourceInsufficient(.hiddenZone)
        }

        /// 子网剩余ip数量不足。
        public static var subnet: ResourceInsufficient {
            ResourceInsufficient(.subnet)
        }

        public static var subnetIp: ResourceInsufficient {
            ResourceInsufficient(.subnetIp)
        }

        public static var zone: ResourceInsufficient {
            ResourceInsufficient(.zone)
        }

        /// 资源不足。
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }

        public func asEsError() -> TCEsError {
            let code: TCEsError.Code
            switch self.error {
            case .balance:
                code = .resourceInsufficient_Balance
            case .cvm:
                code = .resourceInsufficient_CVM
            case .hiddenZone:
                code = .resourceInsufficient_HiddenZone
            case .subnet:
                code = .resourceInsufficient_Subnet
            case .subnetIp:
                code = .resourceInsufficient_SubnetIp
            case .zone:
                code = .resourceInsufficient_Zone
            case .other:
                code = .resourceInsufficient
            }
            return TCEsError(code, context: self.context)
        }
    }
}
