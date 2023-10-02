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

import Logging
import NIOCore
import TecoCore

extension Gse {
    /// UpdateFleetCapacity请求参数结构体
    public struct UpdateFleetCapacityRequest: TCRequest {
        /// 服务器舰队ID
        public let fleetId: String

        /// 期望的服务器实例数
        public let desiredInstances: UInt64?

        /// 服务器实例数最小限制，最小值0，最大值不超过最高配额查看各地区最高配额减1
        public let minSize: UInt64?

        /// 服务器实例数最大限制，最小值1，最大值不超过最高配额查看各地区最高配额
        public let maxSize: UInt64?

        /// 服务器伸缩容间隔，单位分钟，最小值3，最大值30，默认值10
        public let scalingInterval: UInt64?

        public init(fleetId: String, desiredInstances: UInt64? = nil, minSize: UInt64? = nil, maxSize: UInt64? = nil, scalingInterval: UInt64? = nil) {
            self.fleetId = fleetId
            self.desiredInstances = desiredInstances
            self.minSize = minSize
            self.maxSize = maxSize
            self.scalingInterval = scalingInterval
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case desiredInstances = "DesiredInstances"
            case minSize = "MinSize"
            case maxSize = "MaxSize"
            case scalingInterval = "ScalingInterval"
        }
    }

    /// UpdateFleetCapacity返回参数结构体
    public struct UpdateFleetCapacityResponse: TCResponse {
        /// 服务器舰队ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case requestId = "RequestId"
        }
    }

    /// 更新服务器舰队容量配置
    ///
    /// 本接口（UpdateFleetCapacity）用于更新服务器舰队容量配置。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateFleetCapacity(_ input: UpdateFleetCapacityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetCapacityResponse> {
        fatalError("'UpdateFleetCapacity' is no longer available.")
    }

    /// 更新服务器舰队容量配置
    ///
    /// 本接口（UpdateFleetCapacity）用于更新服务器舰队容量配置。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateFleetCapacity(_ input: UpdateFleetCapacityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetCapacityResponse {
        fatalError("'UpdateFleetCapacity' is no longer available.")
    }

    /// 更新服务器舰队容量配置
    ///
    /// 本接口（UpdateFleetCapacity）用于更新服务器舰队容量配置。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateFleetCapacity(fleetId: String, desiredInstances: UInt64? = nil, minSize: UInt64? = nil, maxSize: UInt64? = nil, scalingInterval: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetCapacityResponse> {
        fatalError("'UpdateFleetCapacity' is no longer available.")
    }

    /// 更新服务器舰队容量配置
    ///
    /// 本接口（UpdateFleetCapacity）用于更新服务器舰队容量配置。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateFleetCapacity(fleetId: String, desiredInstances: UInt64? = nil, minSize: UInt64? = nil, maxSize: UInt64? = nil, scalingInterval: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetCapacityResponse {
        fatalError("'UpdateFleetCapacity' is no longer available.")
    }
}
