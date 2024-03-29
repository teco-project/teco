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

extension TCCvmError {
    public struct ResourceInsufficient: TCCvmErrorType {
        enum Code: String {
            case availabilityZoneSoldOut = "ResourceInsufficient.AvailabilityZoneSoldOut"
            case cidrBlock = "ResourceInsufficient.CidrBlock"
            case cloudDiskSoldOut = "ResourceInsufficient.CloudDiskSoldOut"
            case cloudDiskUnavailable = "ResourceInsufficient.CloudDiskUnavailable"
            case disasterRecoverGroupCvmQuota = "ResourceInsufficient.DisasterRecoverGroupCvmQuota"
            case insufficientGroupQuota = "ResourceInsufficient.InsufficientGroupQuota"
            case specifiedInstanceType = "ResourceInsufficient.SpecifiedInstanceType"
            case zoneSoldOutForSpecifiedInstance = "ResourceInsufficient.ZoneSoldOutForSpecifiedInstance"
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

        /// 该可用区已售罄
        public static var availabilityZoneSoldOut: ResourceInsufficient {
            ResourceInsufficient(.availabilityZoneSoldOut)
        }

        /// 网段资源不足。
        public static var cidrBlock: ResourceInsufficient {
            ResourceInsufficient(.cidrBlock)
        }

        /// 指定的云盘规格已售罄
        public static var cloudDiskSoldOut: ResourceInsufficient {
            ResourceInsufficient(.cloudDiskSoldOut)
        }

        /// 云盘参数不符合规范
        public static var cloudDiskUnavailable: ResourceInsufficient {
            ResourceInsufficient(.cloudDiskUnavailable)
        }

        /// 实例个数超过容灾组的配额
        public static var disasterRecoverGroupCvmQuota: ResourceInsufficient {
            ResourceInsufficient(.disasterRecoverGroupCvmQuota)
        }

        /// 安全组资源配额不足。
        public static var insufficientGroupQuota: ResourceInsufficient {
            ResourceInsufficient(.insufficientGroupQuota)
        }

        /// 指定的实例类型库存不足。
        public static var specifiedInstanceType: ResourceInsufficient {
            ResourceInsufficient(.specifiedInstanceType)
        }

        /// 指定的实例类型在选择的可用区已售罄。
        public static var zoneSoldOutForSpecifiedInstance: ResourceInsufficient {
            ResourceInsufficient(.zoneSoldOutForSpecifiedInstance)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .availabilityZoneSoldOut:
                code = .resourceInsufficient_AvailabilityZoneSoldOut
            case .cidrBlock:
                code = .resourceInsufficient_CidrBlock
            case .cloudDiskSoldOut:
                code = .resourceInsufficient_CloudDiskSoldOut
            case .cloudDiskUnavailable:
                code = .resourceInsufficient_CloudDiskUnavailable
            case .disasterRecoverGroupCvmQuota:
                code = .resourceInsufficient_DisasterRecoverGroupCvmQuota
            case .insufficientGroupQuota:
                code = .resourceInsufficient_InsufficientGroupQuota
            case .specifiedInstanceType:
                code = .resourceInsufficient_SpecifiedInstanceType
            case .zoneSoldOutForSpecifiedInstance:
                code = .resourceInsufficient_ZoneSoldOutForSpecifiedInstance
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
