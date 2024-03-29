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

extension TCIotexplorerError {
    public struct ResourceNotFound: TCIotexplorerErrorType {
        enum Code: String {
            case batchProductionNotExist = "ResourceNotFound.BatchProductionNotExist"
            case cannotGetFromUrl = "ResourceNotFound.CannotGetFromUrl"
            case deviceDupKeyExist = "ResourceNotFound.DeviceDupKeyExist"
            case deviceHasNoFirmware = "ResourceNotFound.DeviceHasNoFirmware"
            case deviceNotBind = "ResourceNotFound.DeviceNotBind"
            case deviceNotExist = "ResourceNotFound.DeviceNotExist"
            case deviceShadowNotExist = "ResourceNotFound.DeviceShadowNotExist"
            case fenceBindNotExist = "ResourceNotFound.FenceBindNotExist"
            case fenceNotExist = "ResourceNotFound.FenceNotExist"
            case firmwareNotExist = "ResourceNotFound.FirmwareNotExist"
            case firmwareTaskNotExist = "ResourceNotFound.FirmwareTaskNotExist"
            case gatewayDupKeyExist = "ResourceNotFound.GatewayDupKeyExist"
            case gatewayNotExist = "ResourceNotFound.GatewayNotExist"
            case instanceNotExist = "ResourceNotFound.InstanceNotExist"
            case moduleNotExist = "ResourceNotFound.ModuleNotExist"
            case productNotExist = "ResourceNotFound.ProductNotExist"
            case productOrDeviceNotExist = "ResourceNotFound.ProductOrDeviceNotExist"
            case productResourceNotExist = "ResourceNotFound.ProductResourceNotExist"
            case projectNotExist = "ResourceNotFound.ProjectNotExist"
            case spaceNotExist = "ResourceNotFound.SpaceNotExist"
            case studioLoRaFreqNotExist = "ResourceNotFound.StudioLoRaFreqNotExist"
            case studioProductNotExist = "ResourceNotFound.StudioProductNotExist"
            case topicPolicyNotExist = "ResourceNotFound.TopicPolicyNotExist"
            case topicRuleNotExist = "ResourceNotFound.TopicRuleNotExist"
            case other = "ResourceNotFound"
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

        /// 量产不存在。
        public static var batchProductionNotExist: ResourceNotFound {
            ResourceNotFound(.batchProductionNotExist)
        }

        /// 上传URL无法获取。
        public static var cannotGetFromUrl: ResourceNotFound {
            ResourceNotFound(.cannotGetFromUrl)
        }

        /// 存在重复设备。
        public static var deviceDupKeyExist: ResourceNotFound {
            ResourceNotFound(.deviceDupKeyExist)
        }

        /// 固件不存在。
        public static var deviceHasNoFirmware: ResourceNotFound {
            ResourceNotFound(.deviceHasNoFirmware)
        }

        /// 设备未绑定家庭。
        public static var deviceNotBind: ResourceNotFound {
            ResourceNotFound(.deviceNotBind)
        }

        /// 设备不存在。
        public static var deviceNotExist: ResourceNotFound {
            ResourceNotFound(.deviceNotExist)
        }

        /// 设备没有影子信息。
        ///
        /// None
        public static var deviceShadowNotExist: ResourceNotFound {
            ResourceNotFound(.deviceShadowNotExist)
        }

        /// 围栏未绑定该设备。
        public static var fenceBindNotExist: ResourceNotFound {
            ResourceNotFound(.fenceBindNotExist)
        }

        /// 围栏未创建或是已删除。
        public static var fenceNotExist: ResourceNotFound {
            ResourceNotFound(.fenceNotExist)
        }

        /// 固件不存在。
        public static var firmwareNotExist: ResourceNotFound {
            ResourceNotFound(.firmwareNotExist)
        }

        /// 固件升级任务不存在。
        public static var firmwareTaskNotExist: ResourceNotFound {
            ResourceNotFound(.firmwareTaskNotExist)
        }

        /// 存在重复网关。
        public static var gatewayDupKeyExist: ResourceNotFound {
            ResourceNotFound(.gatewayDupKeyExist)
        }

        /// 网关不存在。
        public static var gatewayNotExist: ResourceNotFound {
            ResourceNotFound(.gatewayNotExist)
        }

