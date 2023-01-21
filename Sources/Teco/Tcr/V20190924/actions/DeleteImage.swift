//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcr {
    /// DeleteImage请求参数结构体
    public struct DeleteImageRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String

        /// 镜像仓库名称
        public let repositoryName: String

        /// 镜像版本
        public let imageVersion: String

        /// 命名空间名称
        public let namespaceName: String

        public init(registryId: String, repositoryName: String, imageVersion: String, namespaceName: String) {
            self.registryId = registryId
            self.repositoryName = repositoryName
            self.imageVersion = imageVersion
            self.namespaceName = namespaceName
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case repositoryName = "RepositoryName"
            case imageVersion = "ImageVersion"
            case namespaceName = "NamespaceName"
        }
    }

    /// DeleteImage返回参数结构体
    public struct DeleteImageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除指定镜像
    @inlinable @discardableResult
    public func deleteImage(_ input: DeleteImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageResponse> {
        self.client.execute(action: "DeleteImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除指定镜像
    @inlinable @discardableResult
    public func deleteImage(_ input: DeleteImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageResponse {
        try await self.client.execute(action: "DeleteImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除指定镜像
    @inlinable @discardableResult
    public func deleteImage(registryId: String, repositoryName: String, imageVersion: String, namespaceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageResponse> {
        self.deleteImage(DeleteImageRequest(registryId: registryId, repositoryName: repositoryName, imageVersion: imageVersion, namespaceName: namespaceName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除指定镜像
    @inlinable @discardableResult
    public func deleteImage(registryId: String, repositoryName: String, imageVersion: String, namespaceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageResponse {
        try await self.deleteImage(DeleteImageRequest(registryId: registryId, repositoryName: repositoryName, imageVersion: imageVersion, namespaceName: namespaceName), region: region, logger: logger, on: eventLoop)
    }
}
