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

extension TCIotexplorerError {
    public struct UnsupportedOperation: TCIotexplorerErrorType {
        enum Code: String {
            case bindsExistUnderFence = "UnsupportedOperation.BindsExistUnderFence"
            case deviceDupKeyExist = "UnsupportedOperation.DeviceDupKeyExist"
            case deviceExceedLimit = "UnsupportedOperation.DeviceExceedLimit"
            case deviceOtaTaskInProgress = "UnsupportedOperation.DeviceOtaTaskInProgress"
            case deviceType = "UnsupportedOperation.DeviceType"
            case devicesExistUnderProduct = "UnsupportedOperation.DevicesExistUnderProduct"
            case enableSaasServiceExistUnderProject = "UnsupportedOperation.EnableSaasServiceExistUnderProject"
            case existBindedDevicesUnderGatewayProduct = "UnsupportedOperation.ExistBindedDevicesUnderGatewayProduct"
            case fenceDupKeyExist = "UnsupportedOperation.FenceDupKeyExist"
            case fenceExistUnderSpace = "UnsupportedOperation.FenceExistUnderSpace"
            case gatewayProductHasBindedProduct = "UnsupportedOperation.GatewayProductHasBindedProduct"
            case instanceIsolated = "UnsupportedOperation.InstanceIsolated"
            case loRaFreqDupKeyExist = "UnsupportedOperation.LoRaFreqDupKeyExist"
            case loRaNoUpLink = "UnsupportedOperation.LoRaNoUpLink"
            case loRaNotActivate = "UnsupportedOperation.LoRaNotActivate"
            case nodesExistUnderVPN = "UnsupportedOperation.NodesExistUnderVPN"
            case poolExistUnderProject = "UnsupportedOperation.PoolExistUnderProject"
            case productDupKeyExist = "UnsupportedOperation.ProductDupKeyExist"
            case productExistUnderProject = "UnsupportedOperation.ProductExistUnderProject"
            case productHasBindedGateWayProduct = "UnsupportedOperation.ProductHasBindedGateWayProduct"
            case projectDupKeyExist = "UnsupportedOperation.ProjectDupKeyExist"
            case spaceDupKeyExist = "UnsupportedOperation.SpaceDupKeyExist"
            case staffPoolDupNameExist = "UnsupportedOperation.StaffPoolDupNameExist"
            case studioLoRaFreqInUsed = "UnsupportedOperation.StudioLoRaFreqInUsed"
            case unpaidOrder = "UnsupportedOperation.UnpaidOrder"
            case videoAccountNotExist = "UnsupportedOperation.VideoAccountNotExist"
            case videoInsufficientLicenses = "UnsupportedOperation.VideoInsufficientLicenses"
            case vpnDupKeyExist = "UnsupportedOperation.VPNDupKeyExist"
            case other = "UnsupportedOperation"
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

        /// 围栏下还存在绑定的设备。
        public static var bindsExistUnderFence: UnsupportedOperation {
            UnsupportedOperation(.bindsExistUnderFence)
        }

        /// 创建的设备已经存在。
        public static var deviceDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.deviceDupKeyExist)
        }

        /// 设备数量超出实例限制。
        public static var deviceExceedLimit: UnsupportedOperation {
            UnsupportedOperation(.deviceExceedLimit)
        }

        /// 设备ota升级中。
        public static var deviceOtaTaskInProgress: UnsupportedOperation {
            UnsupportedOperation(.deviceOtaTaskInProgress)
        }

        /// 设备类型错误。
        public static var deviceType: UnsupportedOperation {
            UnsupportedOperation(.deviceType)
        }

        /// 产品下还存在未删除的设备。
        public static var devicesExistUnderProduct: UnsupportedOperation {
            UnsupportedOperation(.devicesExistUnderProduct)
        }

        /// 该项目下存在物联使能SaaS服务。
        public static var enableSaasServiceExistUnderProject: UnsupportedOperation {
            UnsupportedOperation(.enableSaasServiceExistUnderProject)
        }

        /// 网关产品下存在设备绑定了子设备。
        public static var existBindedDevicesUnderGatewayProduct: UnsupportedOperation {
            UnsupportedOperation(.existBindedDevicesUnderGatewayProduct)
        }