        /// 实例未创建或是已删除。
        public static var instanceNotExist: ResourceNotFound {
            ResourceNotFound(.instanceNotExist)
        }

        /// 模组不存在或改动未生效。
        public static var moduleNotExist: ResourceNotFound {
            ResourceNotFound(.moduleNotExist)
        }

        /// 产品不存在。
        public static var productNotExist: ResourceNotFound {
            ResourceNotFound(.productNotExist)
        }

        /// 产品或设备不存在。
        public static var productOrDeviceNotExist: ResourceNotFound {
            ResourceNotFound(.productOrDeviceNotExist)
        }

        /// 产品资源不存在。
        public static var productResourceNotExist: ResourceNotFound {
            ResourceNotFound(.productResourceNotExist)
        }

        /// 项目不存在。
        public static var projectNotExist: ResourceNotFound {
            ResourceNotFound(.projectNotExist)
        }

        /// 位置空间未创建或是已删除。
        public static var spaceNotExist: ResourceNotFound {
            ResourceNotFound(.spaceNotExist)
        }

        /// LoRa频点尚未创建或已被删除。
        public static var studioLoRaFreqNotExist: ResourceNotFound {
            ResourceNotFound(.studioLoRaFreqNotExist)
        }

        /// 产品不存在。
        public static var studioProductNotExist: ResourceNotFound {
            ResourceNotFound(.studioProductNotExist)
        }

        /// Topic不存在。
        public static var topicPolicyNotExist: ResourceNotFound {
            ResourceNotFound(.topicPolicyNotExist)
        }

        /// 规则不存在。
        public static var topicRuleNotExist: ResourceNotFound {
            ResourceNotFound(.topicRuleNotExist)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asIotexplorerError() -> TCIotexplorerError {
            let code: TCIotexplorerError.Code
            switch self.error {
            case .batchProductionNotExist:
                code = .resourceNotFound_BatchProductionNotExist
            case .cannotGetFromUrl:
                code = .resourceNotFound_CannotGetFromUrl
            case .deviceDupKeyExist:
                code = .resourceNotFound_DeviceDupKeyExist
            case .deviceHasNoFirmware:
                code = .resourceNotFound_DeviceHasNoFirmware
            case .deviceNotBind:
                code = .resourceNotFound_DeviceNotBind
            case .deviceNotExist:
                code = .resourceNotFound_DeviceNotExist
            case .deviceShadowNotExist:
                code = .resourceNotFound_DeviceShadowNotExist
            case .fenceBindNotExist:
                code = .resourceNotFound_FenceBindNotExist
            case .fenceNotExist:
                code = .resourceNotFound_FenceNotExist
            case .firmwareNotExist:
                code = .resourceNotFound_FirmwareNotExist
            case .firmwareTaskNotExist:
                code = .resourceNotFound_FirmwareTaskNotExist
            case .gatewayDupKeyExist:
                code = .resourceNotFound_GatewayDupKeyExist
            case .gatewayNotExist:
                code = .resourceNotFound_GatewayNotExist
            case .instanceNotExist:
                code = .resourceNotFound_InstanceNotExist
            case .moduleNotExist:
                code = .resourceNotFound_ModuleNotExist
            case .productNotExist:
                code = .resourceNotFound_ProductNotExist
            case .productOrDeviceNotExist:
                code = .resourceNotFound_ProductOrDeviceNotExist
            case .productResourceNotExist:
                code = .resourceNotFound_ProductResourceNotExist
            case .projectNotExist:
                code = .resourceNotFound_ProjectNotExist
            case .spaceNotExist:
                code = .resourceNotFound_SpaceNotExist
            case .studioLoRaFreqNotExist:
                code = .resourceNotFound_StudioLoRaFreqNotExist
            case .studioProductNotExist:
                code = .resourceNotFound_StudioProductNotExist
            case .topicPolicyNotExist:
                code = .resourceNotFound_TopicPolicyNotExist
            case .topicRuleNotExist:
                code = .resourceNotFound_TopicRuleNotExist
            case .other:
                code = .resourceNotFound
            }
            return TCIotexplorerError(code, context: self.context)
        }
    }
}
