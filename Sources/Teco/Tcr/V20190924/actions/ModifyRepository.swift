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
    /// ModifyRepository请求参数结构体
    public struct ModifyRepositoryRequest: TCRequestModel {
        /// 实例ID
        public let registryId: String

        /// 命名空间名称
        public let namespaceName: String

        /// 镜像仓库名称
        public let repositoryName: String

        /// 仓库简短描述
        public let briefDescription: String

        /// 仓库详细描述
        public let description: String

        public init(registryId: String, namespaceName: String, repositoryName: String, briefDescription: String, description: String) {
            self.registryId = registryId
            self.namespaceName = namespaceName
            self.repositoryName = repositoryName
            self.briefDescription = briefDescription
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespaceName = "NamespaceName"
            case repositoryName = "RepositoryName"
            case briefDescription = "BriefDescription"
            case description = "Description"
        }
    }

    /// ModifyRepository返回参数结构体
    public struct ModifyRepositoryResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新镜像仓库信息
    ///
    /// 更新镜像仓库信息，可修改仓库描述信息
    @inlinable @discardableResult
    public func modifyRepository(_ input: ModifyRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRepositoryResponse> {
        self.client.execute(action: "ModifyRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新镜像仓库信息
    ///
    /// 更新镜像仓库信息，可修改仓库描述信息
    @inlinable @discardableResult
    public func modifyRepository(_ input: ModifyRepositoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRepositoryResponse {
        try await self.client.execute(action: "ModifyRepository", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新镜像仓库信息
    ///
    /// 更新镜像仓库信息，可修改仓库描述信息
    @inlinable @discardableResult
    public func modifyRepository(registryId: String, namespaceName: String, repositoryName: String, briefDescription: String, description: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRepositoryResponse> {
        self.modifyRepository(.init(registryId: registryId, namespaceName: namespaceName, repositoryName: repositoryName, briefDescription: briefDescription, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新镜像仓库信息
    ///
    /// 更新镜像仓库信息，可修改仓库描述信息
    @inlinable @discardableResult
    public func modifyRepository(registryId: String, namespaceName: String, repositoryName: String, briefDescription: String, description: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRepositoryResponse {
        try await self.modifyRepository(.init(registryId: registryId, namespaceName: namespaceName, repositoryName: repositoryName, briefDescription: briefDescription, description: description), region: region, logger: logger, on: eventLoop)
    }
}
