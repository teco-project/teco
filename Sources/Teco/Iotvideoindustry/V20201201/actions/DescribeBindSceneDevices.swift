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
import TecoPaginationHelpers

extension Iotvideoindustry {
    /// DescribeBindSceneDevices请求参数结构体
    public struct DescribeBindSceneDevicesRequest: TCPaginatedRequest {
        /// 场景ID
        public let sceneId: Int64?

        /// 偏移值
        public let offset: Int64?

        /// 条数限制最大不能超过1000
        public let limit: Int64?

        public init(sceneId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.sceneId = sceneId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sceneId = "SceneId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBindSceneDevicesResponse) -> DescribeBindSceneDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBindSceneDevicesRequest(sceneId: self.sceneId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBindSceneDevices返回参数结构体
    public struct DescribeBindSceneDevicesResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 设备列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [DeviceItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DeviceItem] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    @inlinable
    public func describeBindSceneDevices(_ input: DescribeBindSceneDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindSceneDevicesResponse> {
        self.client.execute(action: "DescribeBindSceneDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    @inlinable
    public func describeBindSceneDevices(_ input: DescribeBindSceneDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindSceneDevicesResponse {
        try await self.client.execute(action: "DescribeBindSceneDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    @inlinable
    public func describeBindSceneDevices(sceneId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindSceneDevicesResponse> {
        self.describeBindSceneDevices(.init(sceneId: sceneId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    @inlinable
    public func describeBindSceneDevices(sceneId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindSceneDevicesResponse {
        try await self.describeBindSceneDevices(.init(sceneId: sceneId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    @inlinable
    public func describeBindSceneDevicesPaginated(_ input: DescribeBindSceneDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DeviceItem])> {
        self.client.paginate(input: input, region: region, command: self.describeBindSceneDevices, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    @inlinable @discardableResult
    public func describeBindSceneDevicesPaginated(_ input: DescribeBindSceneDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBindSceneDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBindSceneDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    ///
    /// - Returns: `AsyncSequence`s of `DeviceItem` and `DescribeBindSceneDevicesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBindSceneDevicesPaginator(_ input: DescribeBindSceneDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBindSceneDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBindSceneDevices, logger: logger, on: eventLoop)
    }
}
