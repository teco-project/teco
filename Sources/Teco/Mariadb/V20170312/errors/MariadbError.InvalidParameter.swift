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

extension TCMariadbError {
    public struct InvalidParameter: TCMariadbErrorType {
        enum Code: String {
            case actionNotFound = "InvalidParameter.ActionNotFound"
            case characterError = "InvalidParameter.CharacterError"
            case checkParamNotPass = "InvalidParameter.CheckParamNotPass"
            case dealNameNotGiven = "InvalidParameter.DealNameNotGiven"
            case flowNotFound = "InvalidParameter.FlowNotFound"
            case genericParameterError = "InvalidParameter.GenericParameterError"
            case illegalParameterError = "InvalidParameter.IllegalParameterError"
            case illegalTime = "InvalidParameter.IllegalTime"
            case instanceNotFound = "InvalidParameter.InstanceNotFound"
            case notSupportedPayMode = "InvalidParameter.NotSupportedPayMode"
            case permissionDenied = "InvalidParameter.PermissionDenied"
            case sgCheckFail = "InvalidParameter.SGCheckFail"
            case shardResourceIdNotFound = "InvalidParameter.ShardResourceIdNotFound"
            case specNotFound = "InvalidParameter.SpecNotFound"
            case subnetNotFound = "InvalidParameter.SubnetNotFound"
            case subnetUnavailable = "InvalidParameter.SubnetUnavailable"
            case vipNotInSubnet = "InvalidParameter.VipNotInSubnet"
            case vipUsed = "InvalidParameter.VipUsed"
            case vpcNotFound = "InvalidParameter.VpcNotFound"
            case vportUsed = "InvalidParameter.VportUsed"
            case zoneIdIllegal = "InvalidParameter.ZoneIdIllegal"
            case other = "InvalidParameter"
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
        public static var actionNotFound: InvalidParameter {
            InvalidParameter(.actionNotFound)
        }

        /// ??????????????????????????????
        public static var characterError: InvalidParameter {
            InvalidParameter(.characterError)
        }

        /// ?????????????????????
        public static var checkParamNotPass: InvalidParameter {
            InvalidParameter(.checkParamNotPass)
        }

        /// ??????????????????????????????ID???
        public static var dealNameNotGiven: InvalidParameter {
            InvalidParameter(.dealNameNotGiven)
        }

        /// ?????????????????????????????????
        public static var flowNotFound: InvalidParameter {
            InvalidParameter(.flowNotFound)
        }

        /// ??????????????????????????????
        public static var genericParameterError: InvalidParameter {
            InvalidParameter(.genericParameterError)
        }

        /// ???????????????
        public static var illegalParameterError: InvalidParameter {
            InvalidParameter(.illegalParameterError)
        }

        /// ????????????????????????
        public static var illegalTime: InvalidParameter {
            InvalidParameter(.illegalTime)
        }

        /// ???????????????????????????
        public static var instanceNotFound: InvalidParameter {
            InvalidParameter(.instanceNotFound)
        }

        /// ?????????????????????????????????????????????
        public static var notSupportedPayMode: InvalidParameter {
            InvalidParameter(.notSupportedPayMode)
        }

        /// ???????????????????????????????????????
        public static var permissionDenied: InvalidParameter {
            InvalidParameter(.permissionDenied)
        }

        /// ????????????????????????????????????
        public static var sgCheckFail: InvalidParameter {
            InvalidParameter(.sgCheckFail)
        }

        /// ????????????????????????
        public static var shardResourceIdNotFound: InvalidParameter {
            InvalidParameter(.shardResourceIdNotFound)
        }

        /// ?????????????????????????????????
        public static var specNotFound: InvalidParameter {
            InvalidParameter(.specNotFound)
        }

        /// ?????????????????????????????????????????????
        public static var subnetNotFound: InvalidParameter {
            InvalidParameter(.subnetNotFound)
        }

        /// snat?????????????????????IP???
        public static var subnetUnavailable: InvalidParameter {
            InvalidParameter(.subnetUnavailable)
        }

        /// Vip??????????????????
        public static var vipNotInSubnet: InvalidParameter {
            InvalidParameter(.vipNotInSubnet)
        }

        /// Vip????????????
        public static var vipUsed: InvalidParameter {
            InvalidParameter(.vipUsed)
        }

        /// ???????????????????????????????????????
        public static var vpcNotFound: InvalidParameter {
            InvalidParameter(.vpcNotFound)
        }

        /// Vport????????????
        public static var vportUsed: InvalidParameter {
            InvalidParameter(.vportUsed)
        }

        /// ????????????????????????
        public static var zoneIdIllegal: InvalidParameter {
            InvalidParameter(.zoneIdIllegal)
        }

        /// ???????????????
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asMariadbError() -> TCMariadbError {
            let code: TCMariadbError.Code
            switch self.error {
            case .actionNotFound: 
                code = .invalidParameter_ActionNotFound
            case .characterError: 
                code = .invalidParameter_CharacterError
            case .checkParamNotPass: 
                code = .invalidParameter_CheckParamNotPass
            case .dealNameNotGiven: 
                code = .invalidParameter_DealNameNotGiven
            case .flowNotFound: 
                code = .invalidParameter_FlowNotFound
            case .genericParameterError: 
                code = .invalidParameter_GenericParameterError
            case .illegalParameterError: 
                code = .invalidParameter_IllegalParameterError
            case .illegalTime: 
                code = .invalidParameter_IllegalTime
            case .instanceNotFound: 
                code = .invalidParameter_InstanceNotFound
            case .notSupportedPayMode: 
                code = .invalidParameter_NotSupportedPayMode
            case .permissionDenied: 
                code = .invalidParameter_PermissionDenied
            case .sgCheckFail: 
                code = .invalidParameter_SGCheckFail
            case .shardResourceIdNotFound: 
                code = .invalidParameter_ShardResourceIdNotFound
            case .specNotFound: 
                code = .invalidParameter_SpecNotFound
            case .subnetNotFound: 
                code = .invalidParameter_SubnetNotFound
            case .subnetUnavailable: 
                code = .invalidParameter_SubnetUnavailable
            case .vipNotInSubnet: 
                code = .invalidParameter_VipNotInSubnet
            case .vipUsed: 
                code = .invalidParameter_VipUsed
            case .vpcNotFound: 
                code = .invalidParameter_VpcNotFound
            case .vportUsed: 
                code = .invalidParameter_VportUsed
            case .zoneIdIllegal: 
                code = .invalidParameter_ZoneIdIllegal
            case .other: 
                code = .invalidParameter
            }
            return TCMariadbError(code, context: self.context)
        }
    }
}
