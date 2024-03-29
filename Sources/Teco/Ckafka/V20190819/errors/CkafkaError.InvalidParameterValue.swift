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

extension TCCkafkaError {
    public struct InvalidParameterValue: TCCkafkaErrorType {
        enum Code: String {
            case instanceNotExist = "InvalidParameterValue.InstanceNotExist"
            case notAllowedEmpty = "InvalidParameterValue.NotAllowedEmpty"
            case repetitionValue = "InvalidParameterValue.RepetitionValue"
            case subnetIdInvalid = "InvalidParameterValue.SubnetIdInvalid"
            case subnetNotBelongToZone = "InvalidParameterValue.SubnetNotBelongToZone"
            case vpcIdInvalid = "InvalidParameterValue.VpcIdInvalid"
            case wrongAction = "InvalidParameterValue.WrongAction"
            case zoneNotSupport = "InvalidParameterValue.ZoneNotSupport"
            case other = "InvalidParameterValue"
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

        /// 实例不存在。
        public static var instanceNotExist: InvalidParameterValue {
            InvalidParameterValue(.instanceNotExist)
        }

        /// 参数不允许为空。
        public static var notAllowedEmpty: InvalidParameterValue {
            InvalidParameterValue(.notAllowedEmpty)
        }

        /// 已存在相同参数。
        public static var repetitionValue: InvalidParameterValue {
            InvalidParameterValue(.repetitionValue)
        }

        /// 无效的子网id。
        public static var subnetIdInvalid: InvalidParameterValue {
            InvalidParameterValue(.subnetIdInvalid)
        }

        /// 子网不属于zone。
        public static var subnetNotBelongToZone: InvalidParameterValue {
            InvalidParameterValue(.subnetNotBelongToZone)
        }

        /// 无效的 Vpc Id。
        public static var vpcIdInvalid: InvalidParameterValue {
            InvalidParameterValue(.vpcIdInvalid)
        }

        /// Action参数取值错误。
        public static var wrongAction: InvalidParameterValue {
            InvalidParameterValue(.wrongAction)
        }

        /// zone不支持。
        public static var zoneNotSupport: InvalidParameterValue {
            InvalidParameterValue(.zoneNotSupport)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asCkafkaError() -> TCCkafkaError {
            let code: TCCkafkaError.Code
            switch self.error {
            case .instanceNotExist:
                code = .invalidParameterValue_InstanceNotExist
            case .notAllowedEmpty:
                code = .invalidParameterValue_NotAllowedEmpty
            case .repetitionValue:
                code = .invalidParameterValue_RepetitionValue
            case .subnetIdInvalid:
                code = .invalidParameterValue_SubnetIdInvalid
            case .subnetNotBelongToZone:
                code = .invalidParameterValue_SubnetNotBelongToZone
            case .vpcIdInvalid:
                code = .invalidParameterValue_VpcIdInvalid
            case .wrongAction:
                code = .invalidParameterValue_WrongAction
            case .zoneNotSupport:
                code = .invalidParameterValue_ZoneNotSupport
            case .other:
                code = .invalidParameterValue
            }
            return TCCkafkaError(code, context: self.context)
        }
    }
}
