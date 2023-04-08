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

extension Tsf {
    /// DescribeRepository请求参数结构体
    public struct DescribeRepositoryRequest: TCRequestModel {
        /// 仓库ID
        public let repositoryId: String

        public init(repositoryId: String) {
            self.repositoryId = repositoryId
        }

        enum CodingKeys: String, CodingKey {
            case repositoryId = "RepositoryId"
        }
    }

    /// DescribeRepository返回参数结构体
    public struct DescribeRepositoryResponse: TCResponseModel {
        /// 查询的仓库信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: RepositoryInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询仓库信息
    @inlinable
    public func describeRepository(_ input: DescribeRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoryResponse> {
        self.client.execute(action: "DescribeRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询仓库信息
    @inlinable
    public func describeRepository(_ input: DescribeRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoryResponse {
        try await self.client.execute(action: "DescribeRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询仓库信息
    @inlinable
    public func describeRepository(repositoryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoryResponse> {
        self.describeRepository(.init(repositoryId: repositoryId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询仓库信息
    @inlinable
    public func describeRepository(repositoryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoryResponse {
        try await self.describeRepository(.init(repositoryId: repositoryId), region: region, logger: logger, on: eventLoop)
    }
}
