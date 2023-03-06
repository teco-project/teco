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

extension Iecp {
    /// DescribeConfigMaps请求参数结构体
    public struct DescribeConfigMapsRequest: TCPaginatedRequest {
        /// 单元ID
        public let edgeUnitID: UInt64

        /// 翻页偏移量
        public let offset: UInt64

        /// 每页大小(最大100)
        public let limit: UInt64

        /// 命名空间
        public let configMapNamespace: String?

        /// 模糊匹配的名称
        public let namePattern: String?

        /// Sort.Fileld填写CreateTime Sort.Order(ASC|DESC) 默认ASC
        public let sort: FieldSort?

        public init(edgeUnitID: UInt64, offset: UInt64, limit: UInt64, configMapNamespace: String? = nil, namePattern: String? = nil, sort: FieldSort? = nil) {
            self.edgeUnitID = edgeUnitID
            self.offset = offset
            self.limit = limit
            self.configMapNamespace = configMapNamespace
            self.namePattern = namePattern
            self.sort = sort
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case offset = "Offset"
            case limit = "Limit"
            case configMapNamespace = "ConfigMapNamespace"
            case namePattern = "NamePattern"
            case sort = "Sort"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeConfigMapsResponse) -> DescribeConfigMapsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeConfigMapsRequest(edgeUnitID: self.edgeUnitID, offset: self.offset + .init(response.getItems().count), limit: self.limit, configMapNamespace: self.configMapNamespace, namePattern: self.namePattern, sort: self.sort)
        }
    }

    /// DescribeConfigMaps返回参数结构体
    public struct DescribeConfigMapsResponse: TCPaginatedResponse {
        /// ConfigMap列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [ConfigMapBasicInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConfigMapBasicInfo] {
            self.items ?? []
        }
    }

    /// 获取ConfigMap列表
    @inlinable
    public func describeConfigMaps(_ input: DescribeConfigMapsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigMapsResponse> {
        self.client.execute(action: "DescribeConfigMaps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取ConfigMap列表
    @inlinable
    public func describeConfigMaps(_ input: DescribeConfigMapsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigMapsResponse {
        try await self.client.execute(action: "DescribeConfigMaps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取ConfigMap列表
    @inlinable
    public func describeConfigMaps(edgeUnitID: UInt64, offset: UInt64, limit: UInt64, configMapNamespace: String? = nil, namePattern: String? = nil, sort: FieldSort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigMapsResponse> {
        let input = DescribeConfigMapsRequest(edgeUnitID: edgeUnitID, offset: offset, limit: limit, configMapNamespace: configMapNamespace, namePattern: namePattern, sort: sort)
        return self.client.execute(action: "DescribeConfigMaps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取ConfigMap列表
    @inlinable
    public func describeConfigMaps(edgeUnitID: UInt64, offset: UInt64, limit: UInt64, configMapNamespace: String? = nil, namePattern: String? = nil, sort: FieldSort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigMapsResponse {
        let input = DescribeConfigMapsRequest(edgeUnitID: edgeUnitID, offset: offset, limit: limit, configMapNamespace: configMapNamespace, namePattern: namePattern, sort: sort)
        return try await self.client.execute(action: "DescribeConfigMaps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取ConfigMap列表
    @inlinable
    public func describeConfigMapsPaginated(_ input: DescribeConfigMapsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ConfigMapBasicInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeConfigMaps, logger: logger, on: eventLoop)
    }

    /// 获取ConfigMap列表
    @inlinable @discardableResult
    public func describeConfigMapsPaginated(_ input: DescribeConfigMapsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConfigMapsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConfigMaps, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取ConfigMap列表
    ///
    /// - Returns: `AsyncSequence`s of `ConfigMapBasicInfo` and `DescribeConfigMapsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConfigMapsPaginator(_ input: DescribeConfigMapsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConfigMapsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConfigMaps, logger: logger, on: eventLoop)
    }
}
