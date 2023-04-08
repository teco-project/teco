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

extension Iecp {
    /// DescribeSecrets请求参数结构体
    public struct DescribeSecretsRequest: TCPaginatedRequest {
        /// 边缘单元ID
        public let edgeUnitID: UInt64

        /// 页号
        public let offset: UInt64

        /// 每页数目
        public let limit: UInt64

        /// 命名空间
        public let secretNamespace: String?

        /// Secret名(模糊匹配)
        public let namePattern: String?

        /// Sort.Field:CreateTime Sort.Order:ASC|DESC
        public let sort: FieldSort?

        /// Secret类型(DockerConfigJson或Opaque)
        public let secretType: String?

        public init(edgeUnitID: UInt64, offset: UInt64, limit: UInt64, secretNamespace: String? = nil, namePattern: String? = nil, sort: FieldSort? = nil, secretType: String? = nil) {
            self.edgeUnitID = edgeUnitID
            self.offset = offset
            self.limit = limit
            self.secretNamespace = secretNamespace
            self.namePattern = namePattern
            self.sort = sort
            self.secretType = secretType
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case offset = "Offset"
            case limit = "Limit"
            case secretNamespace = "SecretNamespace"
            case namePattern = "NamePattern"
            case sort = "Sort"
            case secretType = "SecretType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSecretsResponse) -> DescribeSecretsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSecretsRequest(edgeUnitID: self.edgeUnitID, offset: self.offset + .init(response.getItems().count), limit: self.limit, secretNamespace: self.secretNamespace, namePattern: self.namePattern, sort: self.sort, secretType: self.secretType)
        }
    }

    /// DescribeSecrets返回参数结构体
    public struct DescribeSecretsResponse: TCPaginatedResponse {
        /// 总数目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// Secret列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [SecretItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SecretItem] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取Secrets列表
    @inlinable
    public func describeSecrets(_ input: DescribeSecretsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecretsResponse> {
        self.client.execute(action: "DescribeSecrets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Secrets列表
    @inlinable
    public func describeSecrets(_ input: DescribeSecretsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecretsResponse {
        try await self.client.execute(action: "DescribeSecrets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Secrets列表
    @inlinable
    public func describeSecrets(edgeUnitID: UInt64, offset: UInt64, limit: UInt64, secretNamespace: String? = nil, namePattern: String? = nil, sort: FieldSort? = nil, secretType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecretsResponse> {
        self.describeSecrets(.init(edgeUnitID: edgeUnitID, offset: offset, limit: limit, secretNamespace: secretNamespace, namePattern: namePattern, sort: sort, secretType: secretType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Secrets列表
    @inlinable
    public func describeSecrets(edgeUnitID: UInt64, offset: UInt64, limit: UInt64, secretNamespace: String? = nil, namePattern: String? = nil, sort: FieldSort? = nil, secretType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecretsResponse {
        try await self.describeSecrets(.init(edgeUnitID: edgeUnitID, offset: offset, limit: limit, secretNamespace: secretNamespace, namePattern: namePattern, sort: sort, secretType: secretType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Secrets列表
    @inlinable
    public func describeSecretsPaginated(_ input: DescribeSecretsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SecretItem])> {
        self.client.paginate(input: input, region: region, command: self.describeSecrets, logger: logger, on: eventLoop)
    }

    /// 获取Secrets列表
    @inlinable @discardableResult
    public func describeSecretsPaginated(_ input: DescribeSecretsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSecretsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSecrets, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Secrets列表
    ///
    /// - Returns: `AsyncSequence`s of `SecretItem` and `DescribeSecretsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSecretsPaginator(_ input: DescribeSecretsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSecretsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSecrets, logger: logger, on: eventLoop)
    }
}
