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
    /// CreateRepositoryPersonal请求参数结构体
    public struct CreateRepositoryPersonalRequest: TCRequest {
        /// 仓库名称
        public let repoName: String

        /// 是否公共,1:公共,0:私有
        public let `public`: UInt64?

        /// 仓库描述
        public let description: String?

        public init(repoName: String, public: UInt64? = nil, description: String? = nil) {
            self.repoName = repoName
            self.public = `public`
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case `public` = "Public"
            case description = "Description"
        }
    }

    /// CreateRepositoryPersonal返回参数结构体
    public struct CreateRepositoryPersonalResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建个人版镜像仓库
    ///
    /// 用于在个人版仓库中创建镜像仓库
    @inlinable @discardableResult
    public func createRepositoryPersonal(_ input: CreateRepositoryPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRepositoryPersonalResponse> {
        self.client.execute(action: "CreateRepositoryPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建个人版镜像仓库
    ///
    /// 用于在个人版仓库中创建镜像仓库
    @inlinable @discardableResult
    public func createRepositoryPersonal(_ input: CreateRepositoryPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRepositoryPersonalResponse {
        try await self.client.execute(action: "CreateRepositoryPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建个人版镜像仓库
    ///
    /// 用于在个人版仓库中创建镜像仓库
    @inlinable @discardableResult
    public func createRepositoryPersonal(repoName: String, public: UInt64? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRepositoryPersonalResponse> {
        self.createRepositoryPersonal(.init(repoName: repoName, public: `public`, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 创建个人版镜像仓库
    ///
    /// 用于在个人版仓库中创建镜像仓库
    @inlinable @discardableResult
    public func createRepositoryPersonal(repoName: String, public: UInt64? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRepositoryPersonalResponse {
        try await self.createRepositoryPersonal(.init(repoName: repoName, public: `public`, description: description), region: region, logger: logger, on: eventLoop)
    }
}
