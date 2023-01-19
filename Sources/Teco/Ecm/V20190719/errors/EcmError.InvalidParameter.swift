//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCEcmError {
    public struct InvalidParameter: TCEcmErrorType {
        enum Code: String {
            case coexist = "InvalidParameter.Coexist"
            case diskConfigNotSupported = "InvalidParameter.DiskConfigNotSupported"
            case formatError = "InvalidParameter.FormatError"
            case invalidDataFormat = "InvalidParameter.InvalidDataFormat"
            case invalidParameterConflict = "InvalidParameter.InvalidParameterConflict"
            case lbIdNotFound = "InvalidParameter.LBIdNotFound"
            case listenerIdNotFound = "InvalidParameter.ListenerIdNotFound"
            case locationNotFound = "InvalidParameter.LocationNotFound"
            case parameterConflict = "InvalidParameter.ParameterConflict"
            case portCheckFailed = "InvalidParameter.PortCheckFailed"
            case projectIdNotExist = "InvalidParameter.ProjectIdNotExist"
            case protocolCheckFailed = "InvalidParameter.ProtocolCheckFailed"
            case regionNotFound = "InvalidParameter.RegionNotFound"
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

        /// 参数不支持同时指定。
        public static var coexist: InvalidParameter {
            InvalidParameter(.coexist)
        }

        /// InvalidParameter.DiskConfigNotSupported
        public static var diskConfigNotSupported: InvalidParameter {
            InvalidParameter(.diskConfigNotSupported)
        }

        /// 参数格式错误。
        public static var formatError: InvalidParameter {
            InvalidParameter(.formatError)
        }

        /// 数据格式不正确。
        public static var invalidDataFormat: InvalidParameter {
            InvalidParameter(.invalidDataFormat)
        }

        /// 指定的两个参数冲突，不能同时存在。 EIP只能绑定在实例上或指定网卡的指定内网 IP 上。
        public static var invalidParameterConflict: InvalidParameter {
            InvalidParameter(.invalidParameterConflict)
        }

        /// 负载均衡实例ID错误。
        public static var lbIdNotFound: InvalidParameter {
            InvalidParameter(.lbIdNotFound)
        }

        /// 监听器ID错误。
        public static var listenerIdNotFound: InvalidParameter {
            InvalidParameter(.listenerIdNotFound)
        }

        /// 查找不到符合条件的转发规则。
        public static var locationNotFound: InvalidParameter {
            InvalidParameter(.locationNotFound)
        }

        /// KeepImageLogin, Password, KeyIds 同时只能使用1个。
        public static var parameterConflict: InvalidParameter {
            InvalidParameter(.parameterConflict)
        }

        /// 监听器端口检查失败，比如端口冲突。
        public static var portCheckFailed: InvalidParameter {
            InvalidParameter(.portCheckFailed)
        }

        /// InvalidParameter.ProjectIdNotExist
        public static var projectIdNotExist: InvalidParameter {
            InvalidParameter(.projectIdNotExist)
        }

        /// 监听器协议检查失败，比如相关协议不支持对应操作。
        public static var protocolCheckFailed: InvalidParameter {
            InvalidParameter(.protocolCheckFailed)
        }

        /// 地域无效。
        public static var regionNotFound: InvalidParameter {
            InvalidParameter(.regionNotFound)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asEcmError() -> TCEcmError {
            let code: TCEcmError.Code
            switch self.error {
            case .coexist:
                code = .invalidParameter_Coexist
            case .diskConfigNotSupported:
                code = .invalidParameter_DiskConfigNotSupported
            case .formatError:
                code = .invalidParameter_FormatError
            case .invalidDataFormat:
                code = .invalidParameter_InvalidDataFormat
            case .invalidParameterConflict:
                code = .invalidParameter_InvalidParameterConflict
            case .lbIdNotFound:
                code = .invalidParameter_LBIdNotFound
            case .listenerIdNotFound:
                code = .invalidParameter_ListenerIdNotFound
            case .locationNotFound:
                code = .invalidParameter_LocationNotFound
            case .parameterConflict:
                code = .invalidParameter_ParameterConflict
            case .portCheckFailed:
                code = .invalidParameter_PortCheckFailed
            case .projectIdNotExist:
                code = .invalidParameter_ProjectIdNotExist
            case .protocolCheckFailed:
                code = .invalidParameter_ProtocolCheckFailed
            case .regionNotFound:
                code = .invalidParameter_RegionNotFound
            case .other:
                code = .invalidParameter
            }
            return TCEcmError(code, context: self.context)
        }
    }
}
