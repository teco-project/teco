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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iotvideoindustry {
    /// DescribeDeviceGroup请求参数结构体
    public struct DescribeDeviceGroupRequest: TCRequestModel {
        /// 设备唯一标识列表
        public let deviceIds: [String]?

        public init(deviceIds: [String]? = nil) {
            self.deviceIds = deviceIds
        }

        enum CodingKeys: String, CodingKey {
            case deviceIds = "DeviceIds"
        }
    }

    /// DescribeDeviceGroup返回参数结构体
    public struct DescribeDeviceGroupResponse: TCResponseModel {
        /// 设备所在分组信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let devGroups: [DevGroupInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case devGroups = "DevGroups"
            case requestId = "RequestId"
        }
    }

    /// 查询设备分组信息
    ///
    /// 本接口(DescribeDeviceGroup)用于根据设备ID查询设备所在分组信息，可批量查询。
    @inlinable
    public func describeDeviceGroup(_ input: DescribeDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceGroupResponse> {
        self.client.execute(action: "DescribeDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备分组信息
    ///
    /// 本接口(DescribeDeviceGroup)用于根据设备ID查询设备所在分组信息，可批量查询。
    @inlinable
    public func describeDeviceGroup(_ input: DescribeDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceGroupResponse {
        try await self.client.execute(action: "DescribeDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备分组信息
    ///
    /// 本接口(DescribeDeviceGroup)用于根据设备ID查询设备所在分组信息，可批量查询。
    @inlinable
    public func describeDeviceGroup(deviceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceGroupResponse> {
        self.describeDeviceGroup(.init(deviceIds: deviceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备分组信息
    ///
    /// 本接口(DescribeDeviceGroup)用于根据设备ID查询设备所在分组信息，可批量查询。
    @inlinable
    public func describeDeviceGroup(deviceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceGroupResponse {
        try await self.describeDeviceGroup(.init(deviceIds: deviceIds), region: region, logger: logger, on: eventLoop)
    }
}
