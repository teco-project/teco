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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcr {
    /// BatchDeleteRepositoryPersonal请求参数结构体
    public struct BatchDeleteRepositoryPersonalRequest: TCRequestModel {
        /// 仓库名称数组
        public let repoNames: [String]

        public init(repoNames: [String]) {
            self.repoNames = repoNames
        }

        enum CodingKeys: String, CodingKey {
            case repoNames = "RepoNames"
        }
    }

    /// BatchDeleteRepositoryPersonal返回参数结构体
    public struct BatchDeleteRepositoryPersonalResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除个人版仓库
    ///
    /// 用于个人版镜像仓库中批量删除镜像仓库
    @inlinable @discardableResult
    public func batchDeleteRepositoryPersonal(_ input: BatchDeleteRepositoryPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteRepositoryPersonalResponse> {
        self.client.execute(action: "BatchDeleteRepositoryPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除个人版仓库
    ///
    /// 用于个人版镜像仓库中批量删除镜像仓库
    @inlinable @discardableResult
    public func batchDeleteRepositoryPersonal(_ input: BatchDeleteRepositoryPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteRepositoryPersonalResponse {
        try await self.client.execute(action: "BatchDeleteRepositoryPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除个人版仓库
    ///
    /// 用于个人版镜像仓库中批量删除镜像仓库
    @inlinable @discardableResult
    public func batchDeleteRepositoryPersonal(repoNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteRepositoryPersonalResponse> {
        self.batchDeleteRepositoryPersonal(.init(repoNames: repoNames), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除个人版仓库
    ///
    /// 用于个人版镜像仓库中批量删除镜像仓库
    @inlinable @discardableResult
    public func batchDeleteRepositoryPersonal(repoNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteRepositoryPersonalResponse {
        try await self.batchDeleteRepositoryPersonal(.init(repoNames: repoNames), region: region, logger: logger, on: eventLoop)
    }
}