        /// 存在重复围栏。
        public static var fenceDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.fenceDupKeyExist)
        }

        /// 位置空间下还存在未删除的围栏。
        public static var fenceExistUnderSpace: UnsupportedOperation {
            UnsupportedOperation(.fenceExistUnderSpace)
        }

        /// 网关产品还绑定子产品，无法删除。
        public static var gatewayProductHasBindedProduct: UnsupportedOperation {
            UnsupportedOperation(.gatewayProductHasBindedProduct)
        }

        /// 由于实例到期已被禁用，请续费后使用。
        public static var instanceIsolated: UnsupportedOperation {
            UnsupportedOperation(.instanceIsolated)
        }

        /// 存在重复LoRa频点。
        public static var loRaFreqDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.loRaFreqDupKeyExist)
        }

        /// LoRa设备未上报数据。
        public static var loRaNoUpLink: UnsupportedOperation {
            UnsupportedOperation(.loRaNoUpLink)
        }

        /// Lora设备没有激活。
        public static var loRaNotActivate: UnsupportedOperation {
            UnsupportedOperation(.loRaNotActivate)
        }

        /// VPN下还存在未删除的设备。
        public static var nodesExistUnderVPN: UnsupportedOperation {
            UnsupportedOperation(.nodesExistUnderVPN)
        }

        /// 该项目下还存在人员库，需删除人员库后才允许删除项目。
        public static var poolExistUnderProject: UnsupportedOperation {
            UnsupportedOperation(.poolExistUnderProject)
        }

        /// 存在重复产品。
        public static var productDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.productDupKeyExist)
        }

        /// 项目下有产品。
        public static var productExistUnderProject: UnsupportedOperation {
            UnsupportedOperation(.productExistUnderProject)
        }

        /// 产品被绑定到网关产品。
        public static var productHasBindedGateWayProduct: UnsupportedOperation {
            UnsupportedOperation(.productHasBindedGateWayProduct)
        }

        /// 存在重复项目。
        public static var projectDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.projectDupKeyExist)
        }

        /// 存在重复位置空间。
        public static var spaceDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.spaceDupKeyExist)
        }

        /// 人员库名称已存在。
        public static var staffPoolDupNameExist: UnsupportedOperation {
            UnsupportedOperation(.staffPoolDupNameExist)
        }

        /// LoRa频点还被节点或网关使用。
        public static var studioLoRaFreqInUsed: UnsupportedOperation {
            UnsupportedOperation(.studioLoRaFreqInUsed)
        }

        /// 账户有未支付订单。
        public static var unpaidOrder: UnsupportedOperation {
            UnsupportedOperation(.unpaidOrder)
        }

        /// Video账户未创建，请检查后重新操作。
        public static var videoAccountNotExist: UnsupportedOperation {
            UnsupportedOperation(.videoAccountNotExist)
        }

        /// Video平台license数量不足。
        public static var videoInsufficientLicenses: UnsupportedOperation {
            UnsupportedOperation(.videoInsufficientLicenses)
        }

        /// 存在重复VPN。
        public static var vpnDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.vpnDupKeyExist)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asIotexplorerError() -> TCIotexplorerError {
            let code: TCIotexplorerError.Code
            switch self.error {
            case .bindsExistUnderFence:
                code = .unsupportedOperation_BindsExistUnderFence
            case .deviceDupKeyExist:
                code = .unsupportedOperation_DeviceDupKeyExist
            case .deviceExceedLimit:
                code = .unsupportedOperation_DeviceExceedLimit
            case .deviceOtaTaskInProgress:
                code = .unsupportedOperation_DeviceOtaTaskInProgress
            case .deviceType:
                code = .unsupportedOperation_DeviceType
            case .devicesExistUnderProduct:
                code = .unsupportedOperation_DevicesExistUnderProduct
            case .enableSaasServiceExistUnderProject:
                code = .unsupportedOperation_EnableSaasServiceExistUnderProject
            case .existBindedDevicesUnderGatewayProduct:
                code = .unsupportedOperation_ExistBindedDevicesUnderGatewayProduct
            case .fenceDupKeyExist:
                code = .unsupportedOperation_FenceDupKeyExist
            case .fenceExistUnderSpace:
                code = .unsupportedOperation_FenceExistUnderSpace
            case .gatewayProductHasBindedProduct:
                code = .unsupportedOperation_GatewayProductHasBindedProduct
            case .instanceIsolated:
                code = .unsupportedOperation_InstanceIsolated
            case .loRaFreqDupKeyExist:
                code = .unsupportedOperation_LoRaFreqDupKeyExist
            case .loRaNoUpLink:
                code = .unsupportedOperation_LoRaNoUpLink
            case .loRaNotActivate:
                code = .unsupportedOperation_LoRaNotActivate
            case .nodesExistUnderVPN:
                code = .unsupportedOperation_NodesExistUnderVPN
            case .poolExistUnderProject:
                code = .unsupportedOperation_PoolExistUnderProject
            case .productDupKeyExist:
                code = .unsupportedOperation_ProductDupKeyExist
            case .productExistUnderProject:
                code = .unsupportedOperation_ProductExistUnderProject
            case .productHasBindedGateWayProduct:
                code = .unsupportedOperation_ProductHasBindedGateWayProduct
            case .projectDupKeyExist:
                code = .unsupportedOperation_ProjectDupKeyExist
            case .spaceDupKeyExist:
                code = .unsupportedOperation_SpaceDupKeyExist
            case .staffPoolDupNameExist:
                code = .unsupportedOperation_StaffPoolDupNameExist
            case .studioLoRaFreqInUsed:
                code = .unsupportedOperation_StudioLoRaFreqInUsed
            case .unpaidOrder:
                code = .unsupportedOperation_UnpaidOrder
            case .videoAccountNotExist:
                code = .unsupportedOperation_VideoAccountNotExist
            case .videoInsufficientLicenses:
                code = .unsupportedOperation_VideoInsufficientLicenses
            case .vpnDupKeyExist:
                code = .unsupportedOperation_VPNDupKeyExist
            case .other:
                code = .unsupportedOperation
            }
            return TCIotexplorerError(code, context: self.context)
        }
    }
}
