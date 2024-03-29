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

extension Tcss {
    /// RemoveAssetImageRegistryRegistryDetail请求参数结构体
    public struct RemoveAssetImageRegistryRegistryDetailRequest: TCRequest {
        /// 仓库唯一id
        public let registryId: Int64

        public init(registryId: Int64) {
            self.registryId = registryId
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
        }
    }

    /// RemoveAssetImageRegistryRegistryDetail返回参数结构体
    public struct RemoveAssetImageRegistryRegistryDetailResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除单个镜像仓库详细信息
    @inlinable @discardableResult
    public func removeAssetImageRegistryRegistryDetail(_ input: RemoveAssetImageRegistryRegistryDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveAssetImageRegistryRegistryDetailResponse> {
        self.client.execute(action: "RemoveAssetImageRegistryRegistryDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除单个镜像仓库详细信息
    @inlinable @discardableResult
    public func removeAssetImageRegistryRegistryDetail(_ input: RemoveAssetImageRegistryRegistryDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveAssetImageRegistryRegistryDetailResponse {
        try await self.client.execute(action: "RemoveAssetImageRegistryRegistryDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除单个镜像仓库详细信息
    @inlinable @discardableResult
    public func removeAssetImageRegistryRegistryDetail(registryId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveAssetImageRegistryRegistryDetailResponse> {
        self.removeAssetImageRegistryRegistryDetail(.init(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除单个镜像仓库详细信息
    @inlinable @discardableResult
    public func removeAssetImageRegistryRegistryDetail(registryId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveAssetImageRegistryRegistryDetailResponse {
        try await self.removeAssetImageRegistryRegistryDetail(.init(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }
}
