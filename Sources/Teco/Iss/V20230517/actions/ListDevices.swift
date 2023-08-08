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
    /// ListDevices请求参数结构体
    public struct ListDevicesRequest: TCPaginatedRequest {
        /// 组织ID
        public let organizationId: String

        /// 是否获取当前层级及子层级的设备列表，默认false
        public let isContainSubLevel: Bool?

        /// 设备接入协议。1:RTMP，2:GB，3:GW
        public let accessProtocol: UInt64?

        /// 设备类型。1:IPC，2:NVR
        public let type: UInt64?

        /// 设备状态。0:未注册，1:在线，2:离线，3:禁用
        public let status: UInt64?

        /// 服务节点ID
        public let clusterId: String?

        /// 模糊搜索设备关键字
        public let keyword: String?

        /// 当前用户Uin
        public let currentUin: UInt64?

        /// 页码，默认为1。
        public let pageNumber: UInt64?

        /// 每页数量，默认为20。
        public let pageSize: UInt64?

        public init(organizationId: String, isContainSubLevel: Bool? = nil, accessProtocol: UInt64? = nil, type: UInt64? = nil, status: UInt64? = nil, clusterId: String? = nil, keyword: String? = nil, currentUin: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil) {
            self.organizationId = organizationId
            self.isContainSubLevel = isContainSubLevel
            self.accessProtocol = accessProtocol
            self.type = type
            self.status = status
            self.clusterId = clusterId
            self.keyword = keyword
            self.currentUin = currentUin
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case organizationId = "OrganizationId"
            case isContainSubLevel = "IsContainSubLevel"
            case accessProtocol = "AccessProtocol"
            case type = "Type"
            case status = "Status"
            case clusterId = "ClusterId"
            case keyword = "Keyword"
            case currentUin = "CurrentUin"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListDevicesResponse) -> ListDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListDevicesRequest(organizationId: self.organizationId, isContainSubLevel: self.isContainSubLevel, accessProtocol: self.accessProtocol, type: self.type, status: self.status, clusterId: self.clusterId, keyword: self.keyword, currentUin: self.currentUin, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// ListDevices返回参数结构体
    public struct ListDevicesResponse: TCPaginatedResponse {
        /// 设备列表详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [ListDeviceInfo]?

        /// 设备总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ListDeviceInfo] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取设备列表
    ///
    /// 用于获取对应组织下的设备列表。
    @inlinable
    public func listDevices(_ input: ListDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevicesResponse> {
        self.client.execute(action: "ListDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取对应组织下的设备列表。
    @inlinable
    public func listDevices(_ input: ListDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicesResponse {
        try await self.client.execute(action: "ListDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    ///
    /// 用于获取对应组织下的设备列表。
    @inlinable
    public func listDevices(organizationId: String, isContainSubLevel: Bool? = nil, accessProtocol: UInt64? = nil, type: UInt64? = nil, status: UInt64? = nil, clusterId: String? = nil, keyword: String? = nil, currentUin: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevicesResponse> {
        self.listDevices(.init(organizationId: organizationId, isContainSubLevel: isContainSubLevel, accessProtocol: accessProtocol, type: type, status: status, clusterId: clusterId, keyword: keyword, currentUin: currentUin, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取对应组织下的设备列表。
    @inlinable
    public func listDevices(organizationId: String, isContainSubLevel: Bool? = nil, accessProtocol: UInt64? = nil, type: UInt64? = nil, status: UInt64? = nil, clusterId: String? = nil, keyword: String? = nil, currentUin: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicesResponse {
        try await self.listDevices(.init(organizationId: organizationId, isContainSubLevel: isContainSubLevel, accessProtocol: accessProtocol, type: type, status: status, clusterId: clusterId, keyword: keyword, currentUin: currentUin, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取对应组织下的设备列表。
    @inlinable
    public func listDevicesPaginated(_ input: ListDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ListDeviceInfo])> {
        self.client.paginate(input: input, region: region, command: self.listDevices, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取对应组织下的设备列表。
    @inlinable @discardableResult
    public func listDevicesPaginated(_ input: ListDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (ListDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 用于获取对应组织下的设备列表。
    ///
    /// - Returns: `AsyncSequence`s of `ListDeviceInfo` and `ListDevicesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listDevicesPaginator(_ input: ListDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listDevices, logger: logger, on: eventLoop)
    }
}
