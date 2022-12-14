//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcr {
    /// DeleteImageLifecyclePersonal请求参数结构体
    public struct DeleteImageLifecyclePersonalRequest: TCRequestModel {
        /// 仓库名称
        public let repoName: String

        public init(repoName: String) {
            self.repoName = repoName
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
        }
    }

    /// DeleteImageLifecyclePersonal返回参数结构体
    public struct DeleteImageLifecyclePersonalResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除个人版镜像仓库Tag自动清理策略
    ///
    /// 用于在个人版镜像仓库中删除仓库Tag自动清理策略
    @inlinable
    public func deleteImageLifecyclePersonal(_ input: DeleteImageLifecyclePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteImageLifecyclePersonalResponse > {
        self.client.execute(action: "DeleteImageLifecyclePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除个人版镜像仓库Tag自动清理策略
    ///
    /// 用于在个人版镜像仓库中删除仓库Tag自动清理策略
    @inlinable
    public func deleteImageLifecyclePersonal(_ input: DeleteImageLifecyclePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageLifecyclePersonalResponse {
        try await self.client.execute(action: "DeleteImageLifecyclePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除个人版镜像仓库Tag自动清理策略
    ///
    /// 用于在个人版镜像仓库中删除仓库Tag自动清理策略
    @inlinable
    public func deleteImageLifecyclePersonal(repoName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteImageLifecyclePersonalResponse > {
        self.deleteImageLifecyclePersonal(DeleteImageLifecyclePersonalRequest(repoName: repoName), logger: logger, on: eventLoop)
    }

    /// 删除个人版镜像仓库Tag自动清理策略
    ///
    /// 用于在个人版镜像仓库中删除仓库Tag自动清理策略
    @inlinable
    public func deleteImageLifecyclePersonal(repoName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageLifecyclePersonalResponse {
        try await self.deleteImageLifecyclePersonal(DeleteImageLifecyclePersonalRequest(repoName: repoName), logger: logger, on: eventLoop)
    }
}
