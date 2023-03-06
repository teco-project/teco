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

import TecoPaginationHelpers

extension Yunjing {
    /// DescribeProcesses请求参数结构体
    public struct DescribeProcessesRequest: TCPaginatedRequest {
        /// 云镜客户端唯一Uuid。Uuid和ProcessName必填其一，使用Uuid表示，查询该主机列表信息。
        public let uuid: String?

        /// 进程名。Uuid和ProcessName必填其一，使用ProcessName表示，查询该进程列表信息。
        public let processName: String?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>ProcessName - String - 是否必填：否 - 进程名</li>
        /// <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        public let filters: [Filter]?

        public init(uuid: String? = nil, processName: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.uuid = uuid
            self.processName = processName
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case processName = "ProcessName"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeProcessesResponse) -> DescribeProcessesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProcessesRequest(uuid: self.uuid, processName: self.processName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeProcesses返回参数结构体
    public struct DescribeProcessesResponse: TCPaginatedResponse {
        /// 进程列表记录总数。
        public let totalCount: UInt64

        /// 进程列表数据数组。
        public let processes: [Process]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case processes = "Processes"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Process] {
            self.processes
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcesses(_ input: DescribeProcessesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProcessesResponse> {
        self.client.execute(action: "DescribeProcesses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcesses(_ input: DescribeProcessesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessesResponse {
        try await self.client.execute(action: "DescribeProcesses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcesses(uuid: String? = nil, processName: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProcessesResponse> {
        let input = DescribeProcessesRequest(uuid: uuid, processName: processName, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeProcesses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcesses(uuid: String? = nil, processName: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessesResponse {
        let input = DescribeProcessesRequest(uuid: uuid, processName: processName, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeProcesses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcessesPaginated(_ input: DescribeProcessesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Process])> {
        self.client.paginate(input: input, region: region, command: self.describeProcesses, logger: logger, on: eventLoop)
    }

    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcessesPaginated(_ input: DescribeProcessesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProcessesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProcesses, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcessesPaginator(_ input: DescribeProcessesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeProcessesRequest, DescribeProcessesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeProcessesRequest, DescribeProcessesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeProcessesRequest, DescribeProcessesResponse>.ResultSequence(input: input, region: region, command: self.describeProcesses, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeProcessesRequest, DescribeProcessesResponse>.ResponseSequence(input: input, region: region, command: self.describeProcesses, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
