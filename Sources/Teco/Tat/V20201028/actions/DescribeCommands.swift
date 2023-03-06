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

extension Tat {
    /// DescribeCommands请求参数结构体
    public struct DescribeCommandsRequest: TCPaginatedRequest {
        /// 命令ID列表，每次请求的上限为100。参数不支持同时指定 `CommandIds` 和 `Filters` 。
        public let commandIds: [String]?

        /// 过滤条件。
        /// <li> command-id - String - 是否必填：否 -（过滤条件）按照命令ID过滤。
        /// <li> command-name - String - 是否必填：否 -（过滤条件）按照命令名称过滤。
        /// <li> command-type - String - 是否必填：否 -（过滤条件）按照命令类型过滤，取值为 SHELL 或 POWERSHELL。
        /// <li> created-by - String - 是否必填：否 -（过滤条件）按照命令创建者过滤，取值为 TAT 或 USER，TAT 代表公共命令，USER 代表由用户创建的命令。
        /// <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        /// <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        /// <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例4</li>
        ///
        /// 每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `CommandIds` 和 `Filters` 。
        public let filters: [Filter]?

        /// 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        public init(commandIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.commandIds = commandIds
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case commandIds = "CommandIds"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCommandsResponse) -> DescribeCommandsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCommandsRequest(commandIds: self.commandIds, filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeCommands返回参数结构体
    public struct DescribeCommandsResponse: TCPaginatedResponse {
        /// 符合条件的命令总数。
        public let totalCount: UInt64

        /// 命令详情列表。
        public let commandSet: [Command]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case commandSet = "CommandSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Command] {
            self.commandSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询命令详情
    ///
    /// 此接口用于查询命令详情。
    @inlinable
    public func describeCommands(_ input: DescribeCommandsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCommandsResponse> {
        self.client.execute(action: "DescribeCommands", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询命令详情
    ///
    /// 此接口用于查询命令详情。
    @inlinable
    public func describeCommands(_ input: DescribeCommandsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCommandsResponse {
        try await self.client.execute(action: "DescribeCommands", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询命令详情
    ///
    /// 此接口用于查询命令详情。
    @inlinable
    public func describeCommands(commandIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCommandsResponse> {
        let input = DescribeCommandsRequest(commandIds: commandIds, filters: filters, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeCommands", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询命令详情
    ///
    /// 此接口用于查询命令详情。
    @inlinable
    public func describeCommands(commandIds: [String]? = nil, filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCommandsResponse {
        let input = DescribeCommandsRequest(commandIds: commandIds, filters: filters, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeCommands", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询命令详情
    ///
    /// 此接口用于查询命令详情。
    @inlinable
    public func describeCommandsPaginated(_ input: DescribeCommandsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Command])> {
        self.client.paginate(input: input, region: region, command: self.describeCommands, logger: logger, on: eventLoop)
    }

    /// 查询命令详情
    ///
    /// 此接口用于查询命令详情。
    @inlinable
    public func describeCommandsPaginated(_ input: DescribeCommandsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCommandsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCommands, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询命令详情
    ///
    /// 此接口用于查询命令详情。
    @inlinable
    public func describeCommandsPaginator(_ input: DescribeCommandsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeCommandsRequest, DescribeCommandsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeCommandsRequest, DescribeCommandsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeCommandsRequest, DescribeCommandsResponse>.ResultSequence(input: input, region: region, command: self.describeCommands, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeCommandsRequest, DescribeCommandsResponse>.ResponseSequence(input: input, region: region, command: self.describeCommands, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
