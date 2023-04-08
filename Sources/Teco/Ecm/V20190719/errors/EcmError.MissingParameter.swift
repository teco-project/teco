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

extension TCEcmError {
    public struct MissingParameter: TCEcmErrorType {
        enum Code: String {
            case missingAssociateEntity = "MissingParameter.MissingAssociateEntity"
            case missingBaseConfigParameter = "MissingParameter.MissingBaseConfigParameter"
            case missingImageParameter = "MissingParameter.MissingImageParameter"
            case missingInstanceTypeConfigParameter = "MissingParameter.MissingInstanceTypeConfigParameter"
            case missingInstancesParameter = "MissingParameter.MissingInstancesParameter"
            case missingModuleParameter = "MissingParameter.MissingModuleParameter"
            case missingNetworkInterfaceParameter = "MissingParameter.MissingNetworkInterfaceParameter"
            case missingNodeParameter = "MissingParameter.MissingNodeParameter"
            case missingOverViewParameter = "MissingParameter.MissingOverViewParameter"
            case missingPrivateIpAddress = "MissingParameter.MissingPrivateIpAddress"
            case other = "MissingParameter"
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

        /// 缺少需关联的实体参数。
        public static var missingAssociateEntity: MissingParameter {
            MissingParameter(.missingAssociateEntity)
        }

        /// 获取基础配置请求参数不全。
        public static var missingBaseConfigParameter: MissingParameter {
            MissingParameter(.missingBaseConfigParameter)
        }

        /// 镜像操作参数不全。
        public static var missingImageParameter: MissingParameter {
            MissingParameter(.missingImageParameter)
        }

        /// 机型操作参数不全。
        public static var missingInstanceTypeConfigParameter: MissingParameter {
            MissingParameter(.missingInstanceTypeConfigParameter)
        }

        /// 实例操作参数不全。
        public static var missingInstancesParameter: MissingParameter {
            MissingParameter(.missingInstancesParameter)
        }

        /// 模块操作参数不全。
        public static var missingModuleParameter: MissingParameter {
            MissingParameter(.missingModuleParameter)
        }

        /// 缺少网卡操作配置的请求参数。
        public static var missingNetworkInterfaceParameter: MissingParameter {
            MissingParameter(.missingNetworkInterfaceParameter)
        }

        /// 节点操作参数不全。
        public static var missingNodeParameter: MissingParameter {
            MissingParameter(.missingNodeParameter)
        }

        /// 获取概览页配置请求参数不全。
        public static var missingOverViewParameter: MissingParameter {
            MissingParameter(.missingOverViewParameter)
        }

        /// 缺少私有IP地址。
        public static var missingPrivateIpAddress: MissingParameter {
            MissingParameter(.missingPrivateIpAddress)
        }

        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }

        public func asEcmError() -> TCEcmError {
            let code: TCEcmError.Code
            switch self.error {
            case .missingAssociateEntity:
                code = .missingParameter_MissingAssociateEntity
            case .missingBaseConfigParameter:
                code = .missingParameter_MissingBaseConfigParameter
            case .missingImageParameter:
                code = .missingParameter_MissingImageParameter
            case .missingInstanceTypeConfigParameter:
                code = .missingParameter_MissingInstanceTypeConfigParameter
            case .missingInstancesParameter:
                code = .missingParameter_MissingInstancesParameter
            case .missingModuleParameter:
                code = .missingParameter_MissingModuleParameter
            case .missingNetworkInterfaceParameter:
                code = .missingParameter_MissingNetworkInterfaceParameter
            case .missingNodeParameter:
                code = .missingParameter_MissingNodeParameter
            case .missingOverViewParameter:
                code = .missingParameter_MissingOverViewParameter
            case .missingPrivateIpAddress:
                code = .missingParameter_MissingPrivateIpAddress
            case .other:
                code = .missingParameter
            }
            return TCEcmError(code, context: self.context)
        }
    }
}
