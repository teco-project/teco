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

extension Ckafka {
    /// DescribeACL请求参数结构体
    public struct DescribeACLRequest: TCPaginatedRequest {
        /// 实例Id
        public let instanceId: String

        /// Acl资源类型，(2:TOPIC，3:GROUP，4:CLUSTER)
        public let resourceType: Int64

        /// 资源名称，和resourceType相关，如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称，当resourceType为CLUSTER时，该字段可为空。
        public let resourceName: String

        /// 偏移位置
        public let offset: Int64?

        /// 个数限制
        public let limit: Int64?

        /// 关键字匹配
        public let searchWord: String?

        public init(instanceId: String, resourceType: Int64, resourceName: String, offset: Int64? = nil, limit: Int64? = nil, searchWord: String? = nil) {
            self.instanceId = instanceId
            self.resourceType = resourceType
            self.resourceName = resourceName
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case resourceType = "ResourceType"
            case resourceName = "ResourceName"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeACLResponse) -> DescribeACLRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeACLRequest(instanceId: self.instanceId, resourceType: self.resourceType, resourceName: self.resourceName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchWord: self.searchWord)
        }
    }

    /// DescribeACL返回参数结构体
    public struct DescribeACLResponse: TCPaginatedResponse {
        /// 返回的ACL结果集对象
        public let result: AclResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Acl] {
            self.result.aclList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 枚举ACL
    @inlinable
    public func describeACL(_ input: DescribeACLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeACLResponse> {
        self.client.execute(action: "DescribeACL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举ACL
    @inlinable
    public func describeACL(_ input: DescribeACLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeACLResponse {
        try await self.client.execute(action: "DescribeACL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举ACL
    @inlinable
    public func describeACL(instanceId: String, resourceType: Int64, resourceName: String, offset: Int64? = nil, limit: Int64? = nil, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeACLResponse> {
        let input = DescribeACLRequest(instanceId: instanceId, resourceType: resourceType, resourceName: resourceName, offset: offset, limit: limit, searchWord: searchWord)
        return self.client.execute(action: "DescribeACL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举ACL
    @inlinable
    public func describeACL(instanceId: String, resourceType: Int64, resourceName: String, offset: Int64? = nil, limit: Int64? = nil, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeACLResponse {
        let input = DescribeACLRequest(instanceId: instanceId, resourceType: resourceType, resourceName: resourceName, offset: offset, limit: limit, searchWord: searchWord)
        return try await self.client.execute(action: "DescribeACL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举ACL
    @inlinable
    public func describeACLPaginated(_ input: DescribeACLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Acl])> {
        self.client.paginate(input: input, region: region, command: self.describeACL, logger: logger, on: eventLoop)
    }

    /// 枚举ACL
    @inlinable @discardableResult
    public func describeACLPaginated(_ input: DescribeACLRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeACLResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeACL, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 枚举ACL
    ///
    /// - Returns: `AsyncSequence`s of `Acl` and `DescribeACLResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeACLPaginator(_ input: DescribeACLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeACLRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeACL, logger: logger, on: eventLoop)
    }
}
