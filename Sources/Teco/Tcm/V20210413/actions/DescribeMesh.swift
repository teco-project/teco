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

extension Tcm {
    /// DescribeMesh请求参数结构体
    public struct DescribeMeshRequest: TCRequest {
        /// 需要查询的网格 Id
        public let meshId: String

        public init(meshId: String) {
            self.meshId = meshId
        }

        enum CodingKeys: String, CodingKey {
            case meshId = "MeshId"
        }
    }

    /// DescribeMesh返回参数结构体
    public struct DescribeMeshResponse: TCResponse {
        /// Mesh详细信息
        public let mesh: Mesh

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mesh = "Mesh"
            case requestId = "RequestId"
        }
    }

    /// 查询网格详情
    @inlinable
    public func describeMesh(_ input: DescribeMeshRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMeshResponse> {
        self.client.execute(action: "DescribeMesh", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网格详情
    @inlinable
    public func describeMesh(_ input: DescribeMeshRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMeshResponse {
        try await self.client.execute(action: "DescribeMesh", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网格详情
    @inlinable
    public func describeMesh(meshId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMeshResponse> {
        self.describeMesh(.init(meshId: meshId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网格详情
    @inlinable
    public func describeMesh(meshId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMeshResponse {
        try await self.describeMesh(.init(meshId: meshId), region: region, logger: logger, on: eventLoop)
    }
}
