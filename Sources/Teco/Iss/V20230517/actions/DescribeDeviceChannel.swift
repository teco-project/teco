//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DescribeDeviceChannel请求参数结构体
    public struct DescribeDeviceChannelRequest: TCRequestModel {
        /// 设备ID（从获取设备列表接口ListDevices中获取）
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// 查询设备通道信息返回结果
    public struct DescribeDeviceChannelResponse: TCResponseModel {
        private let data: Wrapped

        private struct Wrapped: Codable {
            public let deviceId: String?

            public let channelId: String?

            public let channelCode: String?

            public let name: String?

            public let status: Int64?

            public let ptzType: Int64?

            public let manufacturer: String?

            public let resolution: String?

            public let state: Int64?

            public let region: String?

            enum CodingKeys: String, CodingKey {
                case deviceId = "DeviceId"
                case channelId = "ChannelId"
                case channelCode = "ChannelCode"
                case name = "Name"
                case status = "Status"
                case ptzType = "PTZType"
                case manufacturer = "Manufacturer"
                case resolution = "Resolution"
                case state = "State"
                case region = "Region"
            }
        }

        /// 设备 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var deviceId: String? {
            self.data.deviceId
        }

        /// 通道 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var channelId: String? {
            self.data.channelId
        }

        /// 通道编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var channelCode: String? {
            self.data.channelCode
        }

        /// 通道名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var name: String? {
            self.data.name
        }

        /// 流状态（0:未传输,1:传输中）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var status: Int64? {
            self.data.status
        }

        /// 是否可控 Ptz（0:不可控,1:可控）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var ptzType: Int64? {
            self.data.ptzType
        }

        /// 通道厂商
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var manufacturer: String? {
            self.data.manufacturer
        }

        /// 通道支持分辨率（分辨率列表由‘/’隔开，国标协议样例（6/3），自定义样例（12800960/640480））
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var resolution: String? {
            self.data.resolution
        }

        /// 通道在离线状态（0:离线,1:在线）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var state: Int64? {
            self.data.state
        }

        /// 所在地域
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var region: String? {
            self.data.region
        }

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 通道查询
    ///
    /// 用于查询设备的通道。
    @inlinable
    public func describeDeviceChannel(_ input: DescribeDeviceChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceChannelResponse> {
        self.client.execute(action: "DescribeDeviceChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通道查询
    ///
    /// 用于查询设备的通道。
    @inlinable
    public func describeDeviceChannel(_ input: DescribeDeviceChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceChannelResponse {
        try await self.client.execute(action: "DescribeDeviceChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通道查询
    ///
    /// 用于查询设备的通道。
    @inlinable
    public func describeDeviceChannel(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceChannelResponse> {
        self.describeDeviceChannel(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 通道查询
    ///
    /// 用于查询设备的通道。
    @inlinable
    public func describeDeviceChannel(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceChannelResponse {
        try await self.describeDeviceChannel(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
