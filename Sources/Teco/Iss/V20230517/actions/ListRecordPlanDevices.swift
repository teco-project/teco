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
import TecoPaginationHelpers

extension Iss {
    /// ListRecordPlanDevices请求参数结构体
    public struct ListRecordPlanDevicesRequest: TCPaginatedRequest {
        /// 上云计划ID
        public let planId: String

        /// 每页最大数量
        public let pageSize: Int64

        /// 第几页
        public let pageNumber: Int64

        /// 按照设备名称查询，为空时，不参考该参数
        /// 通道名称、设备名称、组织名称同时只有一个有效，如果同时多个字段有值，按照通道名称、设备名称、组织名称的优先级顺序查询，如果都为空，则全量查询。长度不超过32字节
        public let deviceName: String?

        /// 按照通道名称查询，为空时，不参考该参数
        /// 通道名称、设备名称、组织名称同时只有一个有效，如果同时多个字段有值，按照通道名称、设备名称、组织名称的优先级顺序查询，如果都为空，则全量查询。长度不超过32字节
        public let channelName: String?

        /// 按照组织名称查询|，为空时，不参考该参数
        /// 通道名称、设备名称、组织名称同时只有一个有效，如果同时多个字段有值，按照通道名称、设备名称、组织名称的优先级顺序查询，如果都为空，则全量查询。长度不超过32字节
        public let organizationName: String?

        public init(planId: String, pageSize: Int64, pageNumber: Int64, deviceName: String? = nil, channelName: String? = nil, organizationName: String? = nil) {
            self.planId = planId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.deviceName = deviceName
            self.channelName = channelName
            self.organizationName = organizationName
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case deviceName = "DeviceName"
            case channelName = "ChannelName"
            case organizationName = "OrganizationName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListRecordPlanDevicesResponse) -> ListRecordPlanDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListRecordPlanDevicesRequest(planId: self.planId, pageSize: self.pageSize, pageNumber: self.pageNumber + 1, deviceName: self.deviceName, channelName: self.channelName, organizationName: self.organizationName)
        }
    }

    /// 云计划下的设备通道列表返回数据
    public struct ListRecordPlanDevicesResponse: TCPaginatedResponse {
        private let data: Wrapped

        private struct Wrapped: Codable {
            public let pageNumber: Int64?

            public let pageSize: Int64?

            public let totalCount: Int64?

            public let list: [RecordPlanChannelInfo]?

            enum CodingKeys: String, CodingKey {
                case pageNumber = "PageNumber"
                case pageSize = "PageSize"
                case totalCount = "TotalCount"
                case list = "List"
            }
        }

        /// 第几页
        public var pageNumber: Int64? {
            self.data.pageNumber
        }

        /// 当前页的设备数量
        public var pageSize: Int64? {
            self.data.pageSize
        }

        /// 本次查询的设备通道总数
        public var totalCount: Int64? {
            self.data.totalCount
        }

        /// 设备通道信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public var list: [RecordPlanChannelInfo]? {
            self.data.list
        }

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RecordPlanChannelInfo`` list from the paginated response.
        public func getItems() -> [RecordPlanChannelInfo] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实时上云计划下的设备通道列表
    ///
    /// 用于查询实时上云计划下的设备通道列表
    @inlinable
    public func listRecordPlanDevices(_ input: ListRecordPlanDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordPlanDevicesResponse> {
        self.client.execute(action: "ListRecordPlanDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实时上云计划下的设备通道列表
    ///
    /// 用于查询实时上云计划下的设备通道列表
    @inlinable
    public func listRecordPlanDevices(_ input: ListRecordPlanDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecordPlanDevicesResponse {
        try await self.client.execute(action: "ListRecordPlanDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实时上云计划下的设备通道列表
    ///
    /// 用于查询实时上云计划下的设备通道列表
    @inlinable
    public func listRecordPlanDevices(planId: String, pageSize: Int64, pageNumber: Int64, deviceName: String? = nil, channelName: String? = nil, organizationName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecordPlanDevicesResponse> {
        self.listRecordPlanDevices(.init(planId: planId, pageSize: pageSize, pageNumber: pageNumber, deviceName: deviceName, channelName: channelName, organizationName: organizationName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实时上云计划下的设备通道列表
    ///
    /// 用于查询实时上云计划下的设备通道列表
    @inlinable
    public func listRecordPlanDevices(planId: String, pageSize: Int64, pageNumber: Int64, deviceName: String? = nil, channelName: String? = nil, organizationName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecordPlanDevicesResponse {
        try await self.listRecordPlanDevices(.init(planId: planId, pageSize: pageSize, pageNumber: pageNumber, deviceName: deviceName, channelName: channelName, organizationName: organizationName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实时上云计划下的设备通道列表
    ///
    /// 用于查询实时上云计划下的设备通道列表
    @inlinable
    public func listRecordPlanDevicesPaginated(_ input: ListRecordPlanDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RecordPlanChannelInfo])> {
        self.client.paginate(input: input, region: region, command: self.listRecordPlanDevices, logger: logger, on: eventLoop)
    }

    /// 查询实时上云计划下的设备通道列表
    ///
    /// 用于查询实时上云计划下的设备通道列表
    @inlinable @discardableResult
    public func listRecordPlanDevicesPaginated(_ input: ListRecordPlanDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (ListRecordPlanDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listRecordPlanDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实时上云计划下的设备通道列表
    ///
    /// 用于查询实时上云计划下的设备通道列表
    ///
    /// - Returns: `AsyncSequence`s of `RecordPlanChannelInfo` and `ListRecordPlanDevicesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listRecordPlanDevicesPaginator(_ input: ListRecordPlanDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListRecordPlanDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listRecordPlanDevices, logger: logger, on: eventLoop)
    }
}
