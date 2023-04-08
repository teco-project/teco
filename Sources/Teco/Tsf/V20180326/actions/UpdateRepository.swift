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

import TecoCore

extension Tsf {
    /// UpdateRepository请求参数结构体
    public struct UpdateRepositoryRequest: TCRequestModel {
        /// 仓库ID
        public let repositoryId: String

        /// 仓库描述
        public let repositoryDesc: String?

        public init(repositoryId: String, repositoryDesc: String? = nil) {
            self.repositoryId = repositoryId
            self.repositoryDesc = repositoryDesc
        }

        enum CodingKeys: String, CodingKey {
            case repositoryId = "RepositoryId"
            case repositoryDesc = "RepositoryDesc"
        }
    }

    /// UpdateRepository返回参数结构体
    public struct UpdateRepositoryResponse: TCResponseModel {
        /// 更新仓库是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新仓库信息
    @inlinable
    public func updateRepository(_ input: UpdateRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRepositoryResponse> {
        self.client.execute(action: "UpdateRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新仓库信息
    @inlinable
    public func updateRepository(_ input: UpdateRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRepositoryResponse {
        try await self.client.execute(action: "UpdateRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新仓库信息
    @inlinable
    public func updateRepository(repositoryId: String, repositoryDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRepositoryResponse> {
        self.updateRepository(.init(repositoryId: repositoryId, repositoryDesc: repositoryDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 更新仓库信息
    @inlinable
    public func updateRepository(repositoryId: String, repositoryDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRepositoryResponse {
        try await self.updateRepository(.init(repositoryId: repositoryId, repositoryDesc: repositoryDesc), region: region, logger: logger, on: eventLoop)
    }
}
