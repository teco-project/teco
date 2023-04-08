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

extension Tcr {
    /// ModifyRepositoryInfoPersonal请求参数结构体
    public struct ModifyRepositoryInfoPersonalRequest: TCRequestModel {
        /// 仓库名称
        public let repoName: String

        /// 仓库描述
        public let description: String

        public init(repoName: String, description: String) {
            self.repoName = repoName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case description = "Description"
        }
    }

    /// ModifyRepositoryInfoPersonal返回参数结构体
    public struct ModifyRepositoryInfoPersonalResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新个人版镜像仓库描述
    ///
    /// 用于在个人版镜像仓库中更新容器镜像描述
    @inlinable @discardableResult
    public func modifyRepositoryInfoPersonal(_ input: ModifyRepositoryInfoPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRepositoryInfoPersonalResponse> {
        self.client.execute(action: "ModifyRepositoryInfoPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新个人版镜像仓库描述
    ///
    /// 用于在个人版镜像仓库中更新容器镜像描述
    @inlinable @discardableResult
    public func modifyRepositoryInfoPersonal(_ input: ModifyRepositoryInfoPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRepositoryInfoPersonalResponse {
        try await self.client.execute(action: "ModifyRepositoryInfoPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新个人版镜像仓库描述
    ///
    /// 用于在个人版镜像仓库中更新容器镜像描述
    @inlinable @discardableResult
    public func modifyRepositoryInfoPersonal(repoName: String, description: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRepositoryInfoPersonalResponse> {
        self.modifyRepositoryInfoPersonal(.init(repoName: repoName, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新个人版镜像仓库描述
    ///
    /// 用于在个人版镜像仓库中更新容器镜像描述
    @inlinable @discardableResult
    public func modifyRepositoryInfoPersonal(repoName: String, description: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRepositoryInfoPersonalResponse {
        try await self.modifyRepositoryInfoPersonal(.init(repoName: repoName, description: description), region: region, logger: logger, on: eventLoop)
    }
}
